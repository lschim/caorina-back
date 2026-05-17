"""
Parses drug chunks via the Anthropic Batch API.

Usage:
    python3 parse_drugs.py                              # submit full batch
    python3 parse_drugs.py --fetch <batch_id>           # fetch results once done
    python3 parse_drugs.py --wait  <batch_id>           # poll until done, then fetch
    python3 parse_drugs.py --batch <chunks.json>        # submit a custom chunks file
    python3 parse_drugs.py --merge <batch_id>           # fetch and MERGE into existing drugs_parsed.json

Input:  drugs_chunks.json  (or custom file with --batch)
Output: drugs_parsed.json
"""

import anthropic
import json
import sys
import time

client = anthropic.Anthropic()

SYSTEM_PROMPT = """Tu es un expert en pharmacopée de médecine traditionnelle chinoise.
Tu extrais des données structurées depuis des fiches de drogues TCM rédigées en français.

Retourne UNIQUEMENT un objet JSON valide, sans markdown, sans commentaire, en respectant exactement ce schéma :

{
  "chineseName": "string — nom en pinyin (ex: Ma huang)",
  "chineseCharacters": "string ou null — caractères chinois (ex: 麻黃)",
  "latinName": "string ou null — nom latin complet",
  "frenchName": "string ou null — nom français (ex: Éphèdre)",
  "nature": "une valeur parmi : HOT, WARM, NEUTRAL, COOL, COLD — ou null",
  "flavors": ["liste de valeurs parmi : SOUR, BITTER, SWEET, PUNGENT, SALTY, BLAND, AROMATIC"],
  "tropism": ["liste de valeurs parmi : LIVER, GALLBLADDER, HEART, SMALL_INTESTINE, SPLEEN, STOMACH, LUNGS, LARGE_INTESTINE, KIDNEYS, BLADDER, PERICARDIUM, TRIPLE_BURNER"],
  "movements": ["liste de valeurs parmi : ASCENDING, DESCENDING, OUTWARD, INWARD"],
  "dosage": "string ou null",
  "contraindications": ["liste de strings"],
  "effects": ["liste des titres d'action UNIQUEMENT, sans les références aux formules"],
  "additionalNotes": "string ou null — informations sur les variantes de préparation, les formes dérivées (annexes), etc.",
  "associations": [
    {
      "associatedDrugPinyin": "string — nom pinyin de l'autre drogue",
      "effects": ["description de l'interaction en une ou quelques phrases"]
    }
  ]
}

Correspondances français → enum :
- Nature : chaud/très chaud → HOT | tiède/légèrement tiède → WARM | neutre → NEUTRAL | frais/légèrement frais → COOL | froid/très froid/légèrement froid → COLD
- Saveurs : piquante/piquant → PUNGENT | amère/amer → BITTER | douce/doux → SWEET | acide → SOUR | salée → SALTY | fade → BLAND | aromatique → AROMATIC
- Tropisme : Poumon → LUNGS | Foie → LIVER | Cœur → HEART | Rate → SPLEEN | Estomac → STOMACH | Reins/Rein → KIDNEYS | Gros Intestin → LARGE_INTESTINE | Intestin grêle → SMALL_INTESTINE | Vessie → BLADDER | Vésicule biliaire → GALLBLADDER | Péricarde → PERICARDIUM | Triple Foyer/Trois foyers/San Jiao → TRIPLE_BURNER
- Mouvements : ascendant → ASCENDING | descendant → DESCENDING | émergent → OUTWARD | immergent → INWARD

Règles importantes :
- Si la drogue n'a pas de slide de propriétés (seulement un titre), retourne les champs connus et null pour le reste
- La section "annexe" va dans additionalNotes
- Pour les effets, ne prendre QUE le titre de chaque bullet (pas les sous-points avec les formules)
- Si la nature mentionne "toxique" en plus de la nature, l'ignorer pour l'enum, et le mettre dans additionalNotes si pertinent
- Les associations : une entrée par partenaire listé dans la section "associations"
"""


def make_request(chunk: dict) -> dict:
    return {
        "custom_id": chunk["pinyin"].replace(" ", "_").replace("'", ""),
        "params": {
            "model": "claude-sonnet-4-6",
            "max_tokens": 4096,
            "system": [
                {
                    "type": "text",
                    "text": SYSTEM_PROMPT,
                    "cache_control": {"type": "ephemeral"},
                }
            ],
            "messages": [
                {
                    "role": "user",
                    "content": f"Catégorie : {chunk['category']}\n\n{chunk['raw']}",
                }
            ],
        },
    }


def submit_batch(chunks_path: str, limit: int | None = None) -> str:
    with open(chunks_path, encoding="utf-8") as f:
        chunks = json.load(f)

    if limit:
        chunks = chunks[:limit]

    print(f"Submitting batch for {len(chunks)} drugs...")
    requests = [make_request(c) for c in chunks]

    batch = client.messages.batches.create(requests=requests)
    print(f"Batch submitted: {batch.id}")
    print(f"Status: {batch.processing_status}")
    return batch.id


def fetch_results(batch_id: str, output_path: str) -> None:
    batch = client.messages.batches.retrieve(batch_id)
    print(f"Batch {batch_id} — status: {batch.processing_status}")

    if batch.processing_status != "ended":
        print("Batch not finished yet. Run with --wait to poll.")
        return

    results = []
    errors = []

    for result in client.messages.batches.results(batch_id):
        if result.result.type == "succeeded":
            raw_json = result.result.message.content[0].text.strip()
            # Strip markdown code fences if present
            if raw_json.startswith("```"):
                raw_json = raw_json.split("\n", 1)[1]
                raw_json = raw_json.rsplit("```", 1)[0].strip()
            try:
                parsed = json.loads(raw_json)
                results.append(parsed)
            except json.JSONDecodeError as e:
                errors.append({"id": result.custom_id, "error": str(e), "raw": raw_json})
        else:
            errors.append({"id": result.custom_id, "error": result.result.type})

    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)

    print(f"\nDone: {len(results)} parsed, {len(errors)} errors")
    if errors:
        print("Errors:")
        for e in errors:
            print(f"  {e}")
    print(f"Results written to {output_path}")


def wait_and_fetch(batch_id: str, output_path: str) -> None:
    print(f"Polling batch {batch_id}...")
    while True:
        batch = client.messages.batches.retrieve(batch_id)
        counts = batch.request_counts
        print(
            f"  {batch.processing_status} — "
            f"processing: {counts.processing}, "
            f"succeeded: {counts.succeeded}, "
            f"errored: {counts.errored}"
        )
        if batch.processing_status == "ended":
            break
        time.sleep(30)

    fetch_results(batch_id, output_path)


def merge_results(batch_id: str, output_path: str) -> None:
    """Fetch batch results and merge into an existing output file."""
    existing = []
    try:
        with open(output_path, encoding="utf-8") as f:
            existing = json.load(f)
        if not isinstance(existing, list):
            existing = []
    except (FileNotFoundError, json.JSONDecodeError):
        pass

    batch = client.messages.batches.retrieve(batch_id)
    if batch.processing_status != "ended":
        print("Batch not finished yet. Run with --wait to poll.")
        return

    new_results = []
    errors = []
    for result in client.messages.batches.results(batch_id):
        if result.result.type == "succeeded":
            raw_json = result.result.message.content[0].text.strip()
            if raw_json.startswith("```"):
                raw_json = raw_json.split("\n", 1)[1]
                raw_json = raw_json.rsplit("```", 1)[0].strip()
            try:
                parsed = json.loads(raw_json)
                new_results.append(parsed)
            except json.JSONDecodeError as e:
                errors.append({"id": result.custom_id, "error": str(e), "raw": raw_json})
        else:
            errors.append({"id": result.custom_id, "error": result.result.type})

    merged = existing + new_results
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(merged, f, ensure_ascii=False, indent=2)

    print(f"\nMerged: {len(new_results)} new + {len(existing)} existing = {len(merged)} total")
    if errors:
        print("Errors:")
        for e in errors:
            print(f"  {e}")
    print(f"Results written to {output_path}")


if __name__ == "__main__":
    args = sys.argv[1:]

    if not args:
        batch_id = submit_batch("drugs_chunks.json")
        print(f"\nRun when done:\n  python3 parse_drugs.py --wait {batch_id}")
    elif args[0] == "--fetch" and len(args) == 2:
        fetch_results(args[1], "drugs_parsed.json")
    elif args[0] == "--wait" and len(args) == 2:
        wait_and_fetch(args[1], "drugs_parsed.json")
    elif args[0] == "--batch" and len(args) == 2:
        batch_id = submit_batch(args[1])
        print(f"\nRun when done:\n  python3 parse_drugs.py --merge {batch_id}")
    elif args[0] == "--merge" and len(args) == 2:
        merge_results(args[1], "drugs_parsed.json")
    else:
        print(__doc__)
