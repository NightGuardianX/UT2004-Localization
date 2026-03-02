# Game monsters glossary

## Entity Glossary Rules (Game_Monsters)

These rules apply only to the `Game_Monsters` entity and override the general Glossary Rules where they differ.

- **Sources:** Monster / enemy names and related configuration strings from `.int` files:
  - `GUI2K4.int` (`[UT2K4InvasionWaveConfig]` → `WaveMonsters[x].mName`),
  - plus other gameplay `.int` files that refer to monsters as units (e.g. Invasion game settings in `XGame.int`, monster packages such as `SkaarjPack.int`, etc.).
  Current Russian: matching `.rut` files in `/rut/`. Old Russian: matching `.rut_old/`.
- **Structure / categories:** 
  - Base monster list (canonical names used by Invasion configuration).
  - Optional subsections for variants / special enemies if needed (e.g. fire/ice variants).
- **Scope:** Non‑player hostile pawns / monsters (Invasion enemies, Skaarj units, etc.). This entity does **not** cover:
  - playable characters and teams (see `Lore_Characters`, `Lore_Teams`),
  - vehicles, weapons, pickups (see `Game_Vehicles`, `Game_Weapons`, `Game_Pickups`),
  - generic “monster” text that is part of long story bios.
- **Table format:** Standard 4‑column glossary tables:  
  Technical name | English name | Current Russian | Old Russian.  
  If no translation, use `-`.

---

Source: `GUI2K4.int` (`[UT2K4InvasionWaveConfig]`), `XGame.int`, `SkaarjPack.int` and other monster‑related `.int` files.

Current Russian: `/rut`.

Old Russian: `/rut_old`.

Format (Markdown table):

| Technical name   | English name   | Current Russian | Old Russian        |
| ---------------- | -------------- | --------------- | ------------------ |
| *(TechnicalKey)* | (English label)| -               | (Old Russian or -) |

If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Use a consistent Russian term for the same monster across all entities and tables (e.g. `Pupae` should always map to the same Russian name).

---

## Base Invasion monsters (`[UT2K4InvasionWaveConfig]`)

| Technical name          | English name | Current Russian | Old Russian              |
| ----------------------- | ------------| ----------------| ------------------------ |
| WaveMonsters.Pupae      | Pupae       | Личинка         | Куколка                  |
| WaveMonsters.RazorFly   | Razor Fly   | Бритвомуха      | Бреющий полет            |
| WaveMonsters.Manta      | Manta       | Манта           | Манта                    |
| WaveMonsters.Krall      | Krall       | Кралл           | Кралль                   |
| WaveMonsters.EliteKrall | Elite Krall | Элитный Кралл   | Элитный Кралль           |
| WaveMonsters.Gasbag     | Gasbag      | Гэзбэг          | Болтун                   |
| WaveMonsters.Brute      | Brute       | Брут            | Грубиян                  |
| WaveMonsters.Skaarj     | Skaarj      | Скаардж         | Скаардж                  |
| WaveMonsters.Behemoth   | Behemoth    | Бегемот         | Бегемот                  |
| WaveMonsters.IceSkaarj  | Ice Skaarj  | Ледяной Скаардж | Ледяной Скаардж          |
| WaveMonsters.FireSkaarj | Fire Skaarj | Огненный Скаардж| Огненный Скаардж         |
| WaveMonsters.Warlord    | Warlord     | Военачальник    | Военачальник / Повелитель|

<!--
Add more sections and rows as needed. Keep column order and meaning the same across all tables.
When expanding beyond Invasion, new categories might include:

## Other monsters and elites

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|------------
*(Package.ClassName)*    | (Display name)     | -               | -
-->

