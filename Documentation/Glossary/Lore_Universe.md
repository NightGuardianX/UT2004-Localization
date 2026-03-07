# Lore glossary

## Entity Glossary Rules (Lore_Universe)

- **Sources:** Narrative strings from relevant `.int` files (species, locations, events, corporations such as Liandri, tournament lore, etc.). Typical sources include `XPlayers.int`, `XGame.int`, map description `.int` files, and other narrative-heavy packages. Current Russian: corresponding `.rut` files in `/rut`. Old Russian: `/rut_old/` counterparts.
- **Structure / categories:** Lore terms may be grouped into subsections by type (e.g. Species, Corporations, Locations, Events) if needed; all use the same table format.
- **Exclusions:** Purely technical or UI-only labels (menu items, button captions, ability names) that belong to other entities are excluded.
- **Table format:** Standard glossary table with optional **.rut file** column. For Lore_Universe, the column lists **all .rut files** where the term or concept appears (comma-separated); multiple files are common for narrative terms. Format: `Technical name | .rut file | English name | Current Russian | Old Russian`.

---

Source: narrative sections of relevant `.int` files (`XPlayers.int`, `XGame.int`, map `.int` descriptions, etc.).
Current Russian: corresponding `.rut` files in `/rut`.
Old Russian: matching files in `/rut_old/`.

Format (Markdown table). The **.rut file** column lists all .rut files where the term appears (comma-separated).

Technical name | .rut file | English name | Current Russian | Old Russian
-------------- | --------- | ------------ | --------------- | ------------

If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Group related lore items consistently so that translators can see narrative context (e.g. all items for a given corporation together).
- The **.rut file** column lists all known .rut files where the term or concept appears; for some terms the list may be incomplete (e.g. map-specific lore). You can extend it by searching the repo for the English name or a distinctive phrase.

---

## Lore

Technical name           | .rut file | English name       | Current Russian | Old Russian
-------------------------|-----------|--------------------|-----------------|--------------------------
LoreLiandriCorporation   | XGame.rut, XPlayers.rut, XWeapons.rut, AS-BP2-Jumpship.rut | Liandri Corporation| -               | -
LoreUnrealTournament     | XGame.rut, XPlayers.rut | Unreal Tournament  | -               | -
LoreNewEarthGovernment   | XPlayers.rut, XGame.rut | New Earth Government | -             | -
LoreSkaarjEmpire         | XPlayers.rut, XGame.rut | Skaarj Empire      | -               | -
LoreHumanSkaarjWar       | XPlayers.rut, XGame.rut | Human/Skaarj war   | -               | -
LoreCorporationWars      | XGame.rut, AS-BP2-Jumpship.rut | Corporation Wars   | -               | -
LoreIzanagiCorporation   | AS-BP2-Jumpship.rut | Izanagi Corporation| -               | -
LoreAxonResearchCorp     | XPlayers.rut, XWeapons.rut | Axon Research Corporation | -        | -

### Locations and vessels

Technical name           | .rut file | English name       | Current Russian | Old Russian
-------------------------|-----------|--------------------|-----------------|--------------------------
LoreArborea              | XPlayers.rut | Arborea            | -               | -
LoreSanctuaryPlanet      | XPlayers.rut, XGame.rut | Sanctuary          | -               | -
LorePremaka              | XPlayers.rut, XGame.rut | Premaka            | -               | -
LoreAnubisMoon           | XPlayers.rut, XGame.rut | Anubis             | -               | -
LoreAlleria              | XPlayers.rut, XGame.rut | Alleria            | -               | -
LorePurgatoryPlanet      | XPlayers.rut, XGame.rut | Purgatory          | -               | -
LoreLamdon3              | XPlayers.rut, XGame.rut, AS-BP2-Jumpship.rut | Lamdon 3           | -               | -
LoreLBX7683              | XPlayers.rut, XGame.rut | LBX-7683           | -               | -
LoreAcatanaPlanet        | XPlayers.rut, XGame.rut, AS-BP2-Jumpship.rut | Acatana            | -               | -
LoreRedPlanetWorld       | XPlayers.rut, XGame.rut | Red Planet         | -               | -
LoreBenial6              | XPlayers.rut, XGame.rut | Benial 6           | -               | -
LoreEkron                | XPlayers.rut, XGame.rut | Ekron              | -               | -
LoreKretzigGeothermal    | XPlayers.rut, XGame.rut | Kretzig Geothermal Facility | -      | -
LoreJanuaryFacility32356 | XPlayers.rut, XGame.rut | Facility 32356 "January" | -        | -
LoreEloreanSeasOutpost   | XPlayers.rut, XGame.rut | Elorean Seas outpost | -            | -
LoreVortexRikers         | XPlayers.rut, XGame.rut | Vortex Rikers      | -               | -
LoreSkaarjMothership     | XPlayers.rut, XGame.rut | Skaarj Mothership  | -               | -
LoreHyperBlastShip       | XPlayers.rut, XGame.rut | HyperBlast arena ship | -           | -
LoreJumpshipPrototype    | AS-BP2-Jumpship.rut | Prototype Liandri Jumpship | -      | -

### Factions and institutions

Technical name           | .rut file | English name       | Current Russian | Old Russian
-------------------------|-----------|--------------------|-----------------|--------------------------
LoreOverseers            | XPlayers.rut, XGame.rut | Overseers          | -               | -
LoreImperialTransport    | XPlayers.rut, XGame.rut | Imperial Transport | -               | -
LoreEmpire               | XPlayers.rut, XGame.rut | The Empire         | -               | -
LoreInquisitors          | XPlayers.rut, XGame.rut | Inquisitors        | -               | -
LorePolarisBattleGroup   | XPlayers.rut, XGame.rut | Polaris Battle Group | -             | -
LoreTempleGuardians      | XPlayers.rut, XGame.rut | Temple Guardians   | -               | -
LoreDesertLegion         | XPlayers.rut, XGame.rut | Desert Legion      | -               | -
LoreSeventhMercFleet     | XPlayers.rut, XGame.rut | Seventh Mercenary Fleet | -         | -

### Events and operations

Technical name           | .rut file | English name       | Current Russian | Old Russian
-------------------------|-----------|--------------------|-----------------|--------------------------
LoreBenial6Uprising      | XPlayers.rut, XGame.rut | Prisoner uprising on Benial 6 | -    | -
LoreRecoveryNexusMissiles| XPlayers.rut, XGame.rut, AS-BP2-Jumpship.rut | Recovery of Nexus prototype missiles | - | -
LoreGlacierRaid          | XPlayers.rut, XGame.rut | Glacier raid on Lamdon 3      | -    | -
LoreAcatanaAssault       | XPlayers.rut, XGame.rut, AS-BP2-Jumpship.rut | Skaarj assault on Acatana belt | -   | -

### Technologies and artifacts

Technical name           | .rut file | English name       | Current Russian | Old Russian
-------------------------|-----------|--------------------|-----------------|--------------------------
LoreHighRiskContainment  | XPlayers.rut, XGame.rut | High Risk Containment Arenas | -     | -
LoreImperialCloningVats  | XPlayers.rut, XGame.rut | Overseer cloning vats        | -     | -
LoreTarydiumDeposits     | XPlayers.rut, XGame.rut | Tarydium deposits            | -     | -
LoreProteinBales         | XPlayers.rut, XGame.rut | Protein bales                | -     | -
LoreNexusPrototype       | XPlayers.rut, XGame.rut, AS-BP2-Jumpship.rut | Nexus prototype missiles     | -     | -
LoreIonPlasmaTank        | XPlayers.rut, XGame.rut | Ion Plasma Tank              | -     | -
LoreStoneGiants          | XPlayers.rut, XGame.rut | Stone Giants                 | -     | -
