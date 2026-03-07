# Tutorials glossary

## Entity Glossary Rules (Game_Tutorials)

- **Sources:** Tutorial/training strings from base and bonus .int (movement, weapon, game mode, vehicle training, in-game help).
- **Structure:** By tutorial type: basic controls, movement, weapons, game modes, vehicles, advanced tactics. Rows by technical key.
- **Exclusions:** Map names → Game_Maps. General UI → UI_*; include here only if strictly tutorial-specific.
- **Table:** 5 columns. Group by functional area (movement hints together, weapon hints together, etc.).

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

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
