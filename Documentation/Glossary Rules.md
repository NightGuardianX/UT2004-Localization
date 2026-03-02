# Glossary Rules

**General / generic** rules for how the glossary should be organized.
Some entities have their own **Entity Glossary Rules** (see below).

## Structure

A separate glossary file is created for each **entity group** in the `/Documentation/Glossary/` folder.

Entity groups are logical categories (e.g. Maps, Weapons, StartMenuButtons), not one file per `.int` source.
Each group collects all relevant terms from one or more files in the `/int` directory.

Files are named in `EntityName.md` format (e.g. `Maps.md`, `Weapons.md`, `StartMenuButtons.md`).

**When generating a new entity glossary file**, use the template: [Documentation/Glossary/EntityTemplate.md](Glossary/EntityTemplate.md).
Follow its structure and placeholders; remove or fill optional sections as needed.
Always generate the document with **fully populated tables** for all relevant terms (from `/int`) and immediately attempt to fill both Russian columns using `/rut` and `Documentation/rut_old/`, not leaving placeholder rows.
After creating a new entity glossary file, always add or update the corresponding entry (with a link to the new document) in `Documentation/Entities List.md`.

All headers and rules should be in English. Russian is for translation entries only.

## Entity groups

Terms are taken from files in the `/int` directory.
Map names come from `.int` files whose names start with map prefixes (DM-, CTF-, ONS-, BR-, DOM-, AS-, TUT-, MOV-).

Game, UI, and narrative entities are kept in separate groups.

### Game entities

- **Maps** — All map display names. Sources: DM-*, CTF-*, ONS-*, BR-*, DOM-*, AS-*, TUT-*, MOV-* (.int files).
- **Weapons** — Weapon names (Assault Rifle, Flak Cannon, etc.). Source: XWeapons.int.
- **Vehicles** — Vehicle names. Source: Vehicles.int.
- **Pickups** — Ammo, powerups, health, etc. Source: XPickups.int.
- **GameModes** — Deathmatch, CTF, Onslaught, etc. Sources: XGame.int, XMaps.int.
- **Abilities** — Dodge, Jump, Fire, Alt Fire, etc. Sources: XPlayers.int, XInterface.int.

### UI entities

- **StartMenuButtons** — Main menu button labels. Sources: Entry.int, Setup.int, XInterface.int.
- **Menus** — Menu / screen names. Sources: XInterface.int, GUI2K4.int.
- **Dialogs** — Dialog titles and key phrases. Sources: XInterface.int, Setup.int.
- **Popups** — Popup messages. Source: XInterface.int.
- **Tooltips** — Tooltip text. Sources: XInterface.int, Setup.int.
- **Notifications** — Notifications, errors, warnings, success, info, help. Source: XInterface.int.

### Narrative entities

- **Characters** — Character / player names. Source: XPlayers.int.
- **Teams** — Team names and symbols. Sources: TeamSymbols_UT2004.int, XGame.int.
- **Lore** — Species, locations, events, corporations (e.g. Liandri). Sources: narrative strings in relevant .int files.

### Optional / technical

- **Tutorials** — Tutorial map/text names. Source: TUT-*.int.
- **BonusPack** — Bonus content labels. Source: BonusPack.int.
- **WebAdmin** — Web admin UI strings. Sources: XWebAdmin.int, XAdmin.int, UWeb.int.

## Glossary row format

Each glossary uses a **Markdown table** with four columns:

Technical Name | English Name | Current Russian Name | Old Russian Name
-------------- | ------------ | -------------------- | ----------------

- In the **source .md files**, keep the first two columns (Technical / English) padded with spaces up to a consistent width (as in `Pickups.md` and `Maps.md`), so that tables read cleanly in a monospaced editor. Renderers ignore extra spaces around cell content, but this padding makes the raw markdown easier to scan and aligns visually in the IDE.

- **Technical name** — identifier from the game (e.g. map name `AS-Convoy`, key `SinglePlayerButtonText`).
- **English name** — from the corresponding file in `/int`.
- **Current Russian name** — from the file with the same name in `/rut` (same basename as the `.int` source, e.g. `XGame.rut`, `BonusPack.rut`, `SkaarjPack.rut`, `UT2k4Assault.rut`, `Onslaught.rut`). Use the value on the actual key line (e.g. `GameName=`, `ItemName=`, `PickupMessage=`), not the `; EN:` comment above it.
  - **Ignore Spanish placeholders:** Some `/rut` files still contain temporary Spanish text copied from `/est` (e.g. `BonusPack.rut` UI strings) — these are in Latin script and clearly not Russian. Do **not** treat such lines as valid current Russian; if the value is Spanish or otherwise non‑Russian, leave the **Current Russian** cell as `-` until a proper Russian translation is added.
- **Old Russian name** — from the file with the same name in `/Documentation/rut_old/`.
  Fill it as `-` if it matches the current Russian name.

**Filling Current / Old Russian when creating a new entity page:** When you generate a new glossary file (new entity), always try to fill both Russian columns immediately, not leave them all as `-`. For each row, look up `Current Russian name` in `/rut` and `Old Russian name` in `/Documentation/rut_old/` using the rules above. If either lookup fails (no Russian, only Spanish placeholder, or no entry), only that specific cell stays `-`. The corresponding table cells remain `-`.

**Filling missing Old Russian:** When a glossary row has no Old Russian translation, look it up in `Documentation/rut_old/`. Use the same package/source file as the term (e.g. `XGame.rut` for `[xDeathMatch]` GameName, `BonusPack.rut` for BonusPack entities, `Onslaught.rut` for `[ONSOnslaughtGame]`, `UT2k4Assault.rut` for `[ASGameInfo]`, `SkaarjPack.rut` for `[Invasion]`). Match the section name `[SectionName]` and the key (e.g. `GameName`, `ItemName`, `PickupMessage`) to the English source in `/int`; the value in the matching `.rut` file is the Old Russian. If not found in rut_old, leave the cell as `-`.

## Entity Glossary Rules

For some entities, the glossary document has **entity-specific rules** in a separate section at the beginning of the file, under a heading such as **Entity Glossary Rules**.
Those rules apply only to that entity.

**If a glossary document for an entity exists**, check whether it defines Entity Glossary Rules.
If it does, **include them in processing** for that entity, even when they contradict the general rules above.
Entity-specific rules override the general rules for that entity.

## References

- [Unreal Tournament 2004 (Unreal Wiki)](https://unreal.fandom.com/wiki/Unreal_Tournament_2004)
- [Unreal Tournament 2004 (iGrowiki)](https://igrowiki.fandom.com/ru/wiki/Unreal_Tournament_2004)
