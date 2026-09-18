#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path

from fluent.syntax import parse, serialize
from fluent.syntax.ast import Message, Term


def get_key(entry):
    if isinstance(entry, Message):
        return entry.id.name

    if isinstance(entry, Term):
        return f"-{entry.id.name}"

    return None


def copy_translation(original, translated):
    """
    將 translated 的翻譯內容複製到 original。

    保留 original 的 key / 結構，
    只替換 value 和 attributes。
    """

    # Message / Term 的 value
    if translated.value is not None:
        original.value = translated.value

    # 如果翻譯後沒有 value
    # 就保留原本的 value
    #
    # 例如：
    #
    # foo =
    #     .label = ...
    #
    # 不要因為 translated.value == None
    # 就把原本的 value 清掉。

    # Attributes
    translated_attributes = {
        attribute.id.name: attribute
        for attribute in translated.attributes
    }

    original_attributes = {
        attribute.id.name: attribute
        for attribute in original.attributes
    }

    # 更新已存在的 attribute
    for name, original_attribute in original_attributes.items():
        translated_attribute = translated_attributes.get(name)

        if translated_attribute is not None:
            original_attribute.value = translated_attribute.value

    # 如果 Weblate 新增了 attribute
    # 就加入原本的 message/term
    for name, translated_attribute in translated_attributes.items():
        if name not in original_attributes:
            original.attributes.append(translated_attribute)


def load_translations(merged_file: Path):
    text = merged_file.read_text(encoding="utf-8")
    resource = parse(text)

    translations = {}

    for entry in resource.body:
        key = get_key(entry)

        if key is None:
            continue

        if key in translations:
            raise RuntimeError(
                f"合併檔案中出現重複 key：{key}"
            )

        translations[key] = entry

    return translations


def split_ftl(
    original_dir: Path,
    merged_file: Path,
    manifest_file: Path,
):
    manifest = json.loads(
        manifest_file.read_text(encoding="utf-8")
    )

    translations = load_translations(merged_file)

    # 按照原始檔案分組
    keys_by_file = defaultdict(list)

    for key, relative_file in manifest.items():
        keys_by_file[relative_file].append(key)

    total_updated = 0
    total_missing = 0

    for relative_file, keys in sorted(keys_by_file.items()):
        file_path = original_dir / relative_file

        if not file_path.exists():
            print(f"[錯誤] 找不到原始檔案：{relative_file}")
            continue

        print(f"處理：{relative_file}")

        text = file_path.read_text(encoding="utf-8")
        resource = parse(text)

        entries = {}

        for entry in resource.body:
            key = get_key(entry)

            if key is not None:
                entries[key] = entry

        updated = 0

        for key in keys:
            original_entry = entries.get(key)
            translated_entry = translations.get(key)

            if original_entry is None:
                print(f"  [警告] 原始檔案找不到 key：{key}")
                continue

            if translated_entry is None:
                print(f"  [警告] 合併檔案找不到 key：{key}")
                total_missing += 1
                continue

            copy_translation(
                original_entry,
                translated_entry,
            )

            updated += 1
            total_updated += 1

        # 寫回原本檔案
        file_path.write_text(
            serialize(resource),
            encoding="utf-8",
        )

        print(f"  更新 {updated} 個 key")

    print()
    print("完成！")
    print(f"更新 key：{total_updated}")
    print(f"缺少 key：{total_missing}")


def main():
    parser = argparse.ArgumentParser(
        description="將合併後的 Fluent 翻譯依 key 填回原本的 FTL"
    )

    parser.add_argument(
        "original_dir",
        type=Path,
        help="原本的 FTL 資料夾",
    )

    parser.add_argument(
        "merged_file",
        type=Path,
        help="Weblate 翻譯後的合併 FTL",
    )

    parser.add_argument(
        "manifest_file",
        type=Path,
        help="merge 產生的 manifest.json",
    )

    args = parser.parse_args()

    split_ftl(
        args.original_dir,
        args.merged_file,
        args.manifest_file,
    )


if __name__ == "__main__":
    main()
