# Glossary Rules

**General / generic** rules for how the glossary should be organized.
Some entities have their own **Entity Glossary Rules** (see below).

## Structure

A separate glossary file is created for each **entity group** in the `/Documentation/Glossary/` folder.

Entity groups are logical categories (e.g. Game_Maps, Game_Weapons, UI_StartMenuButtons), not one file per `.int` source.
Each group collects all relevant terms from one or more files in the `/int` directory.

Files are named in `EntityName.md` format (e.g. `Maps.md`, `Weapons.md`), with **optional type prefixes** for clarity (e.g. UI entities use `UI_EntityName.md` such as `UI_StartMenuButtons.md`).

**When generating a new entity glossary file**, use the template: [Documentation/Templates/EntityTemplate.md](../Templates/EntityTemplate.md).
Follow its structure and placeholders; remove or fill optional sections as needed.
Always generate the document with **fully populated tables** for all relevant terms (from `/int`) and immediately attempt to fill both Russian columns using `/rut` and `/rut_old/`, not leaving placeholder rows.
After creating a new entity glossary file, always add or update the corresponding entry (with a link to the new document) in `Documentation/Entities List.md`.

All headers and rules should be in English. Russian is for translation entries only.

## Entity groups

Terms are taken from files in the `/int` directory.
Map names come from `.int` files whose names start with map prefixes (DM-, CTF-, ONS-, BR-, DOM-, AS-, TUT-, MOV-), plus special map-like levels such as `endgame.int` where documented explicitly in the corresponding entity rules.

Game, UI, and lore entities are kept in separate groups.

### Game entities

- **Game_Maps** — All map display names. Sources: DM-*, CTF-*, ONS-*, BR-*, DOM-*, AS-*, TUT-*, MOV-* (.int files), plus special cases like `endgame.int` when explicitly included in the entity rules.
- **Game_Weapons** — Weapon names (Assault Rifle, Flak Cannon, etc.). Source: XWeapons.int.
- **Game_Vehicles** — Vehicle names. Sources: Vehicles.int, Onslaught.int, OnslaughtFull.int.
- **Game_Pickups** — Ammo, powerups, health, etc. Sources: XPickups.int, XWeapons.int, OnslaughtFull.int.
- **Game_Modes** — Deathmatch, CTF, Onslaught, Assault, etc. Sources: XGame.int, BonusPack.int, SkaarjPack.int, UT2k4Assault.int, OnslaughtFull.int.
- **Game_Abilities** — Movement, combat, HUD, and game control bindings (Forward, Jump, Fire, etc.). Sources: XInterface.int, GUI2K4.int, GamePlay.int, UnrealGame.int.
- **Game_Monsters** — Invasion and other monster / enemy names. Sources: GUI2K4.int (`UT2K4InvasionWaveConfig`), XGame.int, SkaarjPack.int.
- **Game_Mutators** — Game mutator names. Sources: UnrealGame.int, XGame.int, XWeapons.int, OnslaughtFull.int, OnslaughtBP.int, UTClassic.int, BonusPack.int, UTV2004s.int.
- **Game_Adrenaline** — Adrenaline resource, standard and bonus Adrenaline combos, and closely related mutators/options. Sources: XPickups.int, GamePlay.int, UnrealGame.int, XGame.int, BonusPack.int.

### UI entities

- **UI_StartMenuButtons** — Main menu button labels. Sources: XInterface.int, GUI2K4.int.
- **UI_Menus** — Menu / screen names. Source: GUI2K4.int (plus related UI .int where needed).
- **UI_Settings** — In‑game settings option labels and values. Source: GUI2K4.int.
- **UI_Dialogs** — Dialog titles and key phrases. Sources: Setup.int, XInterface.int.
- **UI_Popups** — Short popup status messages. Source: XInterface.int.
- **UI_Tooltips** — Tooltip text for controls. Sources: XInterface.int, Setup.int.
- **UI_Notifications** — HUD and console notifications, errors, warnings, success, info, help. Sources: XInterface.int, UnrealGame.int, XGame.int, GUI2K4.int.
- **UI_Loading** — Loading / progress labels and messages. Sources: XInterface.int, GUI2K4.int, Engine.int, Core.int, XWebAdmin.int.
- **UI_Startup** — Launcher / startup and safe-mode dialogs shown before entering the game. Sources: Startup.int, UT2004.int (launcher-related strings).

### Lore entities

- **Lore_Characters** — Character / player names. Source: XPlayers.int.
- **Lore_Teams** — Team names and symbols. Sources: TeamSymbols_UT2004.int, XGame.int.
- **Lore_Universe** — Species, locations, events, corporations (e.g. Liandri). Sources: narrative strings in relevant .int files (XPlayers.int, XGame.int, map .int descriptions, etc.).

### Optional / technical

- **Game_Tutorials** — Tutorial strings and tutorial-related UI text. Sources: GamePlay.int, UnrealGame.int, UTClassic.int, XInterface.int, GUI2K4.int, TUT-*.int.
- **Game_BonusPack** — Bonus pack titles and high-level bonus content labels. Source: BonusPack.int and related bonus .int files.
- **Tech_WebAdmin** — Web admin UI strings. Sources: XWebAdmin.int, XAdmin.int, UWeb.int.
- **Game_UTV** — UTV spectator / broadcast UI and mutator strings. Sources: UTV2004c.int, UTV2004s.int and other UTV-specific `.int` files.

#### System / editor / driver messages

- Low-level engine, driver, and system messages (e.g. from `Engine.int`, `Core.int`, `Window.int`, `D3DDrv.int`, `ALAudio.int`, `WinDrv.int`, `IpDrv.int`) are **localized directly** in `/rut` and `/rut_old/` **without** a dedicated glossary entity.
- Editor- and tool-only texts (e.g. `UnrealEd.int`, `Editor.int`, `ParticleExamples.int`, installer/demonstration packages for UT2003/UT2004) are also localized without separate glossary entities and are not part of the UT2004 in-game glossary structure.

## Glossary row format

Each glossary uses a **Markdown table** with four columns. For new and edited documents the **preferred layout** is GitHub‑style (with leading and trailing `|` on each row), for example:

| Technical Name | English Name | Current Russian Name | Old Russian Name |
| -------------- | ------------ | -------------------- | ---------------- |

- In the **source .md files**, prefer the same visual style and alignment as in `Game_Pickups.md` (columns aligned with spaces, header and separator rows present). This keeps tables readable both in rendered form and directly in a monospaced editor. Renderers ignore extra spaces around cell content, but this padding makes the raw markdown easier to scan and aligns visually in the IDE.
- Legacy tables that use the older style without leading/trailing `|` are still considered valid as long as they keep the same four columns and semantics; они могут оставаться в текущем формате до момента, когда файл всё равно правится по содержанию (тогда его можно мигрировать на GitHub‑style по желанию).

- **Technical name** — identifier from the game (e.g. map name `AS-Convoy`, key `SinglePlayerButtonText`).
- **English name** — from the corresponding file in `/int`.
- **Current Russian name** — from the file with the same name in `/rut` (same basename as the `.int` source, e.g. `XGame.rut`, `BonusPack.rut`, `SkaarjPack.rut`, `UT2k4Assault.rut`, `Onslaught.rut`). Use the value on the actual key line (e.g. `GameName=`, `ItemName=`, `PickupMessage=`), not the `; EN:` comment above it.
  - **Ignore Spanish placeholders:** Some `/rut` files still contain temporary Spanish text copied from `/est` (e.g. `BonusPack.rut` UI strings) — these are in Latin script and clearly not Russian. Do **not** treat such lines as valid current Russian; if the value is Spanish or otherwise non‑Russian, leave the **Current Russian** cell as `-` until a proper Russian translation is added.
- **Old Russian name** — from the file with the same name in `/rut_old/`.
  Fill it as `-` if it matches the current Russian name.

**Filling Current / Old Russian when creating a new entity page:** When you generate a new glossary file (new entity), always try to fill both Russian columns immediately, not leave them all as `-`. For each row, look up `Current Russian name` in `/rut` and `Old Russian name` in `/rut_old/` using the rules above. If either lookup fails (no Russian, only Spanish placeholder, or no entry), only that specific cell stays `-`. The corresponding table cells remain `-`.

**Filling missing Old Russian:** When a glossary row has no Old Russian translation, look it up in `/rut_old/`. Use the same package/source file as the term (e.g. `XGame.rut` for `[xDeathMatch]` GameName, `BonusPack.rut` for BonusPack entities, `Onslaught.rut` for `[ONSOnslaughtGame]`, `UT2k4Assault.rut` for `[ASGameInfo]`, `SkaarjPack.rut` for `[Invasion]`). Match the section name `[SectionName]` and the key (e.g. `GameName`, `ItemName`, `PickupMessage`) to the English source in `/int`; the value in the matching `.rut` file is the Old Russian. If not found in rut_old, leave the cell as `-`.

**Mechanic-focused entities (like Game_Adrenaline):** In some cases it is useful to introduce additional `Game_*` entities that focus on a specific game mechanic (resource, combo system, etc.) and reuse objects from existing entities (e.g. pickups, mutators). Such mechanic entities are allowed as **subtypes** that cut across `Game_Pickups`, `Game_Mutators`, `Game_Modes`, etc., but they must:

- not duplicate full coverage of those entities (only include rows needed to describe the mechanic consistently);
- follow the same four-column glossary format and source rules as the base entities;
- clearly describe in their own Entity Glossary Rules how they relate to the primary entities (what is referenced vs. what is redefined).

## Entity Glossary Rules

For some entities, the glossary document has **entity-specific rules** in a separate section at the beginning of the file, under a heading such as **Entity Glossary Rules**.
Those rules apply only to that entity.

**If a glossary document for an entity exists**, check whether it defines Entity Glossary Rules.
If it does, **include them in processing** for that entity, even when they contradict the general rules above.
Entity-specific rules override the general rules for that entity.

## References

- [Unreal Tournament 2004 (Unreal Wiki)](https://unreal.fandom.com/wiki/Unreal_Tournament_2004)
- [Unreal Tournament 2004 (iGrowiki)](https://igrowiki.fandom.com/ru/wiki/Unreal_Tournament_2004)
