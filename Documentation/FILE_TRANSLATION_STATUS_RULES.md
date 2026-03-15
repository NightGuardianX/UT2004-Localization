# File Translation Status Rules

## Description

Rules for filling the **[FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md)** table: all localization files and their translation status are listed there; this document defines how to classify and update that table.

## Rules for filling table

### Counters (at the top of the status page)

- **Total** — Number of rows in the table (all .int files that have a .rut + all .rut files that have no matching .int in /int).
- **Done** — Number of rows where **Status** is `Done`.
- **Verified** — Number of rows where **Verified** is `YES`.
- Display as: `**Total:** N · **Done:** M · **Verified:** K`.
- **Always update the counters** when you change or update the table (add/remove rows, change Status or Verified). Recalculate Total (number of data rows), Done (rows with Status = Done), Verified (rows with Verified = YES) and correct the line above the table. When you recalculate global string statistics, also update the line **Strings Total:** ... under the counters (strings in all .rut, translated to Russian, and their percent).

**How to recalculate the Strings Total line:** Run from the repo root: `python scripts/count_translation_stats.py`. The script writes a report to `Documentation/Translation Stats.txt` and prints it. Use the printed/output values: **Strings Total** = “Всего строк перевода в .rut”, **Translated** = “Из них переведено на русский”, **Percent** = “Доля в .rut (русский / все строки)” (one decimal). Update the line in [FILE_TRANSLATION_STATUS.md](FILE_TRANSLATION_STATUS.md) accordingly (e.g. `**Strings Total:** 9673 · **Translated:** 2963 · **Percent:** 30.6%`).

**Optional — per-file status:** `python scripts/check_rut_status.py` outputs each .rut file with a suggested status (Done, In Progress, Spanish!!!, Untranslated). Use it as a helper when updating the Status column; the rules in “Status clarification” still apply (e.g. No .int, No Caption).

### Rows with no .int (base from .est when possible)

- Some .rut files have **no corresponding .int** in /int. For such .rut, check for an **analogous .est** in /est (same base name: `Foo.rut` → `Foo.est`). If it exists, use it as **Base File** (`Foo.est`). If there is no .est either, set **Base File** to `-` (dash).
- **Status No .int** — use only when the .rut has **neither** a matching .int in /int **nor** a matching .est in /est (and then only if the .rut also has **Missing `; EN:`**). If a .est exists, use it as base and determine status as usual (Untranslated, Spanish!!!, Done, etc.) from the .rut content. **For rows with .est as base:** if the .rut contains any Spanish translation, set status to **Spanish!!!**.
- Place **all** rows in **one alphabetical order by Localization** (see Table format).

### Table format

- Use a **header row**, then a **separator row** with aligned column delimiters (`|:---|:---|:---|:---|`).
- **Align columns** in source: pad cell content with spaces so that the first character of each column lines up vertically (Base File width ~26, Localization ~26, Status ~12, Verified ~8). This keeps the table readable when editing the .md file.
- **Row order:** Sort **all** rows in one **alphabetical order by Localization** (the .rut filename). Rows with Base File = `-` (no .int and no .est) are interleaved where their .rut name falls.
- **No .rut rows:** Do **not** put rows with status **No .rut** in the main status table. List them in a **separate table** below the main one, under the heading **"Base files without .rut (No .rut)"**. Sort that table alphabetically by Localization. When adding new base files that have no .rut, add them to this separate table.

- **One table per status:** The status page uses **separate tables for each status**. Do not mix statuses in one table. Order of tables: **Untranslated** → **Spanish!!!** → **No Caption** (if any) → **In Progress** → **Done** (Done must be the **last** table). After that, the **Base files without .rut (No .rut)** table. Within each table, sort rows alphabetically by **Localization** (.rut filename).

### Table includes columns

- **Base File** — .int filename in /int folder; if no .int, then .est filename from /est folder (same base name as .rut); or `-` when the .rut has neither .int nor .est in this repo
- **Localization** — .rut filename in /rut folder (same base name: `Foo.int`/`Foo.est` → `Foo.rut`)
- **Status** — No .rut, No .int, Untranslated, Spanish!!!, No Caption, In Progress, Done (see below)
- **Verified** — YES when manually confirmed by translator; empty otherwise

### Status clarification (check in this order)

1. **No .rut** — The .int file has no matching .rut file in /rut. Set this first.
2. **No .int** — Only when the .rut has **no matching .int in /int and no matching .est in /est** (Base File = `-`), and the .rut has **Missing `; EN:`**. If a .est exists, use it as base and determine status as usual.
3. **Untranslated** — .rut exists but has no Russian and no Spanish in user-facing strings (e.g. only English copied from .int or no `; EN:` blocks).
4. **Spanish!!!** — .rut contains any Spanish strings (even if some lines are already Russian). One Spanish string = whole file gets this status. **When checking for Spanish:** consider only the **translation lines** (lines of the form `Key="value"` that are **not** comments). Ignore lines starting with `; EN:` — those are the English reference, not the translation; Latin script in `; EN: Key="English text"` must not be treated as Spanish. **Proper nouns** (e.g. map names in `Title=` such as "Gestalt", "Severance", "Sub Rosa") that are kept identical to the English original are **not** considered Spanish — they are intentionally not translated.
5. **No Caption** — .int has `Caption=` (or other translatable keys inside `Preferences=`, etc.) but in .rut that key is either missing or its value is still the English original (no `; EN:` + translation).
6. **In Progress** — Some translatable strings are in Russian, but not all. **Proper nouns** (e.g. map names in `Title=`) that are kept as in the English source do not count as untranslated.
7. **Done** — All translatable strings in .rut are translated into Russian (and no Spanish left). **Proper nouns** (e.g. map names in `Title=`) may remain unchanged and do not prevent Done status.

### What does not block Done status

When judging whether a file is **Done**, the following are **not** required to be in Russian and do **not** count as “untranslated”:

- **Map Title** — The key `Title` (and, where applicable, `LevelEnterText`) for map names may stay in English as proper nouns (e.g. "Gestalt", "Severance", "Sub Rosa").
- **Countdown / short Message** — The key `Message` when the value is a countdown (e.g. "5", "4", "3", "2", "1") or similar short system message.
- **Technical strings** — Keys that are technical or system-only; leaving them in English does not block Done:
  - **Fonts:** `FontArrayNames`, `MutantRangeFontName`, or any key whose name contains `Font`.
  - **URLs / paths:** `HelpWebLink`, `StatsURL`, `WebPage`, `BugReportURL`, `ManualDownloadPage`, `TOSURL`, `DefaultFolder`, and similar.
  - **System / config:** `Preferences`, `Caption`, `ClassCaption`, `Object`, `Product`, `Engine`, `Copyright`, `Abbreviation`, `FriendlyName`, `MainPrivs`, `SubPrivs`.
  - **Setup / installer:** `AutoplayWindowTitle`, `Developer`, `LocalProduct`, `SafeDiscTitlebar`, and similar installer-related keys.
  - **UI technical:** `DesignModeHints`, `Spacer`, `PercentText`, `Header`, `ColumnHeadings`, `ContextItems`, `DefaultItems`, `PanelCaption`, `ModName`, `messageslength`, `AudioModes`, `RenderModeText`, `NetSpeedText`, `CharSet`, punctuation/symbol keys (e.g. `IP_Bracket_Open`, `SpaceSeparator`, `RoundSeparator`), and similar.
  - **Abbreviations / technical names:** e.g. `VehicleNameString` (SPMA, TC-1200), and similar keys that are identifiers or abbreviations.
  - **Empty or placeholder:** e.g. `SomeoneIsCamperMessage`, `SomeoneIsMutantMessage` when value is space or empty; `BrowseButton` when value is `...`.
  - **Keyboard key names:** Keys whose values are key labels (e.g. in Engine.rut: PAGE UP, PRINT SCREEN, CAPS LOCK, NUM LOCK, ESCAPE, NUM 0–9, TAB, ENTER, etc.). Key names like `PageUp`, `PageDown`, `NumPad`, `Grey`, `CapsLock`, `Separator`, `NumLock`, `Escape`, etc. do not block Done.
  - **TeamNames:** Any key whose name contains `TeamName` (team name strings).
  - **Trivial values:** Values that are only punctuation, whitespace, or symbols (e.g. `", "`, `"°"`, comma+space, degree sign). Such values do not block Done.
  - **Game/point/announcer identifiers and template strings:** `ItemName` (e.g. AVRiL), `AnnouncerName` (e.g. UT2003), `TauntAnimNames`, `PointName` (e.g. A, B), `KilledByTrailer` (e.g. !), `MutantType`, `InvasionType`, `LMSType` (game type IDs), `msgBonusOverviewItem` (template with %bonuscount% etc.). These do not block Done.
  - **Engine technical:** `HelpUsage` (command-line help text), `HelpParm`, `DefaultPlayerName` (e.g. "Player"), `GRIPropsDisplayText` (e.g. MOTD, FQDN). These do not block Done.

The script `check_rut_status.py` applies these exclusions when suggesting Done; manual review may still treat a file as Done if only such keys remain in English.

### How translation is organized

- **.int** = source (English): sections `[Category]`, keys like `Key="English text"`, plus non-translatable lines (`Object=`, some `Preferences=`, etc.).
- **.rut** = localization: same structure, with translatable lines in this form:

```ini
[Category]
; EN: Key="English text"
Key="Russian text"
```

- **Non-translatable lines** — `Object=(Name=...)`, many `Preferences=(Caption=...)` (when kept as technical config), `Delays[0]=...`, etc. may be copied as-is or omitted in .rut. Ignore them when judging status; only consider lines that carry user-visible text.
- **Missing `; EN:`** — If a translatable key in .int or .est has no `; EN: Key="..."` in .rut, treat as untranslated (or No Caption when it's a caption). To check the intended English, use the same key in the corresponding .int or .est file.

Example (Done):

```ini
[ONSGrenadeLauncher]
; EN: Description="The MGG Grenade Launcher fires magnetic sticky grenades, which will attach to enemy players and vehicles."
Description="Гранатомет MGG стреляет магнитными липкими гранатами, которые прикрепляются к вражеским игрокам и технике."
; EN: ItemName="Grenade Launcher"
ItemName="Гранатомет"
```

### Quick checks from the sample

- **Editor.rut** — No `; EN:` blocks, Captions in Preferences still in English → Untranslated (or No Caption for those entries).
- **Startup.rut**, **Vehicles.rut**, **Engine.rut**, **XGame.rut** — `; EN:` + Russian → Done (watch for odd Spanish leftovers).
- **GamePlay.rut**, **Core.rut**, **DM-Inferno.rut**, **XPickups.rut**, **Onslaught.rut** — Spanish present → Spanish!!! (even if some Russian).
