# Maps glossary

## Entity Glossary Rules (Maps)

*(Optional.
This section defines rules specific to the Maps entity and overrides or extends the general [Glossary Rules](../Glossary%20Rules.md) where needed.)*

- **Sources:** Map display names from `.int` files whose names start with `DM-`, `CTF-`, `BR-`, `DOM-`, `AS-`, `ONS-`, `TUT-`, `MOV-` in the `/int` directory. Current Russian from `/rut/*.rut` with the same basename, when the `Title=` value is actually in Russian (Cyrillic). Old Russian from `Documentation/rut_old/*.rut` with the same basename.
- **Structure / categories:** Sections are grouped by map type / filename prefix: Deathmatch (`DM-`), Capture the Flag (`CTF-`), Bombing Run (`BR-`), Double Domination / Domination (`DOM-`), Assault (`AS-`), Onslaught (`ONS-`), Tutorials (`TUT-`), Movies / intro (`MOV-`).
- **Exclusions:** Only overall map display names (`Title=` under `[LevelInfo0]` or `[LevelSummary]`) are included here. Per-volume `LocationName=` strings (in-map zone names) are excluded from this entity and may be documented elsewhere if needed.
- **Table format:** Standard 4-column table for all rows: *Technical name | English name | Current Russian | Old Russian*.
- **English name (maps):** For all map rows, the **English name** is always identical to the **Technical name** (full map name with prefix, e.g. `DM-Deck17`, `CTF-Grendelkeep`). Human‑readable titles from `.int` (`Title="..."`) are not used in this column for maps and serve only as reference in the source files.

*(Practical note: At the current stage, some rows may have missing Current/Old Russian (marked as `-`) where translations are not yet finalized or where `/rut` still contains temporary non‑Russian placeholders. These will be filled in as the localization progresses.)*

---

Source: `DM-*.int`, `CTF-*.int`, `BR-*.int`, `DOM-*.int`, `AS-*.int`, `ONS-*.int`, `TUT-*.int`, `MOV-*.int` in `/int`.

Current Russian: `/rut/*.rut` (same basename as source).

Old Russian: `Documentation/rut_old/*.rut` (same basename as source).

Format: Technical name | English name | Current Russian | Old Russian.

If no translation: `-`.

Notes:

- When filling glossary rows, always prefer actual Russian strings from `/rut` and `Documentation/rut_old/` and ignore Spanish or English placeholders that were temporarily copied from `/est` or left untranslated.
- When both Current and Old Russian are present and identical, the **Old Russian** cell may be set to `-` to avoid duplication.

---

## Deathmatch (DM-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
DM-1on1-Albatross        | DM-1on1-Albatross  | -               | -
DM-1on1-Crash            | DM-1on1-Crash      | -               | -
DM-1on1-Desolation       | DM-1on1-Desolation | -               | -
DM-1on1-Idoma            | DM-1on1-Idoma      | -               | -
DM-1on1-Irondust         | DM-1on1-Irondust   | -               | -
DM-1on1-Mixer            | DM-1on1-Mixer      | -               | -
DM-1on1-Roughinery       | DM-1on1-Roughinery | -               | -
DM-1on1-Serpentine       | DM-1on1-Serpentine | -               | -
DM-1on1-Spirit           | DM-1on1-Spirit     | -               | -
DM-1on1-Squader          | DM-1on1-Squader    | -               | -
DM-1on1-Trite            | DM-1on1-Trite      | -               | -
DM-Antalus               | DM-Antalus         | -               | -
DM-Asbestos              | DM-Asbestos        | -               | -
DM-BP2-Calandras         | DM-BP2-Calandras   | -               | -
DM-BP2-GoopGod           | DM-BP2-GoopGod     | -               | -
DM-Compressed            | DM-Compressed      | -               | -
DM-Corrugation           | DM-Corrugation     | -               | -
DM-Curse4                | DM-Curse4          | -               | -
DM-DE-Grendelkeep        | DM-DE-Grendelkeep  | -               | -
DM-DE-Ironic             | DM-DE-Ironic       | -               | -
DM-DE-Osiris2            | DM-DE-Osiris2      | -               | -
DM-Deck17                | DM-Deck17          | -               | Палуба-17
DM-DesertIsle            | DM-DesertIsle      | -               | -
DM-Flux2                 | DM-Flux2           | -               | -
DM-Gael                  | DM-Gael            | -               | -
DM-Gestalt               | DM-Gestalt         | -               | -
DM-Goliath               | DM-Goliath         | -               | -
DM-HyperBlast2           | DM-HyperBlast2     | -               | -
DM-Icetomb               | DM-Icetomb         | -               | -
DM-Inferno               | DM-Inferno         | -               | -
DM-Injector              | DM-Injector        | -               | -
DM-Insidious             | DM-Insidious       | -               | -
DM-IronDeity             | DM-IronDeity       | -               | -
DM-JunkYard              | DM-JunkYard        | -               | -
DM-Leviathan             | DM-Leviathan       | -               | -
DM-Metallurgy            | DM-Metallurgy      | -               | -
DM-Morpheus3             | DM-Morpheus3       | -               | -
DM-Oceanic               | DM-Oceanic         | -               | -
DM-Phobos2               | DM-Phobos2         | -               | -
DM-Plunge                | DM-Plunge          | -               | -
DM-Rankin                | DM-Rankin          | -               | Ранг
DM-Rrajigar              | DM-Rrajigar        | -               | -
DM-Rustatorium           | DM-Rustatorium     | -               | -
DM-Sulphur               | DM-Sulphur         | -               | -
DM-TokaraForest          | DM-TokaraForest    | -               | -
DM-TrainingDay           | DM-TrainingDay     | -               | -
```

## Capture the Flag (CTF-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
CTF-1on1-Joust           | CTF-1on1-Joust     | -               | -
CTF-AbsoluteZero         | CTF-AbsoluteZero   | -               | -
CTF-Avaris               | CTF-Avaris         | -               | -
CTF-BP2-Concentrate      | CTF-BP2-Concentrate | -              | -
CTF-BP2-Pistola          | CTF-BP2-Pistola    | -               | -
CTF-BridgeOfFate         | CTF-BridgeOfFate   | -               | -
CTF-Chrome               | CTF-Chrome         | -               | -
CTF-Citadel              | CTF-Citadel        | -               | -
CTF-Colossus             | CTF-Colossus       | -               | -
CTF-DE-ElecFields        | CTF-DE-ElecFields  | -               | -
CTF-December             | CTF-December       | -               | -
CTF-DoubleDammage        | CTF-DoubleDammage  | -               | -
CTF-Face3                | CTF-Face3          | -               | -
CTF-FaceClassic          | CTF-FaceClassic    | -               | -
CTF-Geothermal           | CTF-Geothermal     | -               | -
CTF-Grassyknoll          | CTF-Grassyknoll    | -               | -
CTF-Grendelkeep          | CTF-Grendelkeep    | -               | Хранитель
CTF-January              | CTF-January        | -               | -
CTF-LostFaith            | CTF-LostFaith      | -               | -
CTF-Magma                | CTF-Magma          | -               | -
CTF-Maul                 | CTF-Maul           | -               | -
CTF-MoonDragon           | CTF-MoonDragon     | -               | -
CTF-Smote                | CTF-Smote          | -               | -
CTF-TwinTombs            | CTF-TwinTombs      | -               | -
```

## Bombing Run (BR-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
BR-Anubis                | BR-Anubis          | -               | Храм Анубиса
BR-Bifrost               | BR-Bifrost         | -               | -
BR-BridgeOfFate          | BR-BridgeOfFate    | -               | -
BR-Canyon                | BR-Canyon          | -               | -
BR-Colossus              | BR-Colossus        | -               | -
BR-DE-ElecFields         | BR-DE-ElecFields   | -               | -
BR-Disclosure            | BR-Disclosure      | -               | -
BR-IceFields             | BR-IceFields       | -               | -
BR-Serenity              | BR-Serenity        | -               | -
BR-Skyline               | BR-Skyline         | -               | -
BR-Slaughterhouse        | BR-Slaughterhouse  | -               | -
BR-TwinTombs             | BR-TwinTombs       | -               | -
```

## Double Domination / Domination (DOM-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
DOM-Access               | DOM-Access         | -               | -
DOM-Atlantis             | DOM-Atlantis       | -               | -
DOM-Aswan                | DOM-Aswan          | -               | -
DOM-Conduit              | DOM-Conduit        | -               | -
DOM-Core                 | DOM-Core           | -               | -
DOM-Junkyard             | DOM-Junkyard       | -               | -
DOM-OutRigger            | DOM-OutRigger      | -               | -
DOM-Renascent            | DOM-Renascent      | -               | -
DOM-Ruination            | DOM-Ruination      | -               | -
DOM-ScorchedEarth        | DOM-ScorchedEarth  | -               | -
DOM-SepukkuGorge         | DOM-SepukkuGorge   | -               | -
DOM-Suntemple            | DOM-Suntemple      | -               | -
```

## Assault (AS-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
AS-BP2-Acatana           | AS-BP2-Acatana     | -               | -
AS-BP2-Jumpship          | AS-BP2-Jumpship    | -               | -
AS-BP2-Outback           | AS-BP2-Outback     | -               | -
AS-BP2-SubRosa           | AS-BP2-SubRosa     | -               | -
AS-BP2-Thrust            | AS-BP2-Thrust      | -               | -
AS-Convoy                | AS-Convoy          | -               | Конвой
AS-FallenCity            | AS-FallenCity      | -               | -
AS-Glacier               | AS-Glacier         | -               | -
AS-Junkyard              | AS-Junkyard        | -               | -
AS-Mothership            | AS-Mothership      | -               | -
AS-RobotFactory          | AS-RobotFactory    | -               | -
```

## Onslaught (ONS-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
ONS-Adara                | ONS-Adara          | -               | -
ONS-ArcticStronghold     | ONS-ArcticStronghold | -             | -
ONS-Aridoom              | ONS-Aridoom        | -               | -
ONS-Ascendancy           | ONS-Ascendancy     | -               | -
ONS-Crossfire            | ONS-Crossfire      | -               | -
ONS-Dawn                 | ONS-Dawn           | -               | -
ONS-Dria                 | ONS-Dria           | -               | -
ONS-FrostBite            | ONS-FrostBite      | -               | -
ONS-IslandHop            | ONS-IslandHop      | -               | -
ONS-Primeval             | ONS-Primeval       | -               | -
ONS-RedPlanet            | ONS-RedPlanet      | -               | -
ONS-Severance            | ONS-Severance      | -               | -
ONS-Torlan               | ONS-Torlan         | -               | Торлан
ONS-Tricky               | ONS-Tricky         | -               | -
ONS-Urban                | ONS-Urban          | -               | -
```

## Tutorial (TUT-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
TUT-BR                   | TUT-BR             | -               | -
TUT-CTF                  | TUT-CTF            | -               | -
TUT-DM                   | TUT-DM             | -               | -
TUT-DOM2                 | TUT-DOM2           | -               | -
TUT-ONS                  | TUT-ONS            | -               | -
```

## Movies / intro (MOV-) maps

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
Mov-UT2-intro            | Mov-UT2-intro      | -               | -
MOV-UT2004-Intro         | MOV-UT2004-Intro   | -               | -
```
