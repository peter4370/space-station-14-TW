#!/usr/bin/env python3

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path


# ============================================================
# FTL Entry
# ============================================================

@dataclass
class Entry:
    key: str

    # main value 的實際文字範圍
    value_start: int | None
    value_end: int | None

    # block value 第一行的 indentation
    continuation_indent: str

    # value 是否使用 block/multiline 格式
    multiline: bool


# ============================================================
# FTL key
# ============================================================

ENTRY_RE = re.compile(
    r"^(-?[A-Za-z][A-Za-z0-9_-]*)[ \t]*="
)


# ============================================================
# 基本文字處理
# ============================================================

def read_text(path: Path) -> str:
    """
    讀取 FTL。

    newline="" 非常重要：
    Python 不會自動把 CRLF 轉成 LF。
    """

    with path.open(
        "r",
        encoding="utf-8",
        newline="",
    ) as f:
        return f.read()


def write_text(path: Path, text: str) -> None:
    """
    原樣寫回，不讓 Python 改換行格式。
    """

    with path.open(
        "w",
        encoding="utf-8",
        newline="",
    ) as f:
        f.write(text)


def split_lines(text: str) -> list[str]:
    """
    保留原始換行符。
    """

    return text.splitlines(keepends=True)


def content_of(line: str) -> str:
    """
    移除換行符，但不動其他內容。
    """

    return line.rstrip("\r\n")


def indentation(line: str) -> str:
    """
    取得開頭的空白 / tab。
    """

    content = content_of(line)

    return content[
        :len(content) - len(content.lstrip(" \t"))
    ]


def is_blank(line: str) -> bool:
    return content_of(line).strip(" \t") == ""


def is_comment(line: str) -> bool:
    """
    只把 column 0 的 # 當成 top-level comment。

    例如：

    # comment
    ## comment
    ### comment

    都是 comment。

    但：

        # something

    不在這裡判斷。
    """

    content = content_of(line)

    return (
        content.startswith("#")
        and not content.startswith((" ", "\t"))
    )


def get_key(line: str) -> str | None:
    """
    取得 top-level Message / Term key。

    foo = ...
    -foo = ...
    """

    content = content_of(line)

    match = ENTRY_RE.match(content)

    if match is None:
        return None

    return match.group(1)


def is_top_level_entry(line: str) -> bool:
    """
    判斷是否為真正的 top-level entry。

    必須從 column 0 開始。
    """

    content = content_of(line)

    if content.startswith((" ", "\t")):
        return False

    return ENTRY_RE.match(content) is not None


def is_attribute(line: str) -> bool:
    """
    判斷 Fluent attribute：

        .label = ...
        .description = ...

    """

    content = content_of(line)

    if not content.startswith((" ", "\t")):
        return False

    stripped = content.lstrip(" \t")

    return stripped.startswith(".")


def is_continuation(line: str) -> bool:
    """
    一般 multiline FTL continuation：

        foo =
            Hello
            World
    """

    content = content_of(line)

    if not content.strip(" \t"):
        return False

    return content.startswith((" ", "\t"))


# ============================================================
# Fluent placeable brace depth
# ============================================================

def update_brace_depth(
    text: str,
    depth: int,
) -> int:
    """
    計算 Fluent { ... } placeable 的深度。

    例如：

        { $count ->
            [one] one
           *[other] many
        }

    第一行之後 depth > 0。

    即使最後的：

        } typing...

    沒有 indentation，
    只要 depth > 0，它仍然屬於同一個 value。

    --------------------------------------------------------
    注意：
    --------------------------------------------------------

    不計算字串中的 { }。

    例如：

        { "hello } world" }

    字串中的 } 不會被誤認為 closing brace。

    同時處理基本的 backslash escape。
    """

    in_string = False
    escaped = False

    for char in text:

        if escaped:
            escaped = False
            continue

        if char == "\\":
            escaped = True
            continue

        if char == '"':
            in_string = not in_string
            continue

        if in_string:
            continue

        if char == "{":
            depth += 1

        elif char == "}":
            if depth > 0:
                depth -= 1

    return depth


# ============================================================
# 判斷 multiline value 是否繼續
# ============================================================

def should_continue_value(
    line: str,
    brace_depth: int,
) -> bool:
    """
    判斷下一行是否仍然屬於目前的 value。

    規則：

    1. 如果目前正在 { ... } 裡面：
       不管 indentation，都繼續。

    2. 如果已經離開 placeable：
       只有一般 indentation continuation 才繼續。

    這是處理：

        foo =
            { $count ->
                [one] one
               *[other] many
            } text

    的關鍵。
    """

    if brace_depth > 0:
        return True

    return is_continuation(line)


# ============================================================
# 找 Entry
# ============================================================

def scan_entries(
    text: str,
) -> dict[str, Entry]:
    """
    純文字掃描 FTL。

    完全不使用 Fluent parser。

    不修改任何文字，只記錄：

        key
        value_start
        value_end

    --------------------------------------------------------
    重要：
    --------------------------------------------------------

    不用 serializer。

    不重建 AST。

    不格式化 FTL。

    --------------------------------------------------------
    value boundary
    --------------------------------------------------------

    除了一般 indentation 外，
    還會追蹤 { ... } placeable。

    因此：

        } typing...

    可以正確被視為前一個 value 的一部分。
    """

    lines = split_lines(text)

    offsets: list[int] = []

    offset = 0

    for line in lines:
        offsets.append(offset)
        offset += len(line)

    entries: dict[str, Entry] = {}

    for i, line in enumerate(lines):

        key = get_key(line)

        if key is None:
            continue

        if key in entries:
            raise RuntimeError(
                f"檔案中出現重複 key：{key}"
            )

        content = content_of(line)

        match = ENTRY_RE.match(content)

        if match is None:
            continue

        equals_pos = content.find("=")

        if equals_pos < 0:
            continue

        after_equals = content[
            equals_pos + 1:
        ]

        # ====================================================
        # 情況 A：
        #
        # foo = Hello
        #
        # ====================================================

        stripped = after_equals.lstrip(" \t")

        if stripped:

            leading = (
                len(after_equals)
                - len(stripped)
            )

            value_start = (
                offsets[i]
                + equals_pos
                + 1
                + leading
            )

            # -----------------------------------------------
            # 計算第一行 placeable depth
            # -----------------------------------------------

            brace_depth = update_brace_depth(
                stripped,
                0,
            )

            last_value_line = i

            j = i + 1

            while j < len(lines):

                line2 = lines[j]

                # 如果目前不在 placeable 裡，
                # 才能用普通 entry/comment/blank 規則。
                if brace_depth == 0:

                    if is_blank(line2):
                        break

                    if is_comment(line2):
                        break

                    if is_top_level_entry(line2):
                        break

                    if is_attribute(line2):
                        break

                    if not is_continuation(line2):
                        break

                # ------------------------------------------------
                # 還在 value：
                #
                # 特別是 brace_depth > 0 時，
                # 即使 line2 沒有 indentation 也要吃。
                # ------------------------------------------------

                last_value_line = j

                brace_depth = update_brace_depth(
                    content_of(line2),
                    brace_depth,
                )

                j += 1

            last_content = content_of(
                lines[last_value_line]
            )

            value_end = (
                offsets[last_value_line]
                + len(last_content)
            )

            entries[key] = Entry(
                key=key,
                value_start=value_start,
                value_end=value_end,
                continuation_indent=(
                    indentation(lines[i + 1])
                    if last_value_line > i
                    else ""
                ),
                multiline=(
                    last_value_line > i
                ),
            )

            continue

        # ====================================================
        # 情況 B：
        #
        # foo =
        #     Hello
        #     World
        #
        # ====================================================

        first_value_line: int | None = None
        first_indent = ""

        j = i + 1

        while j < len(lines):

            line2 = lines[j]

            if is_blank(line2):
                break

            if is_comment(line2):
                break

            if is_top_level_entry(line2):
                break

            # ------------------------------------------------
            # attribute 不算 main value
            # ------------------------------------------------

            if is_attribute(line2):
                break

            if not is_continuation(line2):
                break

            first_value_line = j
            first_indent = indentation(line2)

            break

        # ----------------------------------------------------
        # foo =
        #     .label = Hello
        #
        # 沒有 main value
        # ----------------------------------------------------

        if first_value_line is None:

            entries[key] = Entry(
                key=key,
                value_start=None,
                value_end=None,
                continuation_indent="",
                multiline=False,
            )

            continue

        # ----------------------------------------------------
        # 第一個 continuation line
        # ----------------------------------------------------

        value_start = (
            offsets[first_value_line]
            + len(first_indent)
        )

        # ----------------------------------------------------
        # 計算第一行 brace depth
        # ----------------------------------------------------

        first_content = content_of(
            lines[first_value_line]
        )

        first_value_text = first_content[
            len(first_indent):
        ]

        brace_depth = update_brace_depth(
            first_value_text,
            0,
        )

        last_value_line = first_value_line

        j = first_value_line + 1

        while j < len(lines):

            line2 = lines[j]

            if brace_depth == 0:

                if is_blank(line2):
                    break

                if is_comment(line2):
                    break

                if is_top_level_entry(line2):
                    break

                if is_attribute(line2):
                    break

                if not is_continuation(line2):
                    break

            # ------------------------------------------------
            # 還在目前 value
            # ------------------------------------------------

            last_value_line = j

            brace_depth = update_brace_depth(
                content_of(line2),
                brace_depth,
            )

            j += 1

        last_content = content_of(
            lines[last_value_line]
        )

        value_end = (
            offsets[last_value_line]
            + len(last_content)
        )

        entries[key] = Entry(
            key=key,
            value_start=value_start,
            value_end=value_end,
            continuation_indent=first_indent,
            multiline=True,
        )

    return entries


# ============================================================
# Extract raw value
# ============================================================

def extract_value(
    text: str,
    entry: Entry,
) -> str | None:
    """
    從 merged FTL 取得 value。

    不使用 Fluent parser。
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

    if raw == "":
        return None

    # --------------------------------------------------------
    # 單行 value
    # --------------------------------------------------------

    if not entry.multiline:
        return raw

    # --------------------------------------------------------
    # multiline value
    #
    # 這裡不能把每一行的 indentation 都重新整理。
    #
    # 只移除第一層 continuation indentation。
    # --------------------------------------------------------

    lines = raw.splitlines()

    if not lines:
        return None

    indent = entry.continuation_indent

    result: list[str] = []

    for line in lines:

        if indent and line.startswith(indent):
            result.append(
                line[len(indent):]
            )
        else:
            result.append(line)

    return "\n".join(result)


# ============================================================
# 將翻譯放回原始 FTL
# ============================================================

def format_translation(
    translated: str,
    original_entry: Entry,
) -> str:
    """
    將翻譯 value 套回原始格式。

    不使用 Fluent serializer。

    --------------------------------------------------------
    單行：
        foo = Hello

    翻譯：
        你好

    結果：
        foo = 你好

    --------------------------------------------------------
    block：
        foo =
            Hello
            World

    翻譯：
        你好
        世界

    結果：
        foo =
            你好
            世界
    """

    translated = translated.replace(
        "\r\n",
        "\n",
    ).replace(
        "\r",
        "\n",
    )

    # --------------------------------------------------------
    # 原始是單行
    # --------------------------------------------------------

    if not original_entry.multiline:
        return translated

    lines = translated.split("\n")

    if not lines:
        return ""

    indent = original_entry.continuation_indent

    result: list[str] = []

    for line in lines:

        if line == "":
            result.append("")
        else:
            result.append(
                indent + line
            )

    return "\n".join(result)


# ============================================================
# 載入翻譯
# ============================================================

def load_translations(
    merged_file: Path,
) -> dict[str, str]:

    text = read_text(
        merged_file
    )

    entries = scan_entries(
        text
    )

    translations: dict[str, str] = {}

    for key, entry in entries.items():

        value = extract_value(
            text,
            entry,
        )

        if value is None:
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
    將翻譯套回原始 FTL。

    最重要的設計：

        只修改 value_start:value_end

    其他任何 byte 都不碰。
    """

    entries = scan_entries(
        original_text
    )

    replacements = []

    missing_original: list[str] = []
    missing_translation: list[str] = []
    no_value: list[str] = []

    for key in keys:

        original_entry = entries.get(key)

        if original_entry is None:

            missing_original.append(key)

            continue

        translated = translations.get(key)

        if translated is None:

            missing_translation.append(key)

            continue

        if (
            original_entry.value_start is None
            or original_entry.value_end is None
        ):

            no_value.append(key)

            continue

        original_value = original_text[
            original_entry.value_start:
            original_entry.value_end
        ]

        new_value = format_translation(
            translated,
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
    # 從後面往前替換
    #
    # 這樣前面的 offset 不會被後面的修改影響。
    # --------------------------------------------------------

    replacements.sort(
        key=lambda x: x[0],
        reverse=True,
    )

    result = original_text

    updated = 0

    for start, end, replacement in replacements:

        old = result[start:end]

        if old == replacement:
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
        no_value,
    )


# ============================================================
# Manifest
# ============================================================

def load_manifest(
    manifest_file: Path,
):
    manifest = json.loads(
        read_text(
            manifest_file
        )
    )

    if not isinstance(manifest, dict):
        raise RuntimeError(
            "manifest.json 格式錯誤："
            "預期為 JSON object"
        )

    return manifest


# ============================================================
# Split
# ============================================================

def split_ftl(
    original_dir: Path,
    merged_file: Path,
    manifest_file: Path,
):

    manifest = load_manifest(
        manifest_file
    )

    translations = load_translations(
        merged_file
    )

    keys_by_file = defaultdict(list)

    for key, relative_file in manifest.items():

        keys_by_file[
            relative_file
        ].append(key)

    total_updated = 0
    total_missing_original = 0
    total_missing_translation = 0
    total_no_value = 0

    # ========================================================
    # 每一個原始 FTL
    # ========================================================

    for relative_file, keys in sorted(
        keys_by_file.items()
    ):

        file_path = (
            original_dir
            / relative_file
        )

        if not file_path.exists():

            print(
                f"[錯誤] 找不到原始檔案："
                f"{relative_file}"
            )

            continue

        print(
            f"處理：{relative_file}"
        )

        original_text = read_text(
            file_path
        )

        (
            new_text,
            updated,
            missing_original,
            missing_translation,
            no_value,
        ) = apply_translations(
            original_text,
            translations,
            keys,
        )

        # ----------------------------------------------------
        # 只有真的變更才寫檔
        # ----------------------------------------------------

        if new_text != original_text:

            write_text(
                file_path,
                new_text,
            )

        print(
            f"  更新 {updated} 個 key"
        )

        for key in missing_original:

            print(
                f"  [警告] 原始檔案找不到 key："
                f"{key}"
            )

        for key in missing_translation:

            print(
                f"  [警告] 合併檔案找不到翻譯："
                f"{key}"
            )

        for key in no_value:

            print(
                f"  [略過] key 沒有 main value："
                f"{key}"
            )

        total_updated += updated

        total_missing_original += len(
            missing_original
        )

        total_missing_translation += len(
            missing_translation
        )

        total_no_value += len(
            no_value
        )

    # ========================================================
    # 結果
    # ========================================================

    print()
    print("完成！")
    print(
        f"更新 key：{total_updated}"
    )
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
        f"{total_no_value}"
    )


# ============================================================
# CLI
# ============================================================

def main():

    parser = argparse.ArgumentParser(
        description=(
            "依 key 將合併後的 FTL 翻譯"
            "填回原始 FTL。"
            "純文字處理，不使用 Fluent serializer。"
        )
    )

    parser.add_argument(
        "original_dir",
        type=Path,
        help="原始 FTL 資料夾",
    )

    parser.add_argument(
        "merged_file",
        type=Path,
        help="翻譯後的合併 FTL",
    )

    parser.add_argument(
        "manifest_file",
        type=Path,
        help="manifest.json",
    )

    args = parser.parse_args()

    split_ftl(
        args.original_dir,
        args.merged_file,
        args.manifest_file,
    )


if __name__ == "__main__":
    main()
