"""
Splits a pdftotext-extracted TCM pharmacopeia file into per-drug chunks.

Output: drugs_chunks.json
  [
    {
      "category": "Ingrédients piquants et tièdes...",
      "pinyin": "Ma huang",
      "raw": "<full text for this drug, all slides merged>"
    },
    ...
  ]
"""

import json
import re
import sys

HAS_CHINESE = re.compile(r"[一-鿿㐀-䶿]")


def is_pure_pinyin(line: str) -> bool:
    """
    True if the line looks like a TCM drug name in pinyin:
    - Only ASCII letters, spaces, apostrophes, hyphens
    - First word is capitalized (real drug names: 'Ma huang', not 'dispersent le Feu')
    - At least 2 words
    - Between 4 and 40 characters
    """
    stripped = line.strip()
    if not stripped:
        return False
    if not re.match(r"^[A-Z][A-Za-z '\-]+$", stripped):  # must start with uppercase
        return False
    words = stripped.split()
    return len(words) >= 2 and 4 <= len(stripped) <= 40


def extract_pinyin_from_line(line: str) -> str | None:
    """
    Extract pinyin name from a title line.
    Handles "Name" and "Name (alternate names)" formats.
    E.g. "Chen pi (Ju pi, Hong pi)" -> "Chen pi"
         "Bai shao (yao)"           -> "Bai shao"
    Returns the canonical base pinyin name or None.
    """
    stripped = line.strip()
    if is_pure_pinyin(stripped):
        return stripped
    # Strip trailing parenthetical alternate name and retry
    base = re.sub(r"\s*\([^)]*\)\s*$", "", stripped).strip()
    if is_pure_pinyin(base):
        return base
    return None


def is_category_line(line: str) -> bool:
    return "Ingrédients" in line and not line.strip().startswith("•")


def find_category_at(lines: list[str], i: int) -> str:
    """Collect the full category text starting at line i (may wrap to next line)."""
    parts = [lines[i].strip().lstrip("-").strip()]
    for j in range(i + 1, min(i + 4, len(lines))):
        s = lines[j].strip()
        if not s or s.startswith(("•", "-", "(")):
            break
        parts.append(s)
    return " ".join(parts)


def find_drug_title_positions(lines: list[str]) -> list[tuple[int, str]]:
    """
    Returns (line_index, pinyin_name) for each drug title slide.
    Pattern: pure-pinyin line (optionally followed by alternate names in parens)
             → Chinese characters within next 2 lines → Latin name nearby.
    """
    positions = []
    for i, line in enumerate(lines):
        pinyin = extract_pinyin_from_line(line)
        if not pinyin:
            continue
        # Chinese characters must be on one of the next 2 lines (tight window)
        found_chinese = False
        for j in range(i + 1, min(i + 3, len(lines))):
            if HAS_CHINESE.search(lines[j]):
                found_chinese = True
                break
            if lines[j].strip():
                break  # non-empty non-Chinese line → not a title slide
        if not found_chinese:
            continue
        # Latin name in parentheses must appear nearby
        for k in range(i + 1, min(i + 6, len(lines))):
            if lines[k].strip().startswith("("):
                positions.append((i, pinyin))
                break
    return positions


def main(input_path: str, output_path: str) -> None:
    with open(input_path, encoding="utf-8") as f:
        lines = f.readlines()
    lines = [l.rstrip("\n") for l in lines]

    title_positions = find_drug_title_positions(lines)

    # Forward pass: assign each drug its category by tracking the last seen category header
    drug_line_set = {pos for pos, _ in title_positions}
    current_category = "Unknown"
    category_by_drug_line: dict[int, str] = {}

    for i, line in enumerate(lines):
        if is_category_line(line) and i not in drug_line_set:
            current_category = find_category_at(lines, i)
        if i in drug_line_set:
            category_by_drug_line[i] = current_category

    chunks = []
    for idx, (start_line, pinyin) in enumerate(title_positions):
        end_line = (
            title_positions[idx + 1][0] if idx + 1 < len(title_positions) else len(lines)
        )
        raw = "\n".join(lines[start_line:end_line]).strip()
        chunks.append({
            "category": category_by_drug_line.get(start_line, "Unknown"),
            "pinyin": pinyin,
            "raw": raw,
        })

    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(chunks, f, ensure_ascii=False, indent=2)

    print(f"Found {len(chunks)} drug entries")
    print(f"Written to {output_path}\n")
    print("All detected drugs:")
    for c in chunks:
        print(f"  [{c['category'][:55]}]  {c['pinyin']}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 chunk_drugs.py file1.txt [file2.txt ...] [--out output.json]")
        sys.exit(1)

    args = sys.argv[1:]
    output_file = "drugs_chunks.json"
    if "--out" in args:
        idx = args.index("--out")
        output_file = args[idx + 1]
        args = args[:idx] + args[idx + 2:]

    all_chunks: list[dict] = []
    for input_file in args:
        print(f"\n=== Processing {input_file} ===")
        with open(input_file, encoding="utf-8") as f:
            lines = [l.rstrip("\n") for l in f.readlines()]

        title_positions = find_drug_title_positions(lines)
        drug_line_set = {pos for pos, _ in title_positions}
        current_category = "Unknown"
        category_by_drug_line: dict[int, str] = {}

        for i, line in enumerate(lines):
            if is_category_line(line) and i not in drug_line_set:
                current_category = find_category_at(lines, i)
            if i in drug_line_set:
                category_by_drug_line[i] = current_category

        file_chunks = []
        for idx, (start_line, pinyin) in enumerate(title_positions):
            end_line = (
                title_positions[idx + 1][0] if idx + 1 < len(title_positions) else len(lines)
            )
            raw = "\n".join(lines[start_line:end_line]).strip()
            file_chunks.append({
                "source": input_file,
                "category": category_by_drug_line.get(start_line, "Unknown"),
                "pinyin": pinyin,
                "raw": raw,
            })

        print(f"Found {len(file_chunks)} drug entries")
        for c in file_chunks:
            print(f"  [{c['category'][:55]}]  {c['pinyin']}")
        all_chunks.extend(file_chunks)

    with open(output_file, "w", encoding="utf-8") as f:
        json.dump(all_chunks, f, ensure_ascii=False, indent=2)

    print(f"\n=== Total: {len(all_chunks)} drugs across {len(args)} files ===")
    print(f"Written to {output_file}")
