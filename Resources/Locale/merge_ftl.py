#!/usr/bin/env python3

import re
import sys
import json
from pathlib import Path

from fluent.syntax import FluentParser


# ============================================================
# Fluent Entry 起始
# ============================================================

# 正常 Fluent message / term
#
# foo = ...
# -foo = ...
#
ENTRY_RE = re.compile(
    r"^(-?[A-Za-z][A-Za-z0-9_-]*)[ \t]*="
)

# SS14 某些自動產生的特殊 key
#
# ent-{'values': ['GasPressurePump', ...]} = ...
#
SPECIAL_ENTRY_RE = re.compile(
    r"^ent-\{.*\}[ \t]*="
)


# ============================================================
# 檔案 I/O
# ============================================================

def read_text(path):
    with open(path, "r", encoding="utf-8", newline="") as f:
        return f.read()


def write_text(path, text):
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(text)


# ============================================================
# 判斷 Entry 起始
# ============================================================

def is_entry_start(line):
    """
    判斷一行是不是新的 Fluent Entry。

    注意：
    - 不修改原始文字
    - 不嘗試解析 Entry
    - 只負責找 Entry 的開始位置
    """

    if ENTRY_RE.match(line):
        return True

    if SPECIAL_ENTRY_RE.match(line):
        return True

    return False


# ============================================================
# 切割 FTL
# ============================================================

def split_entries(text):
    """
    把一個 FTL 檔案切成：

        [前置 comment / 空白] + [一個 Entry]

    的單位。

    例如：

        # Foo
        foo = Hello

        # Bar
        bar = World

    會變成兩個 Entry：

        # Foo
        foo = Hello

    和：

        # Bar
        bar = World

    完全保留原始文字，不經過 serializer。
    """

    lines = text.splitlines(keepends=True)

    entries = []

    # 尚未遇到第一個 Entry 前的內容
    pending = []

    # 目前 Entry
    current = None

    for line in lines:

        if is_entry_start(line):

            # 如果已經有一個 Entry
            if current is not None:
                entries.append("".join(current))

            # pending 是這個 Entry 前面的
            # comment / 空白 / BOM 等內容
            current = pending + [line]
            pending = []

        else:

            if current is None:
                # 還沒遇到任何 Entry
                pending.append(line)
            else:
                # Entry 的後續內容
                current.append(line)

    # 最後一個 Entry
    if current is not None:
        entries.append("".join(current))

    # 如果整個檔案沒有任何 Entry
    elif pending:
        entries.append("".join(pending))

    return entries


# ============================================================
# 找 Entry Key
# ============================================================

def get_entry_key(entry_text):
    """
    從 Entry 開頭抓 Fluent key。

    正常：
        foo = ...

    term：
        -foo = ...

    特殊 SS14 key：
        ent-{'values': [...]} = ...

    特殊 key 不放入 manifest。
    """

    lines = entry_text.splitlines()

    for line in lines:

        # 跳過空白
        if not line.strip():
            continue

        # 跳過 comment
        if line.lstrip().startswith("#"):
            continue

        match = ENTRY_RE.match(line)

        if match:
            return match.group(1)

        # 特殊 key
        if SPECIAL_ENTRY_RE.match(line):
            return None

        # 第一個真正內容不是 Entry
        return None

    return None


# ============================================================
# Fluent Parser
# ============================================================

def parse_ok(parser, text):
    """
    使用 fluent.syntax 解析 Entry。

    fluent.syntax 的 parser 不一定丟 exception。
    語法錯誤會變成：

        Resource.body -> Junk -> annotations

    所以必須檢查 AST。
    """

    try:
        resource = parser.parse(text)

        for node in resource.body:
            annotations = getattr(node, "annotations", None)

            if annotations:
                return False

        return True

    except Exception:
        return False


# ============================================================
# 找所有正常 Key
# ============================================================

def get_keys(entries):
    """
    從 Entry 清單取得正常 Fluent key。

    特殊 ent-{...} key 不加入 manifest。
    """

    keys = []

    for entry in entries:
        key = get_entry_key(entry)

        if key is not None:
            keys.append(key)

    return keys


def append_file_parts(target, parts):
    """
    將一個檔案的內容加入合併結果。

    保留原始內容，只在檔案之間缺少換行時補上換行。
    """

    if not parts:
        return

    content = "".join(parts)

    if not content:
        return

    # 如果前一個檔案的結尾沒有換行，補上換行
    if target and not target[-1].endswith("\n"):
        target.append("\n")

    target.append(content)

    # 如果目前檔案結尾沒有換行，補上換行
    if not content.endswith("\n"):
        target.append("\n")

# ============================================================
# Merge
# ============================================================

def merge_ftl(
    input_dir,
    output_file,
    manifest_file,
    excluded_file,
):

    input_dir = Path(input_dir)

    files = sorted(input_dir.rglob("*.ftl"))

    print(f"找到 {len(files)} 個 FTL 檔案")
    print()

    parser = FluentParser()

    normal_parts = []
    excluded_parts = []

    manifest = {}

    total_entries = 0
    excluded_entries = 0
    normal_entries = 0

    seen_keys = set()

    # ========================================================
    # 處理每個 FTL
    # ========================================================

    for index, path in enumerate(files, 1):

        relative = path.relative_to(input_dir)

        print(
            f"[{index}/{len(files)}] 處理：{relative}"
        )

        text = read_text(path)

        entries = split_entries(text)

        total_entries += len(entries)

        file_normal = []
        file_excluded = []

        for entry in entries:

            # 空內容 / 純空白
            if not entry.strip():
                continue

            if parse_ok(parser, entry):

                file_normal.append(entry)
                normal_entries += 1

                key = get_entry_key(entry)

                if key is not None:

                    if key in seen_keys:
                        print(
                            f"  ⚠ 重複 Key：{key}"
                        )

                    else:
                        seen_keys.add(key)

                        manifest[key] = str(relative)

            else:

                file_excluded.append(entry)
                excluded_entries += 1

                key = get_entry_key(entry)

                if key is not None:
                    print(
                        f"  → 排除：{key}"
                    )
                else:
                    print(
                        "  → 排除：特殊 / 無法取得 Key 的 Entry"
                    )

        # ========================================================
        # 加入目前檔案的內容
        # 確保不同檔案之間不會黏在一起
        # ========================================================

        append_file_parts(normal_parts, file_normal)
        append_file_parts(excluded_parts, file_excluded)

    # ========================================================
    # 寫出正常 FTL
    # ========================================================

    normal_text = "".join(normal_parts)

    excluded_text = "".join(excluded_parts)

    write_text(output_file, normal_text)

    # ========================================================
    # 寫出 excluded.ftl
    # ========================================================

    write_text(excluded_file, excluded_text)

    # ========================================================
    # Manifest
    # ========================================================

    with open(
        manifest_file,
        "w",
        encoding="utf-8",
        newline="",
    ) as f:

        json.dump(
            manifest,
            f,
            ensure_ascii=False,
            indent=2,
        )

        f.write("\n")

    # ========================================================
    # 完成
    # ========================================================

    print()
    print("完成！")
    print()
    print(f"正常 FTL：{output_file}")
    print(f"排除 FTL：{excluded_file}")
    print(f"Manifest：{manifest_file}")
    print()
    print(f"檔案數：{len(files)}")
    print(f"Entry 數：{total_entries}")
    print(f"排除 Entry：{excluded_entries}")
    print(f"正常 Entry：{normal_entries}")
    print(f"Manifest Key 數：{len(manifest)}")


# ============================================================
# Main
# ============================================================

def main():

    if len(sys.argv) != 5:

        print(
            "用法："
            f"python3 {Path(sys.argv[0]).name} "
            "<input_dir> <output_file> "
            "<manifest_file> <excluded_file>"
        )

        sys.exit(1)

    input_dir = sys.argv[1]
    output_file = sys.argv[2]
    manifest_file = sys.argv[3]
    excluded_file = sys.argv[4]

    merge_ftl(
        input_dir,
        output_file,
        manifest_file,
        excluded_file,
    )


if __name__ == "__main__":
    main()
