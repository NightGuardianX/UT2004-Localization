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
- **Table format:** Standard 5‑column glossary tables:  
  Technical name | .rut file | English name | Current Russian | Old Russian.  
  If no translation, use `-`.

---

Source: `GUI2K4.int` (`[UT2K4InvasionWaveConfig]`), `XGame.int`, `SkaarjPack.int` and other monster‑related `.int` files.

Current Russian: `/rut`.

Old Russian: `/rut_old`.

Format (Markdown table):

| Technical name   | .rut file   | English name   | Current Russian | Old Russian        |
| ---------------- | ----------- | -------------- | --------------- | ------------------ |
| *(TechnicalKey)* | (*.rut*)    | (English label)| -               | (Old Russian or -) |

If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Use a consistent Russian term for the same monster across all entities and tables (e.g. `Pupae` should always map to the same Russian name).

---

## Base Invasion monsters (`[UT2K4InvasionWaveConfig]`)

| Technical name          | .rut file   | English name | Current Russian | Old Russian              |
| ----------------------- | ----------- | ------------ | ---------------- | ------------------------ |
| WaveMonsters.Pupae      | GUI2K4.rut  | Pupae       | Личинка         | Куколка                  |
| WaveMonsters.RazorFly   | GUI2K4.rut  | Razor Fly   | Бритвомуха      | Бреющий полет            |
| WaveMonsters.Manta      | GUI2K4.rut  | Manta       | Манта           | Манта                    |
| WaveMonsters.Krall      | GUI2K4.rut  | Krall       | Кралл           | Кралль                   |
| WaveMonsters.EliteKrall | GUI2K4.rut  | Elite Krall | Элитный Кралл   | Элитный Кралль           |
| WaveMonsters.Gasbag     | GUI2K4.rut  | Gasbag      | Гэзбэг          | Болтун                   |
| WaveMonsters.Brute      | GUI2K4.rut  | Brute       | Брут            | Грубиян                  |
| WaveMonsters.Skaarj     | GUI2K4.rut  | Skaarj      | Скаардж         | Скаардж                  |
| WaveMonsters.Behemoth   | GUI2K4.rut  | Behemoth    | Бегемот         | Бегемот                  |
| WaveMonsters.IceSkaarj  | GUI2K4.rut  | Ice Skaarj  | Ледяной Скаардж | Ледяной Скаардж          |
| WaveMonsters.FireSkaarj | GUI2K4.rut  | Fire Skaarj | Огненный Скаардж| Огненный Скаардж         |
| WaveMonsters.Warlord    | GUI2K4.rut  | Warlord     | Военачальник    | Военачальник / Повелитель|

<!--
Add more sections and rows as needed. Keep column order and meaning the same across all tables.
When expanding beyond Invasion, new categories might include:

## Other monsters and elites

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|------------
*(Package.ClassName)*    | (Display name)     | -               | -
-->

