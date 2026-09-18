#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
from collections import OrderedDict
from pathlib import Path

from fluent.syntax import parse, serialize
from fluent.syntax.ast import Message, Term


def get_key(entry):
    if isinstance(entry, Message):
        return entry.id.name

    if isinstance(entry, Term):
        return f"-{entry.id.name}"

    return None


def merge_ftl(input_dir: Path, output_file: Path, manifest_file: Path):
    files = sorted(input_dir.rglob("*.ftl"))

    if not files:
        print(f"找不到 FTL 檔案：{input_dir}")
        return 1

    merged_entries = []
    manifest = OrderedDict()

    for file_path in files:
        relative_path = file_path.relative_to(input_dir).as_posix()

        print(f"處理：{relative_path}")

        text = file_path.read_text(encoding="utf-8")
        resource = parse(text)

        for entry in resource.body:
            key = get_key(entry)

            if key is None:
                # comment 等非 message/term 的東西不加入 manifest
                continue

            if key in manifest:
                print(f"\n錯誤：發現重複 key：{key}")
                print(f"  已存在：{manifest[key]}")
                print(f"  再次出現：{relative_path}")
                return 1

            manifest[key] = relative_path
            merged_entries.append(entry)

    # 建立一個新的 Fluent Resource
    from fluent.syntax.ast import Resource

    merged_resource = Resource(merged_entries)

    output_file.parent.mkdir(parents=True, exist_ok=True)
    manifest_file.parent.mkdir(parents=True, exist_ok=True)

    output_file.write_text(
        serialize(merged_resource),
        encoding="utf-8",
    )

    manifest_file.write_text(
        json.dumps(
            manifest,
            ensure_ascii=False,
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )

    print()
    print(f"完成！")
    print(f"FTL：{output_file}")
    print(f"Manifest：{manifest_file}")
    print(f"檔案數：{len(files)}")
    print(f"Key 數：{len(manifest)}")

    return 0


def main():
    parser = argparse.ArgumentParser(
        description="將多個 Fluent FTL 合併成一個，並建立 key → 原始檔案的 manifest"
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
