# Tutorials glossary

## Entity Glossary Rules (Tutorials)

- **Sources:** Tutorial- and training-related strings from `.int` files that ship with the base game and bonus content (e.g. movement / weapon training, game mode tutorials, vehicle training, in-game help overlays). Current Russian: matching `.rut` files in `/rut/`. Old Russian: matching `.rut` files in `/rut_old/`.
- **Structure / categories:** Sections are grouped by tutorial type or focus area, for example: basic controls, movement, weapons, game modes, vehicles, and advanced tactics. Within each section, rows are ordered by their technical keys as they appear in the source files.
- **Exclusions:** Map display names (`DM-`, `CTF-`, `BR-`, `DOM-`, `AS-`, `ONS-`, `TUT-`, `MOV-`) belong to the `Game_Maps` entity and are not duplicated here. General UI labels, menus, dialogs, popups, notifications, and tooltips belong to the corresponding `UI_*.md` entities and are only included here if the string is strictly tutorial-specific and does not appear in regular UI contexts.
- **Table format:** Standard glossary format: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: Tutorial- and training-related `.int` files in `/int/` (and related subfolders, if any).
Current Russian: `/rut/*.rut` (same basenames as the tutorial sources).
Old Russian: `/rut_old/*.rut` (same basenames as the tutorial sources).

Format (Markdown table):

| Technical name   | .rut file   | English name   | Current Russian | Old Russian        |
| ---------------- | ----------- | -------------- | --------------- | ------------------ |
| *(TechnicalKey)* | *(e.g. XInterface.rut)* | (English label)| -               | (Old Russian or -) |

If no translation: `-`.

Notes:

- When filling the glossary, always check both `/rut/` and `/rut_old/` to populate Russian columns where possible.
- Keep tutorial strings grouped by their functional area so it is easy to see coverage (e.g. all movement hints together, all weapon hints together, etc.).

---

## Basic controls and movement tutorials

*(Covered in `Game_Abilities.md` — see Movement section.)*

## Weapons and combat tutorials

*(Covered in `Game_Abilities.md` — see Combat section.)*

## Game mode tutorials

| Technical name              | .rut file     | English name                          | Current Russian | Old Russian                                         |
| --------------------------- | ------------- | ------------------------------------- | --------------- | -------------------------------------------------- |
| XGame.DM0.MenuName          | XGame.rut     | Deathmatch Tutorial                   | -               | -                                                  |
| XInterface.DMLabel0         | XInterface.rut | Tutorial                              | -               | Обучающий                                          |
| XInterface.SelectMessage    | XInterface.rut | Click to play tutorial for            | -               | Щелкните для просмотра пособия для                 |
| XInterface.TabNameTutorials | XInterface.rut | Tutorials                             | -               | Обучение                                           |
| XInterface.TabHintTutorials | XInterface.rut | View tutorials for each game type     | -               | Просмотр обучения для каждого типа игры            |
| GUI2K4.StartTutorial        | GUI2K4.rut    | Click to play tutorial for            | -               | Щелкните, чтобы просмотреть обучающие ролик по     |
| GUI2K4.TutorialButtonCaption| GUI2K4.rut    | Watch Game Tutorial                   | -               | Просмотреть обучающий ролик                        |
| GUI2K4.TutorialButtonHint   | GUI2K4.rut    | Watch the tutorial for this gametype. | -               | Просмотреть обучающий ролик по этому режиму игры. |

<!--
The following sections are intentionally omitted for now.
If later we find separate vehicle- or advanced-tactics-only tutorial strings
that are not already covered by other entities (e.g. `Game_Abilities`),
we can add dedicated tables here:

## Vehicle tutorials
## Advanced tactics / misc tutorials
-->
