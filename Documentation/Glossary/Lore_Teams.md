# Teams glossary

## Entity Glossary Rules (Lore_Teams)

- **Sources:** Terms from `XGame.int` (team names and related labels). Current Russian: `/rut/XGame.rut`. Old Russian: `/rut_old/XGame.rut`.
- **Structure / categories:** Teams are listed in a single table using their technical keys from the source files.
- **Exclusions:**
  - Generic game mode labels, notifications, or UI text from `XGame.int` that belong to other entities (e.g. GameModes, Notifications).
  - **Custom exclusion:** symbols-only entries from `TeamSymbols_UT2004.int` (`TeamSymbols_UT2004.*`) – these are treated as purely graphical assets and are not listed as Teams glossary rows.
- **Table format:** Standard glossary table: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: `XGame.int`.
Current Russian: `/rut/XGame.rut`.
Old Russian: `/rut_old/XGame.rut`.

Format (Markdown table):

Technical name | .rut file  | English name | Current Russian | Old Russian
-------------- | ---------- | ------------ | --------------- | ------------

If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Team names and symbols should match the in-game presentation and canonical lore names.
- `Phantom*` teams come from narrative-only sections in `XGame.int` (used for single-player ladder / cinematic descriptions) and are separated into their own subsection below for clarity.
- Pairs `TeamX` / `TeamNewX` (for example, `TeamBlackLegion` / `TeamNewBlacklegion`) represent the old and “new” versions of the same team in the single-player ladder (updated roster/leader, etc.), but they are treated as different technical keys and therefore have separate rows.

---

## Teams

### Phantom / narrative teams

| Technical name           | .rut file  | English name       | Current Russian | Old Russian |
| -------------------------| ---------- |--------------------|-----------------| ----------- |
| PhantomBloodReavers      | XGame.rut  | Blood Reavers      | Blood Reavers   | Кровавые Грабители |
| PhantomDarkPhalanx       | XGame.rut  | Dark Phalanx       | Dark Phalanx    | Черная Фаланга |
| PhantomEpic              | XGame.rut  | Epic Games, Inc.   | Epic Games, Inc.| Epic Games, Inc. |
| PhantomNecrisBlackLegion  | XGame.rut  | Necris Black Legion| Necris Black Legion | Черный Легион Некрис |
| PhantomRawSteel          | XGame.rut  | Raw Steel          | Raw Steel       | Чистая Сталь |

### Ladder / playable teams

| Technical name           | .rut file  | English name       | Current Russian | Old Russian |
| -------------------------| ---------- |--------------------|-----------------| ----------- |
| TeamApocalypse           | XGame.rut  | Apocalypse         | Апокалипсис     | - |
| TeamBlackLegion          | XGame.rut  | BlackLegion        | Черный Легион   | - |
| TeamBloodFists           | XGame.rut  | BloodFists         | Кровавые Кулаки | - |
| TeamBoneCrushers         | XGame.rut  | BoneCrushers       | Сокрушители Костей | - |
| TeamColdSteel            | XGame.rut  | ColdSteel          | Холодная Сталь  | - |
| TeamCorrupt              | XGame.rut  | The Corrupt        | Искаженные      | - |
| TeamCrusaders            | XGame.rut  | Crusaders          | Крестоносцы     | - |
| TeamDragonBreath         | XGame.rut  | DragonBreath       | Дыхание Дракона | - |
| TeamFirestorm            | XGame.rut  | Firestorm          | Огненный Шторм  | - |
| TeamGoliath              | XGame.rut  | Goliath            | Голиаф          | - |
| TeamHellions             | XGame.rut  | Hellions           | Геллионы        | - |
| TeamIronGuard            | XGame.rut  | IronGuard          | Железная Стража | - |
| TeamIronSkull            | XGame.rut  | Iron Skull Skaarj  | Скаарджи Железного Черепа | - |
| TeamJuggernauts          | XGame.rut  | Juggernauts        | Джаггернауты    | - |
| TeamNewBlacklegion       | XGame.rut  | Black Legion       | Черный Легион   | - |
| TeamNewBloodfist         | XGame.rut  | Blood Fist         | Кровавые Кулаки | - |
| TeamNewFirestorm         | XGame.rut  | Firestorm          | Огненный Шторм  | - |
| TeamNewIronGuard         | XGame.rut  | Iron Guard         | Железная Стража | - |
| TeamNewSunblade          | XGame.rut  | Sun Blade          | Солнечный Клинок | - |
| TeamNewSuperNova         | XGame.rut  | Super Nova         | Сверхновая      | - |
| TeamNightstalkers        | XGame.rut  | Nightstalkers      | Ночные Охотники | - |
| TeamPainMachine          | XGame.rut  | PainMachine        | Машина Боли     | - |
| TeamSunBlades            | XGame.rut  | SunBlades          | Солнечные Клинки | - |
| TeamSupernova            | XGame.rut  | Supernova          | Сверхновая      | - |
| TeamThundercrash         | XGame.rut  | Thunder Crash      | Удар Грома      | - |
| TeamVenom                | XGame.rut  | Venom              | Яд              | - |
| TeamWarCry               | XGame.rut  | WarCry             | Боевой клич     | - |

