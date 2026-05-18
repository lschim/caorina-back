"""
Generate V12__fix_alias_associations.sql

Inserts associations that were silently dropped during import because the
partner drug was referenced by an alias or short form not matching the DB name.

Sources:
- Structured association slides in drugs_chunks.json (• Alias : effect)
- Clear narrative associations (– Avec Alias, pour ...)

All inserts are idempotent via the JOIN + WHERE NOT EXISTS pattern.
"""

import pathlib
import re

MIGRATIONS_DIR = pathlib.Path("../src/main/resources/db/migration")


def q(s: str) -> str:
    return "'" + str(s).replace("'", "''") + "'"


# (source_drug, canonical_partner, effect_text)
ASSOCS = [
    # ── Alias: Zhi gan cao → Gan cao ─────────────────────────────────────────
    ("Ren shen",    "Gan cao",
     "Tonifient le Qi, engendrent les Liquides, tonifient la Rate et le Cœur."),
    ("Gui zhi",     "Gan cao",
     "Dans Zhi gan cao tang, réchauffent le Yang de la poitrine et traitent les palpitations."),

    # ── Alias: Han fang ji → Fang ji ─────────────────────────────────────────
    ("Huang qi",    "Fang ji",
     "Régularisent les mouvements de montée et de descente et favorisent la diurèse."),

    # ── Alias: Sheng di → Sheng di huang ─────────────────────────────────────
    ("Xi xin",      "Sheng di huang",
     "Xi xin guide Sheng di huang vers le Foyer Supérieur pour clarifier la Chaleur. "
     "Ils dispersent aussi le Vent et arrêtent la douleur."),
    ("Shi gao",     "Sheng di huang",
     "Clarifient la Chaleur dans la couche du Qi et dans la couche du Sang."),
    ("Qing pi",     "Sheng di huang",
     "Préviennent la formation de sang mort en traumatologie."),
    ("Bai shao",    "Sheng di huang",
     "Nourrissent le Yin et le Sang, clarifient la Chaleur Vide et calment le Yang du Foie."),
    ("E jiao",      "Sheng di huang",
     "Nourrissent le Yin, clarifient la Chaleur, arrêtent les saignements."),
    ("Bai he",      "Sheng di huang",
     "Clarifient le Cœur et nourrissent le yin, humidifient la Sécheresse et calment l'Esprit."),

    # ── Alias: Shu di → Shu di huang ─────────────────────────────────────────
    ("Sha ren",     "Shu di huang",
     "Nourrissent le Sang, le Jing et le Yin sans générer de Stagnation de Qi ou de perte d'appétit."),
    ("Ze xie",      "Shu di huang",
     "Tonifient sans faire stagner, drainent sans blesser le Qi correct, tonifient les Reins "
     "et drainent l'Humidité."),
    ("Dang gui",    "Shu di huang",
     "Nourrissent le Sang du Foie et le yin du Foie et des Reins."),
    ("Gou qi zi",   "Shu di huang",
     "Nourrissent le yin du Foie et des Reins et le Sang du Foie."),

    # ── Alias: Fu shen → Fu ling ──────────────────────────────────────────────
    ("Chan tui",    "Fu ling",
     "Avec Fu shen, Long chi, Jiang can pour les terreurs nocturnes avec spasmes."),

    # ── Alias: Bai ji li → Ci ji li ──────────────────────────────────────────
    ("Mi meng hua", "Ci ji li",
     "Traitent les taies cornéennes avec congestion du Feu du Foie."),

    # ── Alias: Lu jiao jiao → Lu jiao ────────────────────────────────────────
    ("Sang piao xiao", "Lu jiao",
     "Pour l'impuissance par vide de Yang des Reins."),

    # ── Alias: Fu ling pi → Fu ling ──────────────────────────────────────────
    ("Lu lu tong",  "Fu ling",
     "Traitent les œdèmes avec blocage urinaire."),

    # ── Alias: Lu jiao shuang → Lu jiao ──────────────────────────────────────
    # (Suo yang is absent from DB — skipped)

    # ── Alias: Sheng jiang pi → Sheng jiang ──────────────────────────────────
    # (Wu jia pi is absent from DB — skipped)

    # ── Alias: He tao ren → Hu tao ren ───────────────────────────────────────
    ("Bu gu zhi",   "Hu tao ren",
     "Réchauffent le Poumon, favorisent la réception du Qi par les Reins, "
     "arrêtent la toux et traitent l'asthme."),

    # ── Alias: Hong zao → Da zao ─────────────────────────────────────────────
    ("Xian he cao", "Da zao",
     "Tonifient les vides, traitent les blessures de fatigue."),

    # ── Alias: Xia ku cai → Xia ku cao ───────────────────────────────────────
    ("Yue ji hua",  "Xia ku cao",
     "Réduisent les œdèmes et résolvent la toxicité pour les gonflements infectieux "
     "et adénopathies."),

    # ── Alias: Hai piao xiao → Wu zei gu ─────────────────────────────────────
    ("Bai zhi",     "Wu zei gu",
     "Traitent les leucorrhées."),
    ("Mu li",       "Wu zei gu",
     "Neutralisent l'acidité gastrique et arrêtent la douleur."),
    ("Shan yao",    "Wu zei gu",
     "Dans Qing dai tang, avec Wu zei gu, Long gu, Mu li pour arrêter les saignements."),

    # ── Alias: Gui jia → Gui ban ─────────────────────────────────────────────
    # (Wu jia pi is absent from DB — skipped)

    # ── Alias: Gua lou ren → Gua lou ─────────────────────────────────────────
    ("Jue ming zi", "Gua lou",
     "Lubrifient les intestins et débloquent les selles."),
    ("Qing dai",    "Gua lou",
     "Traitent la révolte du Foie sur le Poumon avec mucosités striées de sang."),
]


lines = [
    "-- V12: fix associations dropped due to alias partner names",
    "-- Generated by generate_v12.py",
    "-- All inserts idempotent via JOIN + WHERE NOT EXISTS pattern",
    "",
]

prev_comment = None
for source, partner, effect in ASSOCS:
    lines.append(
        f"INSERT INTO drug_association (drug_id, associated_drug_id)"
        f" SELECT d.id, p.id"
        f" FROM drugs d JOIN drugs p ON p.chinese_name = {q(partner)}"
        f" WHERE d.chinese_name = {q(source)}"
        f"   AND NOT EXISTS ("
        f"SELECT 1 FROM drug_association"
        f" WHERE drug_id = d.id AND associated_drug_id = p.id);"
    )
    lines.append(
        f"INSERT INTO drug_association_effects (association_id, effect)"
        f" SELECT da.id, {q(effect)}"
        f" FROM drug_association da"
        f" JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = {q(source)}"
        f" JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = {q(partner)}"
        f" WHERE NOT EXISTS ("
        f"SELECT 1 FROM drug_association_effects"
        f" WHERE association_id = da.id AND effect = {q(effect)});"
    )
    lines.append("")

MIGRATIONS_DIR.mkdir(parents=True, exist_ok=True)
out = MIGRATIONS_DIR / "V12__fix_alias_associations.sql"
out.write_text("\n".join(lines) + "\n", encoding="utf-8")
print(f"Written: {out}")
print(f"  {len(ASSOCS)} associations")
print()
print("Summary by alias:")
alias_groups = {}
for source, partner, _ in ASSOCS:
    alias_groups.setdefault(partner, []).append(source)
for partner, sources in sorted(alias_groups.items()):
    print(f"  -> {partner}: {sources}")
