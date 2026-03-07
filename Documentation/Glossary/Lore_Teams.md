# Teams glossary

## Entity Glossary Rules (Lore_Teams)

- **Sources:** Terms from `XGame.int` (team names and related labels). Current Russian: `/rut/XGame.rut`. Old Russian: `/rut_old/XGame.rut`.
- **Structure / categories:** Teams are listed in a single table using their technical keys from the source files.
- **Exclusions:**
  - Generic game mode labels, notifications, or UI text from `XGame.int` that belong to other entities (e.g. GameModes, Notifications).
  - **Custom exclusion:** symbols-only entries from `TeamSymbols_UT2004.int` (`TeamSymbols_UT2004.*`) – these are treated as purely graphical assets and are not listed as Teams glossary rows.
- **Table format:** Standard glossary table as defined in [Glossary Rules](../Glossary%20Rules.md): Technical name, English name, Current Russian, Old Russian.

---

Source: `XGame.int`.
Current Russian: `/rut/XGame.rut`.
Old Russian: `/rut_old/XGame.rut`.

Format (Markdown table):

Technical name | English name | Current Russian | Old Russian
-------------- | ------------ | --------------- | ------------

If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Team names and symbols should match the in-game presentation and canonical lore names.
- `Phantom*` teams come from narrative-only sections in `XGame.int` (used for single-player ladder / cinematic descriptions) and are separated into their own subsection below for clarity.
- Pairs `TeamX` / `TeamNewX` (for example, `TeamBlackLegion` / `TeamNewBlacklegion`) represent the old and “new” versions of the same team in the single-player ladder (updated roster/leader, etc.), but they are treated as different technical keys and therefore have separate rows.

---

## Teams

### Phantom / narrative teams

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
PhantomBloodReavers            | Blood Reavers      | Blood Reavers   | Кровавые Грабители
PhantomDarkPhalanx             | Dark Phalanx       | Dark Phalanx    | Черная Фаланга
PhantomEpic                    | Epic Games, Inc.   | Epic Games, Inc.| Epic Games, Inc.
PhantomNecrisBlackLegion       | Necris Black Legion| Necris Black Legion | Черный Легион Некрис
PhantomRawSteel                | Raw Steel          | Raw Steel       | Чистая Сталь

### Ladder / playable teams

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
TeamApocalypse                 | Apocalypse         | Апокалипсис     | -
TeamBlackLegion                | BlackLegion        | Черный Легион   | -
TeamBloodFists                 | BloodFists         | Кровавые Кулаки | -
TeamBoneCrushers               | BoneCrushers       | Сокрушители Костей | -
TeamColdSteel                  | ColdSteel          | Холодная Сталь  | -
TeamCorrupt                    | The Corrupt        | Искаженные      | -
TeamCrusaders                  | Crusaders          | Крестоносцы     | -
TeamDragonBreath               | DragonBreath       | Дыхание Дракона | -
TeamFirestorm                  | Firestorm          | Огненный Шторм  | -
TeamGoliath                    | Goliath            | Голиаф          | -
TeamHellions                   | Hellions           | Геллионы        | -
TeamIronGuard                  | IronGuard          | Железная Стража | -
TeamIronSkull                  | Iron Skull Skaarj  | Скаарджи Железного Черепа | -
TeamJuggernauts                | Juggernauts        | Джаггернауты    | -
TeamNewBlacklegion             | Black Legion       | Черный Легион   | -
TeamNewBloodfist               | Blood Fist         | Кровавые Кулаки | -
TeamNewFirestorm               | Firestorm          | Огненный Шторм  | -
TeamNewIronGuard               | Iron Guard         | Железная Стража | -
TeamNewSunblade                | Sun Blade          | Солнечный Клинок | -
TeamNewSuperNova               | Super Nova         | Сверхновая      | -
TeamNightstalkers              | Nightstalkers      | Ночные Охотники | -
TeamPainMachine                | PainMachine        | Машина Боли     | -
TeamSunBlades                  | SunBlades          | Солнечные Клинки | -
TeamSupernova                  | Supernova          | Сверхновая      | -
TeamThundercrash               | Thunder Crash      | Удар Грома      | -
TeamVenom                      | Venom              | Яд              | -
TeamWarCry                     | WarCry             | Боевой клич     | -

