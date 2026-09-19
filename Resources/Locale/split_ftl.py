#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

from fluent.syntax import parse


# ============================================================
# 設定
# ============================================================

# Fluent message / term：
#
# foo = ...
# -foo = ...
#
# FTL identifier 的一般形式。
ENTRY_RE = re.compile(
    r"^(-?[A-Za-z][A-Za-z0-9_-]*)\s*="
)

# 預設多行 FTL value 的縮排。
DEFAULT_INDENT = "    "


# ============================================================
# 資料結構
# ============================================================

@dataclass
class Entry:
    key: str

    # 整個 entry 的範圍
    start: int
    end: int

    # main value 在原始文字中的範圍
    # None = 沒有 main value
    value_start: int | None
    value_end: int | None

    # value 使用的多行縮排
    continuation_indent: str


# ============================================================
# 基本工具
# ============================================================

def read_text_preserve_newlines(path: Path) -> str:
    """
    讀取文字，但不要讓 Python 自動把 CRLF 轉成 LF。
    """

    with path.open(
        "r",
        encoding="utf-8",
        newline="",
    ) as f:
        return f.read()


def write_text_preserve_newlines(path: Path, text: str) -> None:
    """
    寫回文字，不修改原本的 LF / CRLF。
    """

    with path.open(
        "w",
        encoding="utf-8",
        newline="",
    ) as f:
        f.write(text)


def split_lines(text: str):
    """
    splitlines(True)：

    保留每一行原本的換行符號。
    """

    return text.splitlines(keepends=True)


def line_content(line: str) -> str:
    """
    移除行尾換行符號，但保留其他內容。
    """

    return line.rstrip("\r\n")


def leading_whitespace(text: str) -> str:
    """
    取得開頭的空白 / tab。
    """

    return text[: len(text) - len(text.lstrip(" \t"))]


def is_blank_line(line: str) -> bool:
    return line_content(line).strip(" \t") == ""


def is_top_level_comment(line: str) -> bool:
    """
    FTL comment 必須從 column 0 開始。

    #
    ##
    ###
    """

    content = line_content(line)

    return (
        content.startswith("#")
        and not content.startswith((" ", "\t"))
    )


def is_top_level_entry(line: str) -> bool:
    """
    判斷是不是：

        foo =
        -foo =

    這種 top-level message / term。
    """

    content = line_content(line)

    if content.startswith((" ", "\t")):
        return False

    return ENTRY_RE.match(content) is not None


def get_key_from_line(line: str) -> str | None:
    """
    從 entry 第一行取得 key。
    """

    content = line_content(line)

    match = ENTRY_RE.match(content)

    if match is None:
        return None

    return match.group(1)


# ============================================================
# Entry 邊界
# ============================================================

def is_attribute_line(line: str) -> bool:
    """
    Fluent attribute：

        .foo = ...

    注意一定要有縮排。
    """

    content = line_content(line)

    if not content.startswith((" ", "\t")):
        return False

    stripped = content.lstrip(" \t")

    return stripped.startswith(".")


def is_continuation_line(line: str) -> bool:
    """
    Fluent multiline pattern 必須有縮排。

    例如：

        foo =
            hello
            world
    """

    content = line_content(line)

    if content.strip(" \t") == "":
        return False

    return content.startswith((" ", "\t"))


# ============================================================
# Value 掃描
# ============================================================

def find_value(
    lines: list[str],
    offsets: list[int],
    entry_index: int,
):
    """
    找出 entry 的 main value。

    只找：

        foo = value

    或：

        foo =
            value
            value

    不碰：

        .attribute = value

    """

    first_line = lines[entry_index]
    first_content = line_content(first_line)

    match = ENTRY_RE.match(first_content)

    if match is None:
        return None, None, DEFAULT_INDENT

    equals_pos = first_content.find("=", match.start(0))

    if equals_pos < 0:
        return None, None, DEFAULT_INDENT

    # --------------------------------------------------------
    # 第一行 '=' 後面的內容
    # --------------------------------------------------------

    after_equals = first_content[equals_pos + 1:]

    # 找第一個非空白字元
    stripped_after_equals = after_equals.lstrip(" \t")

    if stripped_after_equals:
        # value 在同一行
        first_value_start_in_line = (
            equals_pos
            + 1
            + len(after_equals)
            - len(stripped_after_equals)
        )

        value_start = (
            offsets[entry_index]
            + first_value_start_in_line
        )

        # ----------------------------------------------------
        # 找 value 最後一行
        # ----------------------------------------------------

        last_value_index = entry_index

        i = entry_index + 1

        while i < len(lines):
            line = lines[i]

            # 空白行代表 entry 結束
            if is_blank_line(line):
                break

            # 下一個 top-level entry
            if is_top_level_entry(line):
                break

            # top-level comment
            if is_top_level_comment(line):
                break

            # attribute 開始
            if is_attribute_line(line):
                break

            # 非縮排行也不能算 continuation
            if not is_continuation_line(line):
                break

            last_value_index = i
            i += 1

        last_line = line_content(lines[last_value_index])

        value_end = (
            offsets[last_value_index]
            + len(last_line)
        )

        # 保留原本最後面的空白
        trailing_match = re.search(r"[ \t]*$", last_line)

        if trailing_match:
            value_end -= len(trailing_match.group(0))

        # 找 continuation indent
        if last_value_index > entry_index:
            continuation_line = line_content(
                lines[entry_index + 1]
            )

            continuation_indent = leading_whitespace(
                continuation_line
            )

        else:
            continuation_indent = DEFAULT_INDENT

        return (
            value_start,
            value_end,
            continuation_indent,
        )

    # --------------------------------------------------------
    # 第一行沒有 value
    #
    # foo =
    #     translated text
    # --------------------------------------------------------

    i = entry_index + 1

    first_continuation_indent = None

    while i < len(lines):
        line = lines[i]
        content = line_content(line)

        # 空白行 = 沒有 value
        if is_blank_line(line):
            break

        # comment
        if is_top_level_comment(line):
            break

        # 下一個 entry
        if is_top_level_entry(line):
            break

        # attribute
        if is_attribute_line(line):
            break

        # 非縮排
        if not is_continuation_line(line):
            break

        # 第一個真正的 pattern line
        first_continuation_indent = leading_whitespace(
            content
        )

        value_start = (
            offsets[i]
            + len(first_continuation_indent)
        )

        last_value_index = i

        i += 1

        while i < len(lines):
            next_line = lines[i]

            if is_blank_line(next_line):
                break

            if is_top_level_entry(next_line):
                break

            if is_top_level_comment(next_line):
                break

            if is_attribute_line(next_line):
                break

            if not is_continuation_line(next_line):
                break

            last_value_index = i
            i += 1

        last_line = line_content(lines[last_value_index])

        value_end = (
            offsets[last_value_index]
            + len(last_line)
        )

        trailing_match = re.search(r"[ \t]*$", last_line)

        if trailing_match:
            value_end -= len(trailing_match.group(0))

        return (
            value_start,
            value_end,
            first_continuation_indent,
        )

    return None, None, DEFAULT_INDENT


# ============================================================
# 掃描整個 FTL
# ============================================================

def scan_entries(text: str) -> dict[str, Entry]:
    """
    掃描 FTL 中所有 Message / Term。

    注意：

    這裡完全不修改原始文字。
    只是找出 key 與 value 的 byte/character range。
    """

    lines = split_lines(text)

    offsets = []

    current_offset = 0

    for line in lines:
        offsets.append(current_offset)
        current_offset += len(line)

    entries: dict[str, Entry] = {}

    for i, line in enumerate(lines):
        key = get_key_from_line(line)

        if key is None:
            continue

        # ----------------------------------------------------
        # 找 entry 結尾
        # ----------------------------------------------------

        j = i + 1

        while j < len(lines):
            current = lines[j]

            # 下一個 entry
            if is_top_level_entry(current):
                break

            # top-level comment
            if is_top_level_comment(current):
                break

            # 空白行
            if is_blank_line(current):
                break

            # 其他非縮排行
            if not is_continuation_line(current):
                break

            j += 1

        entry_end = (
            offsets[j]
            if j < len(lines)
            else len(text)
        )

        # ----------------------------------------------------
        # 找 main value
        # ----------------------------------------------------

        value_start, value_end, continuation_indent = find_value(
            lines,
            offsets,
            i,
        )

        if key in entries:
            raise RuntimeError(
                f"檔案中出現重複 key：{key}"
            )

        entries[key] = Entry(
            key=key,
            start=offsets[i],
            end=entry_end,
            value_start=value_start,
            value_end=value_end,
            continuation_indent=continuation_indent,
        )

    return entries


# ============================================================
# Value 抽取
# ============================================================

def extract_value(
    text: str,
    entry: Entry,
) -> str | None:
    """
    從 FTL 原文抽取 main value。

    會把 FTL 為了語法而存在的 continuation indentation
    去掉，但保留內容本身的相對縮排。

    例如：

        foo = Hello
            World
              Test

    會得到：

        Hello
        World
          Test
    """

    if (
        entry.value_start is None
        or entry.value_end is None
    ):
        return None

    raw = text[
        entry.value_start:
        entry.value_end
    ]

    if not raw:
        return None

    # 第一行不需要處理。
    lines = raw.splitlines()

    if len(lines) <= 1:
        return raw

    # --------------------------------------------------------
    # 這裡比較特殊：
    #
    # value_start 已經從第一個 continuation line 的
    # 第一個非空白字元開始，所以第一行不用 dedent。
    #
    # 後面的行仍然可能帶著 FTL continuation indent。
    # --------------------------------------------------------

    # 取得 entry 的 continuation indent
    indent = entry.continuation_indent

    result = [lines[0]]

    for line in lines[1:]:
        if line.startswith(indent):
            result.append(line[len(indent):])
        else:
            result.append(line)

    return "\n".join(result)


# ============================================================
# Value 格式化
# ============================================================

def format_value_for_original(
    translated_value: str,
    original_entry: Entry,
) -> str:
    """
    把翻譯後的 value 重新套回原本 FTL 的 indentation。

    注意：
    這裡不是 Fluent serializer。

    只做：

        \n
        ->
        \n + 原本的 continuation indent

    因此 [color=...]、placeable、文字內容等都不會被改寫。
    """

    translated_value = translated_value.replace(
        "\r\n",
        "\n",
    ).replace(
        "\r",
        "\n",
    )

    lines = translated_value.split("\n")

    if len(lines) == 1:
        return lines[0]

    indent = original_entry.continuation_indent

    result = [lines[0]]

    for line in lines[1:]:
        result.append(indent + line)

    return "\n".join(result)


# ============================================================
# 合併翻譯
# ============================================================

def load_translations(
    merged_file: Path,
) -> dict[str, str]:
    """
    從合併後的 FTL 讀出：

        key -> translated value

    不使用 serialize。
    """

    text = read_text_preserve_newlines(merged_file)

    entries = scan_entries(text)

    translations: dict[str, str] = {}

    for key, entry in entries.items():
        value = extract_value(text, entry)

        if value is None:
            # 沒有 main value。
            #
            # 例如：
            #
            # foo =
            #     .label = something
            #
            # 這裡不把它當成翻譯。
            continue

        translations[key] = value

    return translations


# ============================================================
# 套用翻譯
# ============================================================

def apply_translations(
    original_text: str,
    translations: dict[str, str],
    keys: list[str],
):
    """
    根據 key 修改 original_text。

    只修改 main value。

    不修改：

    - key
    - comments
    - 空白行
    - attributes
    - indentation
    - [color=...]
    - placeables
    - select expression 結構
    - entry 排序
    """

    entries = scan_entries(original_text)

    replacements = []

    missing_original = []
    missing_translation = []
    skipped_no_value = []

    for key in keys:
        original_entry = entries.get(key)

        if original_entry is None:
            missing_original.append(key)
            continue

        translated_value = translations.get(key)

        if translated_value is None:
            missing_translation.append(key)
            continue

        if (
            original_entry.value_start is None
            or original_entry.value_end is None
        ):
            skipped_no_value.append(key)
            continue

        new_value = format_value_for_original(
            translated_value,
            original_entry,
        )

        replacements.append(
            (
                original_entry.value_start,
                original_entry.value_end,
                new_value,
            )
        )

    # --------------------------------------------------------
    # 從後往前替換
    #
    # 這樣前面的 offset 不會因為長度變化而失效。
    # --------------------------------------------------------

    replacements.sort(
        key=lambda x: x[0],
        reverse=True,
    )

    result = original_text

    updated = 0

    for start, end, replacement in replacements:
        old_value = result[start:end]

        if old_value == replacement:
            continue

        result = (
            result[:start]
            + replacement
            + result[end:]
        )

        updated += 1

    return (
        result,
        updated,
        missing_original,
        missing_translation,
        skipped_no_value,
    )


# ============================================================
# Manifest
# ============================================================

def load_manifest(
    manifest_file: Path,
):
    manifest = json.loads(
        read_text_preserve_newlines(
            manifest_file
        )
    )

    if not isinstance(manifest, dict):
        raise RuntimeError(
            "manifest.json 格式錯誤：預期為 object"
        )

    return manifest


# ============================================================
# 主流程
# ============================================================

def split_ftl(
    original_dir: Path,
    merged_file: Path,
    manifest_file: Path,
):
    manifest = load_manifest(manifest_file)

    translations = load_translations(
        merged_file
    )

    # --------------------------------------------------------
    # 按照原始檔案分組
    # --------------------------------------------------------

    keys_by_file = defaultdict(list)

    for key, relative_file in manifest.items():
        keys_by_file[relative_file].append(key)

    total_updated = 0
    total_missing_original = 0
    total_missing_translation = 0
    total_skipped = 0

    # --------------------------------------------------------
    # 處理每個原始 FTL
    # --------------------------------------------------------

    for relative_file, keys in sorted(
        keys_by_file.items()
    ):
        file_path = original_dir / relative_file

        if not file_path.exists():
            print(
                f"[錯誤] 找不到原始檔案：{relative_file}"
            )
            continue

        print(f"處理：{relative_file}")

        original_text = read_text_preserve_newlines(
            file_path
        )

        (
            new_text,
            updated,
            missing_original,
            missing_translation,
            skipped_no_value,
        ) = apply_translations(
            original_text,
            translations,
            keys,
        )

        # ----------------------------------------------------
        # 沒有任何變化
        #
        # 非常重要：
        #
        # 如果這個檔案沒有東西需要改，
        # 完全不寫回。
        #
        # 這可以避免不必要的 file modification。
        # ----------------------------------------------------

        if new_text != original_text:
            write_text_preserve_newlines(
                file_path,
                new_text,
            )

        print(
            f"  更新 {updated} 個 key"
        )

        if missing_original:
            for key in missing_original:
                print(
                    f"  [警告] 原始檔案找不到 key：{key}"
                )

        if missing_translation:
            for key in missing_translation:
                print(
                    f"  [警告] 合併檔案找不到翻譯：{key}"
                )

        if skipped_no_value:
            for key in skipped_no_value:
                print(
                    f"  [略過] key 沒有 main value：{key}"
                )

        total_updated += updated
        total_missing_original += len(
            missing_original
        )
        total_missing_translation += len(
            missing_translation
        )
        total_skipped += len(
            skipped_no_value
        )

    # --------------------------------------------------------
    # 結果
    # --------------------------------------------------------

    print()
    print("完成！")
    print(f"更新 key：{total_updated}")
    print(
        f"原始檔案缺少 key："
        f"{total_missing_original}"
    )
    print(
        f"合併檔案缺少翻譯："
        f"{total_missing_translation}"
    )
    print(
        f"沒有 main value 而略過："
        f"{total_skipped}"
    )


# ============================================================
# CLI
# ============================================================

def main():
    parser = argparse.ArgumentParser(
        description=(
            "依 key 將合併後的 Fluent 翻譯填回原始 FTL。"
            "不使用 Fluent serializer，保留原始格式。"
        )
    )

    parser.add_argument(
        "original_dir",
        type=Path,
        help="原本的 FTL 資料夾",
    )

    parser.add_argument(
        "merged_file",
        type=Path,
        help="Weblate / Gemini 翻譯後的合併 FTL",
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
