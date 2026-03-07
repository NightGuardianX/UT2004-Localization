# Game mutators glossary

## Entity Glossary Rules (Game_Mutators)

- **Sources:** Mutator names and descriptions from `UnrealGame.int`, `XGame.int`, `XWeapons.int`, `OnslaughtFull.int`, `OnslaughtBP.int`, `Onslaught.est`, `UTClassic.int`, `BonusPack.int`, and the UTV mutator definition (`UTV2004s.*`). Current Russian: matching `/rut` files. Old Russian: matching `/rut_old` files.
- **Structure / categories:** Mutators are grouped by source package (`UnrealGame`, `XGame`, `UTClassic`, `BonusPack`, `Onslaught*`, `XWeapons`, `UTV`) with one table per group. Inside each table, rows are ordered by technical name.
- **Exclusions:** This entity only covers **game mutators** (objects that modify game rules or loadouts, usually defined as `MetaClass=Engine.Mutator` or `[Mut...]` sections). Vehicle options, weapon properties, or UI-only strings that are not standalone mutators are documented in their own entities (`Game_Vehicles`, `Game_Weapons`, `UI`_*, etc.) and are not duplicated here.
- **Table format:** Standard glossary format: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: `UnrealGame.int`, `XGame.int`, `XWeapons.int`, `OnslaughtFull.int`, `OnslaughtBP.int`, `Onslaught.est`, `UTClassic.int`, `BonusPack.int`, UTV (`UTV2004s.`*).

Current Russian: `/rut/*.rut` (same basenames / sections where available).

Old Russian: `/rut_old/*.rut` (same basenames / sections where available).

Format (Markdown table) is the same in every section.

If no translation: `-`.

---

## UnrealGame mutators

| Technical name                 | .rut file       | English name   | Current Russian | Old Russian |
| ----------------------------- | ---------------- | -------------- | --------------- | ----------- |
| UnrealGame.MutBerserk         | UnrealGame.rut   | Super Berserk  | -               | Суперберсеркер |
| UnrealGame.MutBigHead         | UnrealGame.rut   | BigHead        | -               | Большая голова |
| UnrealGame.MutGameSpeed       | UnrealGame.rut   | Game Speed     | -               | Скорость Игры |
| UnrealGame.MutLowGrav         | UnrealGame.rut   | LowGrav        | -               | Низкая Гравитация |
| UnrealGame.MutMovementModifier| UnrealGame.rut   | Air Control    | -               | Авиаконтроль |

---

## XGame mutators

| Technical name           | .rut file    | English name        | Current Russian                | Old Russian           |
| ------------------------ | ------------ | ------------------- | ------------------------------ | --------------------- |
| XGame.MutFastWeapSwitch | XGame.rut    | UT2003 Style        | Как в UT2003                   | Стиль UT2003          |
| XGame.MutInstaGib       | XGame.rut    | InstaGib            | Мгновенное убийство (InstaGib) | Снайперский матч      |
| XGame.MutNoAdrenaline   | XGame.rut    | No Adrenaline       | Без адреналина                 | Нет адреналина        |
| XGame.MutQuadJump       | XGame.rut    | QuadJump            | Квадро-прыжок                  | Квадропрыжок          |
| XGame.MutRegen          | XGame.rut    | Regeneration        | Регенерация                    | Регенерация           |
| XGame.MutSlomoDeath     | XGame.rut    | Slow Motion Corpses | Трупы в слоу-мо                | Медленная смерть      |
| XGame.MutSpeciesStats   | XGame.rut    | Species Statistics  | Видовое разнообразие           | Статистика рас        |
| XGame.MutUDamageReward  | XGame.rut    | UDamage Reward      | Вдвойне приятно                | Награда U-урона       |
| XGame.MutVampire        | XGame.rut    | Vampire             | Вампиризм                      | Вампир                |
| XGame.MutZoomInstagib   | XGame.rut    | Zoom InstaGib       | Instagib с прицелом            | Снайперский матч Zoom |

---

## UTClassic mutators

| Technical name           | .rut file      | English name   | Current Russian | Old Russian |
| ------------------------ | -------------- | -------------- | --------------- | ----------- |
| UTClassic.MutUTClassic   | UTClassic.rut  | UT Classic     | -               | -           |
| UTClassic.MutUseLightning| UTClassic.rut  | Lightning Guns | -               | -           |
| UTClassic.MutUseSniper   | UTClassic.rut  | Sniper Rifles  | -               | -           |

---

## BonusPack mutators

| Technical name             | .rut file      | English name     | Current Russian | Old Russian |
| -------------------------- | -------------- | ---------------- | --------------- | ----------- |
| Bonuspack.MutCrateCombo    | BonusPack.rut  | Bonus Combos     | -               | -           |
| Bonuspack.MutPintSizeCombo | BonusPack.rut  | Pint-sized Combo | -               | -           |

---

## Onslaught & vehicle mutators

### Base Onslaught / vehicle mutators

| Technical name                    | .rut file         | English name         | Current Russian | Old Russian |
| --------------------------------- | ----------------- | -------------------- | --------------- | ----------- |
| Onslaught.MutBigWheels            | Onslaught.rut     | Big Wheels           | -               | -           |
| Onslaught.MutLightweightVehicles  | Onslaught.rut     | Lightweight Vehicles | -               | -           |
| Onslaught.MutOnslaughtWeapons     | Onslaught.rut     | Onslaught Weapons    | -               | -           |
| Onslaught.MutWheeledVehicleStunts | Onslaught.rut     | Stunt Vehicles       | -               | -           |
| OnslaughtFull.MutVehicleArena     | OnslaughtFull.rut | Vehicle Arena        | -               | -           |

### Bonus pack Onslaught / vehicle mutators

| Technical name               | .rut file        | English name    | Current Russian | Old Russian |
| ---------------------------- | ---------------- | --------------- | --------------- | ----------- |
| OnslaughtBP.MutBonusVehicles | OnslaughtBP.rut  | Bonus Vehicles  | -               | -           |
| OnslaughtBP.MutVehiclePickups| OnslaughtBP.rut  | Vehicle Pickups | -               | -           |

---

## Weapon mutators (XWeapons)

| Technical name            | .rut file     | English name    | Current Russian | Old Russian |
| ------------------------- | ------------- | --------------- | --------------- | ----------- |
| XWeapons.MutArena         | XWeapons.rut  | Arena Weapon    | -               | -           |
| XWeapons.MutNoSuperWeapon | XWeapons.rut  | No SuperWeapons | -               | -           |

---

## UTV mutators

> UTV-specific mutators, menus, and settings are documented in the dedicated entity [`Game_UTV.md`](Game_UTV.md).

Notes:

- When filling in Russian columns for other mutators, always check both `/rut/` and `/rut_old/` for each mutator (by section name and by `MetaClass=Engine.Mutator` object) to avoid missing existing translations.
- If a mutator appears both as an `Object=(MetaClass=Engine.Mutator, Name=Package.MutatorClass, ...)` and as a `[MutSomething]` section, treat this row as the shared logical mutator and do **not** duplicate it.

