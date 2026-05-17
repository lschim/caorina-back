"""
Reconstruit drugs_parsed.json depuis plusieurs batch IDs Anthropic.

Usage:
    python3 rebuild_parsed.py <batch_id_1> [batch_id_2] [batch_id_3] ...

Fetche tous les batchs, fusionne, normalise les noms, déduplique,
et écrit drugs_parsed.json.
"""

import anthropic
import json
import re
import sys
from collections import OrderedDict

client = anthropic.Anthropic()


def norm(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip().lower())


def fix_name(name: str, chunk_by_norm: dict) -> str | None:
    n = norm(name)
    if n in chunk_by_norm:
        return chunk_by_norm[n]
    base = re.sub(r"\s*\([^)]*\)\s*$", "", name).strip()
    if norm(base) in chunk_by_norm:
        return chunk_by_norm[norm(base)]
    base2 = re.sub(r"^\([^)]*\)\s*", "", name).strip()
    if norm(base2) in chunk_by_norm:
        return chunk_by_norm[norm(base2)]
    parts = name.split()
    for i in range(len(parts) - 1, 1, -1):
        shorter = " ".join(parts[:i])
        if norm(shorter) in chunk_by_norm:
            return chunk_by_norm[norm(shorter)]
    return None


def fetch_batch(batch_id: str) -> tuple[list[dict], list[dict]]:
    print(f"Fetching {batch_id}...")
    batch = client.messages.batches.retrieve(batch_id)
    print(f"  Status: {batch.processing_status} — succeeded={batch.request_counts.succeeded}, errored={batch.request_counts.errored}")

    if batch.processing_status != "ended":
        print("  Batch not finished yet, skipping.")
        return [], []

    results, errors = [], []
    for result in client.messages.batches.results(batch_id):
        if result.result.type == "succeeded":
            raw_json = result.result.message.content[0].text.strip()
            if raw_json.startswith("```"):
                raw_json = raw_json.split("\n", 1)[1]
                raw_json = raw_json.rsplit("```", 1)[0].strip()
            try:
                parsed = json.loads(raw_json)
                # Flatten if model returned a list
                if isinstance(parsed, list):
                    results.extend(x for x in parsed if isinstance(x, dict))
                elif isinstance(parsed, dict):
                    results.append(parsed)
            except json.JSONDecodeError as e:
                errors.append({"id": result.custom_id, "error": str(e)})
        else:
            errors.append({"id": result.custom_id, "error": result.result.type})

    print(f"  Got {len(results)} drugs, {len(errors)} errors")
    return results, errors


def main(batch_ids: list[str]) -> None:
    with open("drugs_chunks.json", encoding="utf-8") as f:
        chunks = json.load(f)
    chunk_by_norm = {norm(c["pinyin"]): c["pinyin"] for c in chunks}

    # Fetch all batches
    all_drugs = []
    all_errors = []
    for bid in batch_ids:
        drugs, errors = fetch_batch(bid)
        all_drugs.extend(drugs)
        all_errors.extend(errors)

    print(f"\nTotal brut : {len(all_drugs)} drugs")

    # Fix names
    fixed = 0
    for d in all_drugs:
        name = d.get("chineseName", "")
        if norm(name) not in chunk_by_norm:
            canonical = fix_name(name, chunk_by_norm)
            if canonical:
                d["chineseName"] = canonical
                fixed += 1

    # Deduplicate (keep first occurrence)
    seen: OrderedDict = OrderedDict()
    for d in all_drugs:
        key = norm(d.get("chineseName", ""))
        if key and key not in seen:
            seen[key] = d

    deduped = list(seen.values())

    # Report missing
    parsed_names = set(seen.keys())
    missing = sorted(n for n in chunk_by_norm if n not in parsed_names)

    print(f"{fixed} noms corrigés")
    print(f"Après dédup : {len(deduped)} drogues uniques")
    print(f"Manquantes  : {len(missing)}")
    if missing:
        for m in missing:
            print(f"  {m}")

    with open("drugs_parsed.json", "w", encoding="utf-8") as f:
        json.dump(deduped, f, ensure_ascii=False, indent=2)

    print(f"\nEcrit : drugs_parsed.json ({len(deduped)} drogues)")
    if all_errors:
        print(f"\n{len(all_errors)} erreurs de batch (drogues non parsées) :")
        for e in all_errors[:10]:
            print(f"  {e}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    main(sys.argv[1:])
