# Game_Adrenaline glossary

## Entity Glossary Rules (Game_Adrenaline)

These rules apply only to the Game_Adrenaline entity and override the general [Glossary Rules](../Glossary%20Rules.md) where they differ.

- **Sources:** Adrenaline-related terms from:
  - `XPickups.int` (`[AdrenalinePickup]`).
  - `GamePlay.int` (tutorial messages about Adrenaline and combos).
  - `UnrealGame.int` (Adrenaline combo list: `AdrenalineCombos`, `ComboNames[0..3]`; mutators that modify combat speed and intensity such as `MutBerserk`, `MutGameSpeed`).
  - `XGame.int` (combo execution messages: `[ComboSpeed]`, `[ComboBerserk]`, `[ComboDefensive]`, `[ComboInvis]`; mutator `MutNoAdrenaline`).
  - `BonusPack.int` (bonus Adrenaline combos and mutator: `MutPintSizeCombo`, `MutCrateCombo`, `[ComboCrate]`, `[ComboMiniMe]`, LMS rules like `IARulesLMSAllowAdrenaline.`*, `LMSPropsDisplayText[6]`).
  Current Russian: `/rut`. Old Russian: `/rut_old`.
- **Structure / categories:** Terms are grouped by gameplay function:
  - **Core Adrenaline mechanic** (resource and generic tutorial messages).
  - **Standard Adrenaline combos** (Speed, Berserk, Booster, Invisible).
  - **Bonus Adrenaline combos (BonusPack)** (Pint-sized Combo, Camouflage Combo and their mutator).
  - **Adrenaline-related mutators and options** (switches and mutators that enable, disable, or globally modify Adrenaline usage).
- **Exclusions:** 
  - Generic game mutators are fully documented in `Game_Mutators` and are **not duplicated** here beyond Adrenaline-specific rows needed for combo context.
  - Map location names that mention Adrenaline (e.g. *Adrenaline Alley*, *Blue Adrenaline*) remain in `Game_Maps`.
  - Generic UI labels (e.g. `GameSpeedString`) remain in their UI entities.
- **Table format:** Standard glossary format: `Technical name | English name | Current Russian | Old Russian`. If no translation: `-`.

**Consistency rules for “Adrenaline” and combos**

- **Base term “Adrenaline”:**
  - Use one consistent Russian base form for the resource name across all contexts (pickup, tutorial message, mutator descriptions, options like *Allow Adrenaline*).
  - When “Adrenaline” appears as a standalone resource name (pickup message, HUD/tutorial string), treat it as a **proper in‑game item name** and capitalize it consistently (first letter upper‑case in both English and Russian).
- **“Adrenaline combos” phrase:**
  - The phrase “Adrenaline combos” (e.g. `Adrenaline can be used for combos`, `AdrenalineCombos`) should use the same Russian wording everywhere (menu headings, tutorial hints, mutator descriptions).
  - Do not mix different Russian nouns for “combo” within this mechanic; pick one term and reuse it in all strings related to Adrenaline combos (including BonusPack descriptions).
- **Standard combo names (Speed / Berserk / Booster / Invisible):**
  - Treat `Speed`, `Berserk`, `Booster`, and `Invisible` as a **closed set** of canonical combo names.
  - Use the **same Russian form** of each name in:
    - the combo list (`ComboNames[0..3]`),
    - execution messages (`Speed!`, `Berserk!`, `Booster!`, `Invisible!`),
    - any descriptive text that references these combos.
  - Do not mix full translation, partial transliteration, and English for the same combo name across different strings.
- **Bonus combos (Camouflage / Pint-sized):**
  - Treat `Camouflage Combo` and `Pint-sized Combo` as **Adrenaline combos** and keep their naming consistent between:
    - mutator technical name (`Bonuspack.MutPintSizeCombo`),
    - display text (`CamoDisplayText`, `MiniDisplayText`),
    - description text (`CamoDescText`, `MiniDescText`),
    - execution messages (`Camouflaged!`, `Pint-sized!`).
  - Use a single Russian term for “Pint-sized” across all related strings (combo name, mutator description, exec message).
- **Cross-entity alignment:**
  - Where Adrenaline-related mutators are listed both here and in `Game_Mutators` (e.g. `XGame.MutNoAdrenaline`, `UnrealGame.MutBerserk`, `UnrealGame.MutGameSpeed`), keep Russian names identical in both entities.

---

Source: `XPickups.int`, `GamePlay.int`, `UnrealGame.int`, `XGame.int`, `BonusPack.int`.
Current Russian: /rut.
Old Russian: /rut_old.

Format (Markdown table):


| Technical name   | English name    | Current Russian | Old Russian        |
| ---------------- | --------------- | --------------- | ------------------ |
| *(TechnicalKey)* | (English label) | -               | (Old Russian or -) |


If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Keep combo terminology consistent with `Game_Mutators` and `Game_Pickups` where the same technical objects appear (e.g. `AdrenalinePickup`, `MutNoAdrenaline`, `MutPintSizeCombo`).

---

## Core Adrenaline mechanic


| Technical name        | English name                      | Current Russian | Old Russian |
| --------------------- | --------------------------------- | --------------- | ----------- |
| AdrenalinePickup      | Adrenaline                        | -               | Адреналин   |
| GamePlay.Messages[25] | Adrenaline                        | -               | -           |
| GamePlay.Messages[26] | Adrenaline can be used for combos | -               | -           |


---

## Standard Adrenaline combos


| Technical name                   | English name      | Current Russian | Old Russian |
| -------------------------------- | ----------------- | --------------- | ----------- |
| UnrealGame.AdrenalineCombos      | ADRENALINE COMBOS | -               | -           |
| UnrealGame.ComboNames[0]         | Speed             | -               | -           |
| UnrealGame.ComboNames[1]         | Berserk           | -               | -           |
| UnrealGame.ComboNames[2]         | Booster           | -               | -           |
| UnrealGame.ComboNames[3]         | Invisible         | -               | -           |
| XGame.ComboSpeed.ExecMessage     | Speed!            | -               | -           |
| XGame.ComboBerserk.ExecMessage   | Berserk!          | -               | -           |
| XGame.ComboDefensive.ExecMessage | Booster!          | -               | -           |
| XGame.ComboInvis.ExecMessage     | Invisible!        | -               | -           |


---

## Bonus Adrenaline combos (BonusPack)


| Technical name                          | English name                                                                 | Current Russian | Old Russian |
| --------------------------------------- | ---------------------------------------------------------------------------- | --------------- | ----------- |
| Bonuspack.MutCrateCombo                 | Bonus Combos                                                                 | -               | -           |
| Bonuspack.MutPintSizeCombo              | Pint-sized Combo                                                             | -               | -           |
| BonusPack.ComboCrate.ExecMessage        | Camouflaged!                                                                 | -               | -           |
| BonusPack.ComboMiniMe.ExecMessage       | Pint-sized!                                                                  | -               | -           |
| BonusPack.MutCrateCombo.CamoDisplayText | Camouflage Combo                                                             | -               | -           |
| BonusPack.MutCrateCombo.MiniDisplayText | Pint-sized Combo                                                             | -               | -           |
| BonusPack.MutCrateCombo.CamoDescText    | When enabled, this adrenaline combo covers you with a holographic projection | -               | -           |
| BonusPack.MutCrateCombo.MiniDescText    | When enabled, this adrenaline combo makes you smaller                        | -               | -           |
| BonusPack.MutCrateCombo.Description     | Adds the Pint-sized combo (LLLL) and the Camouflage Combo (RRRR).            | -               | -           |


---

## Adrenaline-related mutators and options


| Technical name                              | English name                               | Current Russian | Old Russian    |
| ------------------------------------------- | ------------------------------------------ | --------------- | -------------- |
| XGame.MutNoAdrenaline                       | No Adrenaline                              | Без адреналина  | Нет адреналина |
| UnrealGame.MutBerserk                       | Super Berserk                              | -               | Суперберсеркер |
| UnrealGame.MutGameSpeed                     | Game Speed                                 | -               | Скорость Игры  |
| BonusPack.IARulesLMSAllowAdrenaline.Caption | Allow Adrenaline                           | -               | -              |
| BonusPack.IARulesLMSAllowAdrenaline.Hint    | When selected, players can use Adrenaline. | -               | -              |
| BonusPack.LMSPropsDisplayText[6]            | Allow Adrenaline                           | -               | -              |


