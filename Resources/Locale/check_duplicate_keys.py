#!/usr/bin/env python3

from __future__ import annotations

import argparse
from collections import defaultdict
from pathlib import Path

from fluent.syntax import parse


def get_entry_key(entry):
    """
    取得 Fluent entry 的 key。

    Message:
        hello = Hello

    Term:
        -brand = Brand

    Comment、GroupComment、ResourceComment 沒有 key。
    """
    entry_type = type(entry).__name__

    if entry_type == "Message":
        return entry.id.name

    if entry_type == "Term":
        return f"-{entry.id.name}"

    return None


def check_file(file_path: Path, keys: dict[str, list[Path]]):
    try:
        text = file_path.read_text(encoding="utf-8")
    except UnicodeDecodeError as error:
        print(f"[編碼錯誤] {file_path}: {error}")
        return

    try:
        resource = parse(text)
    except Exception as error:
        print(f"[解析錯誤] {file_path}: {error}")
        return

    for entry in resource.body:
        key = get_entry_key(entry)

        if key is None:
            continue

        keys[key].append(file_path)


def main():
    parser = argparse.ArgumentParser(
        description="檢查多個 Fluent FTL 檔案是否有重複 key"
    )

    parser.add_argument(
        "input_dir",
        type=Path,
        help="要檢查的資料夾，例如 Resources/Locale/zh-TW",
    )

    args = parser.parse_args()

    if not args.input_dir.is_dir():
        print(f"找不到資料夾: {args.input_dir}")
        raise SystemExit(1)

    files = sorted(args.input_dir.rglob("*.ftl"))

    if not files:
        print(f"找不到任何 FTL 檔案: {args.input_dir}")
        raise SystemExit(1)

    keys = defaultdict(list)

    for file_path in files:
        check_file(file_path, keys)

    duplicates = {
        key: paths
        for key, paths in keys.items()
        if len(paths) > 1
    }

    print(f"檢查檔案數量: {len(files)}")
    print(f"不同 key 數量: {len(keys)}")
    print(f"重複 key 數量: {len(duplicates)}")
    print()

    if not duplicates:
        print("沒有發現重複 key。")
        return

    print("發現重複 key：")
    print("=" * 60)

    for key in sorted(duplicates):
        print(f"\n{key}")

        for file_path in duplicates[key]:
            relative_path = file_path.relative_to(args.input_dir)
            print(f"  - {relative_path}")

    print()
    raise SystemExit(2)


if __name__ == "__main__":
    main()
