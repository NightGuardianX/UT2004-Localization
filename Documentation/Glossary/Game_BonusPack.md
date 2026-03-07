# Bonus packs glossary

## Entity Glossary Rules (BonusPack)

- **Sources:** Names and descriptions of bonus content that ships outside the original retail game but is officially supported (e.g. bonus map packs, Editor's Choice content, additional mutators, models, or gametypes). Strings come from the corresponding bonus `.int` files in `/int/` (and subfolders, if any). Current Russian: matching `.rut` files in `/rut/`. Old Russian: matching `.rut` files in `/rut_old/`.
- **Structure / categories:** Sections are grouped by content type: bonus packs as products (pack names and descriptions), bonus gametypes, bonus mutators, bonus models/characters, and any other clearly bonus-only features. Within each section, rows are ordered by technical key.
- **Exclusions:** Individual maps, weapons, pickups, vehicles, or UI strings that already belong to other entities (`Game_Maps`, `Game_Weapons`, `Game_Pickups`, `Game_Vehicles`, `UI_`*, etc.) are not duplicated here. This entity only contains names and descriptions that specifically refer to the **bonus content itself** (e.g. pack titles, bonus-only gametypes, bonus-only mutators), not their per-item details.
- **Table format:** Standard glossary format: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: Bonus content `.int` files in `/int/` that define additional packs, gametypes, mutators, or models.
Current Russian: `/rut/*.rut` (same basenames as the bonus sources).
Old Russian: `/rut_old/*.rut` (same basenames as the bonus sources).

Format (Markdown table):


| Technical name   | English name    | Current Russian | Old Russian        |
| ---------------- | --------------- | --------------- | ------------------ |
| *(TechnicalKey)* | (English label) | -               | (Old Russian or -) |


If no translation: `-`.

Notes:

- When filling this glossary, double‑check that a string truly belongs to bonus content and is not part of the base game (to avoid duplication with other entities).
- If a bonus feature (e.g. a gametype) already has a detailed entry in another entity, this file should only contain the high‑level name/description that markets or groups that feature as part of the bonus pack.

---

## Bonus packs (titles and descriptions)


| Technical name | .rut file     | English name | Current Russian | Old Russian |
| -------------- | ------------- | ------------ | --------------- | ----------- |
| XPBonusPack    | BonusPack.rut | XP Bonus Pack (ONSBonusMapPack) | - | - |
| ECEBonusPack   | BonusPack.rut | Editor's Choice Edition Bonus Pack | - | - |
| MegaBonusPack  | BonusPack.rut | Mega Bonus Pack (BP2)           | - | - |

```text
Bonus packs

- XP Bonus Pack: Includes two new maps: ONS-Aridoom and ONS-Ascendancy.
- ECE Bonus Pack: Includes six new characters (Barktooth, Karag, Kragoth, Mekkor, Skrilax and Thannis), three new vehicles (Cicada, Paladin and SPMA) with a vehicle replacement mutator (Bonus Vehicles), four new maps: ONS-Adara, ONS-IslandHop, ONS-Tricky and ONS-Urban.
- Mega Bonus Pack: Includes nine new maps: AS-BP2-Acatana, AS-BP2-JumpShip, AS-BP2-Outback, AS-BP2-SubRosa, AS-BP2-Thrust, CTF-BP2-Concentrate, CTF-BP2-Pistola, DM-BP2-Calandras and DM-BP2-GoopGod.
```

## Bonus gametypes


> Bonus gametypes are documented in [`Game_Modes.md`](Game_Modes.md) (see the **Other** section).

## Bonus mutators


> Bonus mutators are documented in [`Game_Mutators.md`](Game_Mutators.md) (see the **Bonus pack mutators** subsection).

## Bonus vehicles


> Bonus vehicles are documented in [`Game_Vehicles.md`](Game_Vehicles.md) (see the **Bonus pack vehicles** section).

## Bonus maps


> Bonus maps are documented in [`Game_Maps.md`](Game_Maps.md) (see the **Bonus pack ... maps** subsections).

## Bonus models / characters


> Bonus characters are documented in [`Lore_Characters.md`](Lore_Characters.md) (see the **Bonus pack characters** section).

