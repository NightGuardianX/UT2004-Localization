# Glossary Rules

Rules for how the glossary should be organized.

## Structure

A separate glossary file is created for each **entity group** in the `/Documentation/Glossary/` folder.

Entity groups are logical categories (e.g. Maps, Weapons, StartMenuButtons), not one file per `.int` source. Each group collects all relevant terms from one or more files in the `/int` directory.

Files are named in `EntityName.md` format (e.g. `Maps.md`, `Weapons.md`, `StartMenuButtons.md`).

## Entity groups

Terms are taken from files in the `/int` directory. Map names come from `.int` files whose names start with map prefixes (DM-, CTF-, ONS-, BR-, DOM-, AS-, TUT-, MOV-).

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

Each row in a glossary file uses this format:

```text
Technical Name | English Name | Current Russian Name | Old Russian Name
```

- **Technical name** — identifier from the game (e.g. map name `AS-Convoy`, key `SinglePlayerButtonText`).
- **English name** — from the corresponding file in `/int`.
- **Current Russian name** — from the file with the same name in `/rut`.
- **Old Russian name** — from the file with the same name in `/Documentation/rut_old/`. Leave empty if it matches the current Russian name.

## References

- [Unreal Tournament 2004 (Unreal Wiki)](https://unreal.fandom.com/wiki/Unreal_Tournament_2004)
- [Unreal Tournament 2004 (iGrowiki)](https://igrowiki.fandom.com/ru/wiki/Unreal_Tournament_2004)
