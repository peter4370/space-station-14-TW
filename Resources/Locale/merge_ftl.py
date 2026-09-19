#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
import re
from collections import OrderedDict
from pathlib import Path

from fluent.syntax import FluentParser


# ============================================================
# 設定
# ============================================================

# 一般 Fluent Message / Term key
#
# 例如：
#   foo = Hello
#   bar-baz = World
#   -my-term = Term
#
ENTRY_RE = re.compile(
    r"^(-?[A-Za-z][A-Za-z0-9_-]*)[ \t]*="
)

# 用來判斷「一個 top-level entry 開始」
#
# 不只抓正常 Fluent key。
# 這是故意的，因為 SS14 某些產生的特殊 key
# Python fluent.syntax 可能不認得。
#
# 例如：
#   ent-{'values': ['GasPressurePump', ...]} = gas pump
#
# 這種也必須能被我們獨立搬到 excluded FTL。
TOP_LEVEL_ENTRY_RE = re.compile(
    r"^[^\s#;].*="
)


# ============================================================
# 純文字讀寫
# ============================================================

def read_text(path: Path) -> str:
    """
    原封不動讀取文字檔。

    newline="" 很重要：
    不讓 Python 自動把 CRLF / LF 做轉換。
    """
    with path.open(
        "r",
        encoding="utf-8",
        newline="",
    ) as f:
        return f.read()


def write_text(path: Path, text: str) -> None:
    """
    原封不動寫入文字檔。
    """
    with path.open(
        "w",
        encoding="utf-8",
        newline="",
    ) as f:
        f.write(text)


# ============================================================
# Key 掃描
# ============================================================

def get_keys(text: str) -> list[str]:
    """
    從原始 FTL 文字中找出正常的 top-level Message / Term key。

    這裡只負責建立 manifest。
    不 parse、不 serialize、不修改文字。
    """

    keys = []

    for line in text.splitlines():
        if line.startswith((" ", "\t")):
            continue

        match = ENTRY_RE.match(line)

        if match is not None:
            keys.append(match.group(1))

    return keys


# ============================================================
# Entry 切割
# ============================================================

def split_entries(text: str) -> list[tuple[str, str]]:
    """
    將一個 FTL 檔案按照 top-level entry 切開。

    回傳：
        [
            (header/comment/空白等前置文字 + entry, entry_key),
            ...
        ]

    這裡不做 Fluent AST parse。

    目的只是把原始文字分成可以個別送給 parser
    測試的區塊。

    注意：
    這個函式不會修改任何文字。
    """

    lines = text.splitlines(keepends=True)

    entries: list[tuple[str, str]] = []

    current_start = None
    current_key = None

    for index, line in enumerate(lines):

        # 空白行 / comment / indented line
        # 不算新的 entry
        if line.startswith((" ", "\t")):
            continue

        if line.startswith(("#", ";")):
            continue

        match = TOP_LEVEL_ENTRY_RE.match(line)

        if match is None:
            continue

        # 找到新的 top-level entry
        if current_start is not None:
            entry_text = "".join(lines[current_start:index])
            entries.append((entry_text, current_key))

        current_start = index

        # 只在這裡嘗試取得正常 key。
        # 特殊 SS14 key 可能會取得 None。
        normal_match = ENTRY_RE.match(line)

        if normal_match is not None:
            current_key = normal_match.group(1)
        else:
            current_key = None

    # 最後一個 entry
    if current_start is not None:
        entry_text = "".join(lines[current_start:])
        entries.append((entry_text, current_key))

    return entries


# ============================================================
# Parser 檢查
# ============================================================

def parse_ok(parser, text):
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
# Merge
# ============================================================

def merge_ftl(
    input_dir: Path,
    output_file: Path,
    manifest_file: Path,
    excluded_file: Path,
) -> int:

    files = sorted(input_dir.rglob("*.ftl"))

    if not files:
        print(f"找不到 FTL 檔案：{input_dir}")
        return 1

    manifest = OrderedDict()

    merged_parts: list[str] = []
    excluded_parts: list[str] = []

    parser = FluentParser()

    total_entries = 0
    excluded_entries = 0

    print(f"找到 {len(files)} 個 FTL 檔案")
    print()

    for index, file_path in enumerate(files, start=1):

        relative_path = file_path.relative_to(input_dir).as_posix()

        print(f"[{index}/{len(files)}] 處理：{relative_path}")

        # ----------------------------------------------------
        # 完全原樣讀取
        # ----------------------------------------------------

        text = read_text(file_path)

        # ----------------------------------------------------
        # 建立 manifest
        # ----------------------------------------------------

        keys = get_keys(text)

        for key in keys:

            if key in manifest:
                print()
                print(f"錯誤：發現重複 key：{key}")
                print(f"  已存在：{manifest[key]}")
                print(f"  再次出現：{relative_path}")
                print()
                return 1

            manifest[key] = relative_path

        # ----------------------------------------------------
        # 個別 entry parser 檢查
        # ----------------------------------------------------

        entries = split_entries(text)

        normal_parts: list[str] = []

        for entry_text, key in entries:

            total_entries += 1

            if parse_ok(parser, entry_text):

                # Parser OK
                normal_parts.append(entry_text)

            else:

                # Parser FAIL
                excluded_entries += 1

                print()
                print("  [Parser ERROR]")

                if key is not None:
                    print(f"  Key：{key}")
                else:
                    print("  Key：<SS14 特殊 key>")

                print(f"  來源：{relative_path}")

                # 顯示第一行方便確認
                first_line = entry_text.splitlines()[0]
                print(f"  內容：{first_line}")

                # 原始文字完整搬到 excluded FTL
                excluded_parts.append(entry_text)

        # ----------------------------------------------------
        # 加入正常 merged FTL
        # ----------------------------------------------------

        normal_text = "".join(normal_parts)

        if normal_text:
            if merged_parts:
                previous = merged_parts[-1]

                if not previous.endswith(("\n", "\r")):
                    merged_parts[-1] = previous + "\n"

            merged_parts.append(normal_text)

    # ========================================================
    # 組合
    # ========================================================

    merged_text = "".join(merged_parts)
    excluded_text = "".join(excluded_parts)

    # ========================================================
    # 建立輸出資料夾
    # ========================================================

    output_file.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    manifest_file.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    excluded_file.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    # ========================================================
    # 寫入正常 merged FTL
    # ========================================================

    write_text(
        output_file,
        merged_text,
    )

    # ========================================================
    # 寫入 excluded FTL
    # ========================================================

    write_text(
        excluded_file,
        excluded_text,
    )

    # ========================================================
    # 寫入 manifest
    # ========================================================

    manifest_text = (
        json.dumps(
            manifest,
            ensure_ascii=False,
            indent=2,
        )
        + "\n"
    )

    write_text(
        manifest_file,
        manifest_text,
    )

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
    print(f"正常 Entry：{total_entries - excluded_entries}")
    print(f"Manifest Key 數：{len(manifest)}")

    return 0


# ============================================================
# CLI
# ============================================================

def main():
    parser = argparse.ArgumentParser(
        description=(
            "將多個 FTL 合併，並使用 fluent.syntax "
            "將無法解析的 entry 分離到額外的 FTL。"
        )
    )

    parser.add_argument(
        "input_dir",
        type=Path,
        help="原本的 FTL 資料夾",
    )

    parser.add_argument(
        "output_file",
        type=Path,
        help="正常的合併 FTL",
    )

    parser.add_argument(
        "manifest_file",
        type=Path,
        help="manifest.json",
    )

    parser.add_argument(
        "excluded_file",
        type=Path,
        help="Parser 無法解析的 entry 要輸出的 FTL",
    )

    args = parser.parse_args()

    raise SystemExit(
        merge_ftl(
            args.input_dir,
            args.output_file,
            args.manifest_file,
            args.excluded_file,
        )
    )


if __name__ == "__main__":
    main()
