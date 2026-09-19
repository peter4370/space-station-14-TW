#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
import re
from collections import OrderedDict
from pathlib import Path


# ============================================================
# 設定
# ============================================================

# Fluent Message / Term 的 key
#
# 例如：
#   foo = Hello
#   bar-baz = World
#   -my-term = Term
#
ENTRY_RE = re.compile(
    r"^(-?[A-Za-z][A-Za-z0-9_-]*)[ \t]*="
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
    從原始 FTL 文字中找出所有 top-level Message / Term key。

    注意：
    這裡只是找 key 建立 manifest。

    不會：
    - parse Fluent
    - serialize Fluent
    - 修改任何原始文字
    """

    keys = []

    for line in text.splitlines():
        # 有縮排的不是 top-level entry
        if line.startswith((" ", "\t")):
            continue

        match = ENTRY_RE.match(line)

        if match is not None:
            keys.append(match.group(1))

    return keys


# ============================================================
# Merge
# ============================================================

def merge_ftl(
    input_dir: Path,
    output_file: Path,
    manifest_file: Path,
) -> int:

    files = sorted(input_dir.rglob("*.ftl"))

    if not files:
        print(f"找不到 FTL 檔案：{input_dir}")
        return 1

    manifest = OrderedDict()

    # 存放「整個原始檔案」的文字
    merged_parts: list[str] = []

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
        # 找 key
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
        # 原始內容直接加入 merged
        # ----------------------------------------------------

        if index > 1:
            # 不額外插入空白行。
            #
            # 只確保上一個檔案與這個檔案之間至少有
            # 一個換行，避免：
            #
            # foo = Foo
            # bar = Bar
            #
            # 變成：
            #
            # foo = Foobar = Bar
            #
            if merged_parts:
                previous = merged_parts[-1]

                if not previous.endswith(("\n", "\r")):
                    merged_parts[-1] = previous + "\n"

        merged_parts.append(text)

    # ========================================================
    # 組合
    # ========================================================

    merged_text = "".join(merged_parts)

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

    # ========================================================
    # 寫入 merged FTL
    # ========================================================

    write_text(
        output_file,
        merged_text,
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
    print(f"FTL：{output_file}")
    print(f"Manifest：{manifest_file}")
    print(f"檔案數：{len(files)}")
    print(f"Key 數：{len(manifest)}")

    return 0


# ============================================================
# CLI
# ============================================================

def main():
    parser = argparse.ArgumentParser(
        description=(
            "將多個 FTL 原封不動合併成一個，"
            "並建立 key → 原始檔案的 manifest"
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
        help="合併後的 FTL",
    )

    parser.add_argument(
        "manifest_file",
        type=Path,
        help="manifest.json",
    )

    args = parser.parse_args()

    raise SystemExit(
        merge_ftl(
            args.input_dir,
            args.output_file,
            args.manifest_file,
        )
    )


if __name__ == "__main__":
    main()
