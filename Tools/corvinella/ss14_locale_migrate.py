#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Using:
python3 ss14_locale_migrate.py \
    --reference /path/to/source/Resources/Locale/ru-RU \
    --target    /path/to/new_build/Resources/Locale/en-US \
    --output    ./localization_output
"""

from __future__ import annotations

import argparse
import json
import re
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, List, Optional, Tuple


# Data models

@dataclass
class ValueLocation:
    """Position in the file"""
    start_line: int
    end_line: int
    prefix: str
    continuation_indent: str


@dataclass
class FTLMessage:
    key: str
    value: str = ""
    attributes: Dict[str, str] = field(default_factory=dict)
    is_entity: bool = False
    source_file: Optional[str] = None
    source_line: Optional[int] = None
    main_location: Optional[ValueLocation] = None
    attr_locations: Dict[str, ValueLocation] = field(default_factory=dict)

    def all_translatable_units(self) -> List[Tuple[str, str]]:
        units: List[Tuple[str, str]] = []
        if self.is_entity:
            if self.value:
                units.append((self.key, self.value))
            for attr, val in self.attributes.items():
                units.append((f"{self.key}.{attr}", val))
        else:
            units.append((self.key, self.value))
        return units


@dataclass
class FTLFile:
    path: Path
    lines: List[str]
    messages: List[FTLMessage]
    trailing_newline: bool


@dataclass
class UntranslatedEntry:
    key: str
    english: str
    source_file: str
    source_line: Optional[int] = None


# Parser

class FTLParser:
    ENT_RE = re.compile(r"^(ent-[^\s=]+)\s*=\s*(.*)$")
    ATTR_RE = re.compile(r"^\s+\.([a-zA-Z0-9_]+)\s*=\s*(.*)$")
    SIMPLE_RE = re.compile(r"^([^\s#=]+)\s*=\s*(.*)$")

    @staticmethod
    def _detect_indent(line: str) -> Optional[str]:
        stripped = line.lstrip(" \t")
        if stripped == line:
            return None
        return line[: len(line) - len(stripped)]

    def parse_file(self, path: Path) -> FTLFile:
        content = path.read_text(encoding="utf-8-sig")
        trailing_newline = content.endswith("\n")
        if content:
            lines = (content[:-1] if trailing_newline else content).split("\n")
        else:
            lines = []

        messages: List[FTLMessage] = []
        i = 0
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()

            if not stripped or stripped.startswith("#"):
                i += 1
                continue

            # entity
            m_ent = self.ENT_RE.match(line)
            if m_ent:
                key = m_ent.group(1).strip()
                value_start = m_ent.start(2)
                prefix = line[:value_start]
                value_parts = [m_ent.group(2)]
                value_end = i
                cont_indent: Optional[str] = None

                j = i + 1
                while j < len(lines):
                    nxt = lines[j]
                    if not nxt.strip():
                        break
                    if self.ATTR_RE.match(nxt):
                        break
                    ind = self._detect_indent(nxt)
                    if ind is not None:
                        if cont_indent is None:
                            cont_indent = ind
                        value_parts.append(nxt.strip())
                        value_end = j
                        j += 1
                    else:
                        break

                if cont_indent is None:
                    base = self._detect_indent(prefix) or ""
                    cont_indent = base + "    "

                msg = FTLMessage(
                    key=key,
                    value="\n".join(value_parts).rstrip(),
                    is_entity=True,
                    source_file=str(path),
                    source_line=i + 1,
                )
                msg.main_location = ValueLocation(
                    start_line=i, end_line=value_end,
                    prefix=prefix, continuation_indent=cont_indent,
                )

                # attributes
                while j < len(lines):
                    attr_line = lines[j]
                    if not attr_line.strip():
                        break
                    m_attr = self.ATTR_RE.match(attr_line)
                    if not m_attr:
                        break

                    attr_name = m_attr.group(1)
                    attr_value_start = m_attr.start(2)
                    attr_prefix = attr_line[:attr_value_start]
                    attr_parts = [m_attr.group(2)]
                    attr_end = j
                    attr_cont: Optional[str] = None

                    k = j + 1
                    while k < len(lines):
                        nxt = lines[k]
                        if not nxt.strip():
                            break
                        if self.ATTR_RE.match(nxt):
                            break
                        ind = self._detect_indent(nxt)
                        if ind is not None:
                            if attr_cont is None:
                                attr_cont = ind
                            attr_parts.append(nxt.strip())
                            attr_end = k
                            k += 1
                        else:
                            break

                    if attr_cont is None:
                        base = self._detect_indent(attr_prefix) or ""
                        attr_cont = base + "    "

                    msg.attributes[attr_name] = "\n".join(attr_parts).rstrip()
                    msg.attr_locations[attr_name] = ValueLocation(
                        start_line=j, end_line=attr_end,
                        prefix=attr_prefix, continuation_indent=attr_cont,
                    )
                    j = k

                messages.append(msg)
                i = j
                continue

            # key = value
            m_simple = self.SIMPLE_RE.match(line)
            if m_simple:
                key = m_simple.group(1).strip()
                value_start = m_simple.start(2)
                prefix = line[:value_start]
                value_parts = [m_simple.group(2)]
                value_end = i
                cont_indent: Optional[str] = None

                j = i + 1
                while j < len(lines):
                    nxt = lines[j]
                    if not nxt.strip():
                        break
                    if self.ATTR_RE.match(nxt):
                        break
                    ind = self._detect_indent(nxt)
                    if ind is not None:
                        if cont_indent is None:
                            cont_indent = ind
                        value_parts.append(nxt.strip())
                        value_end = j
                        j += 1
                    else:
                        break

                if cont_indent is None:
                    base = self._detect_indent(prefix) or ""
                    cont_indent = base + "    "

                msg = FTLMessage(
                    key=key,
                    value="\n".join(value_parts).rstrip(),
                    is_entity=False,
                    source_file=str(path),
                    source_line=i + 1,
                )
                msg.main_location = ValueLocation(
                    start_line=i, end_line=value_end,
                    prefix=prefix, continuation_indent=cont_indent,
                )
                messages.append(msg)
                i = j
                continue

            i += 1

        return FTLFile(
            path=path, lines=lines, messages=messages,
            trailing_newline=trailing_newline,
        )

    def parse_dir(self, root: Path) -> List[FTLFile]:
        result: List[FTLFile] = []
        for p in sorted(root.rglob("*.ftl")):
            if not p.is_file():
                print(f"[!] Пропуск (не файл): {p}")
                continue
            try:
                result.append(self.parse_file(p))
            except (OSError, UnicodeDecodeError) as e:
                print(f"[!] Ошибка чтения {p}: {e}")
        return result


def all_messages(files: List[FTLFile]) -> List[FTLMessage]:
    return [m for f in files for m in f.messages]


# Meging reference to target

def build_reference_index(ref_messages: List[FTLMessage]) -> Dict[str, str]:
    index: Dict[str, str] = {}
    for msg in ref_messages:
        for full_key, value in msg.all_translatable_units():
            if value:
                index[full_key] = value
    return index


def apply_reference_translation(
    messages: List[FTLMessage],
    reference_index: Dict[str, str],
) -> List[UntranslatedEntry]:
    untranslated: List[UntranslatedEntry] = []

    for msg in messages:
        if msg.is_entity:
            if msg.value:
                ref = reference_index.get(msg.key)
                if ref is not None:
                    msg.value = ref
                else:
                    untranslated.append(UntranslatedEntry(
                        key=msg.key,
                        english=msg.value,
                        source_file=msg.source_file or "",
                        source_line=msg.source_line,
                    ))

            for attr_name, attr_value in list(msg.attributes.items()):
                full_key = f"{msg.key}.{attr_name}"
                ref = reference_index.get(full_key)
                if ref is not None:
                    msg.attributes[attr_name] = ref
                else:
                    loc = msg.attr_locations.get(attr_name)
                    untranslated.append(UntranslatedEntry(
                        key=full_key,
                        english=attr_value,
                        source_file=msg.source_file or "",
                        source_line=(loc.start_line + 1) if loc else msg.source_line,
                    ))
        else:
            ref = reference_index.get(msg.key)
            if ref is not None:
                msg.value = ref
            else:
                untranslated.append(UntranslatedEntry(
                    key=msg.key,
                    english=msg.value,
                    source_file=msg.source_file or "",
                    source_line=msg.source_line,
                ))
    return untranslated


# Saving

def _format_value_lines(loc: ValueLocation, new_value: str) -> List[str]:
    if "\n" in new_value:
        parts = new_value.split("\n")
        result = [loc.prefix + parts[0]]
        for p in parts[1:]:
            result.append(loc.continuation_indent + p.strip())
        return result
    return [loc.prefix + new_value]


def save_structured(
    files: List[FTLFile],
    target_root: Path,
    output_root: Path,
) -> None:
    written = 0
    for ftl_file in files:
        try:
            rel = ftl_file.path.relative_to(target_root)
        except ValueError:
            rel = Path(ftl_file.path.name)

        out_path = output_root / rel
        out_path.parent.mkdir(parents=True, exist_ok=True)

        lines = list(ftl_file.lines)
        replacements: List[Tuple[int, int, List[str]]] = []

        for msg in ftl_file.messages:
            if msg.main_location is not None:
                replacements.append((
                    msg.main_location.start_line,
                    msg.main_location.end_line,
                    _format_value_lines(msg.main_location, msg.value),
                ))
            for attr_name, loc in msg.attr_locations.items():
                new_val = msg.attributes.get(attr_name, "")
                replacements.append((
                    loc.start_line,
                    loc.end_line,
                    _format_value_lines(loc, new_val),
                ))

        replacements.sort(key=lambda r: -r[0])
        for start, end, new_lines in replacements:
            lines[start:end + 1] = new_lines

        content = "\n".join(lines)
        if ftl_file.trailing_newline:
            content += "\n"
        out_path.write_text(content, encoding="utf-8")
        written += 1

    print(f"[+] Сохранено файлов: {written} -> {output_root}")


def save_untranslated(untranslated: List[UntranslatedEntry], output_dir: Path) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)

    json_path = output_dir / "untranslated.json"
    with json_path.open("w", encoding="utf-8") as fh:
        json.dump(
            [
                {
                    "key": u.key,
                    "english": u.english,
                    "source_file": u.source_file,
                    "source_line": u.source_line,
                }
                for u in untranslated
            ],
            fh, ensure_ascii=False, indent=2,
        )

    txt_path = output_dir / "untranslated.txt"
    with txt_path.open("w", encoding="utf-8") as fh:
        for u in untranslated:
            fh.write(f"{u.key}\t{u.english}\n")

    print(f"[+] Непереведённые ключи сохранены: {json_path}, {txt_path}")


def prepare_batches(
    untranslated: List[UntranslatedEntry],
    output_dir: Path,
    batch_size: int = 50,
) -> None:
    batch_dir = output_dir / "batches"
    batch_dir.mkdir(parents=True, exist_ok=True)

    translatable = [
        u for u in untranslated
        if not re.fullmatch(r"\s*\{\s*ent-[^}]+\s*\}\s*", u.english)
    ]
    skipped = len(untranslated) - len(translatable)
    if skipped:
        print(f"[i] Пропущено технических строк-ссылок: {skipped}")

    for i in range(0, len(translatable), batch_size):
        batch = translatable[i:i + batch_size]
        batch_path = batch_dir / f"batch_{i // batch_size + 1:03d}.txt"
        with batch_path.open("w", encoding="utf-8") as fh:
            for u in batch:
                fh.write(f"KEY: {u.key}\n")
                fh.write(f"EN: {u.english}\n")
                fh.write("\n")
        print(f"[+] Батч сохранён: {batch_path}")


# CLI

def main() -> None:
    parser = argparse.ArgumentParser(
        description="Перенос русской локализации Corvax в новый билд SS14 "
                    "(с сохранением структуры файлов)"
    )
    parser.add_argument("--reference", required=True, type=Path,
                        help="Директория с русской локализацией Corvax")
    parser.add_argument("--target", required=True, type=Path,
                        help="Директория с английской локализацией нового билда")
    parser.add_argument("--output", required=True, type=Path,
                        help="Директория для результатов")
    parser.add_argument("--batch-size", type=int, default=50,
                        help="Сколько строк в одном батче (по умолчанию 50)")
    args = parser.parse_args()

    if not args.reference.is_dir():
        raise SystemExit(f"Эталонная директория не найдена: {args.reference}")
    if not args.target.is_dir():
        raise SystemExit(f"Целевая директория не найдена: {args.target}")

    ref_files = FTLParser().parse_dir(args.reference)
    ref_messages = all_messages(ref_files)
    print(f"[i] Эталонных сообщений: {len(ref_messages)}")

    ref_index = build_reference_index(ref_messages)
    print(f"[i] Ключей в эталонном индексе: {len(ref_index)}")

    target_files = FTLParser().parse_dir(args.target)
    target_messages = all_messages(target_files)
    print(f"[i] Сообщений в результате: {len(target_messages)} "
          f"из {len(target_files)} файлов")

    untranslated = apply_reference_translation(target_messages, ref_index)
    print(f"[i] Непереведённых единиц: {len(untranslated)}")

    args.output.mkdir(parents=True, exist_ok=True)
    save_structured(target_files, args.target, args.output / "locale")
    save_untranslated(untranslated, args.output)
    prepare_batches(untranslated, args.output, batch_size=args.batch_size)


if __name__ == "__main__":
    main()
