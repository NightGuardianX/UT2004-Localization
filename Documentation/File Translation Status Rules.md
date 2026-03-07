# File Translation Status Rules

## Description

Rules for filling the **[File Translation Status](File%20Translation%20Status.md)** table: all localization files and their translation status are listed there; this document defines how to classify and update that table.

## Rules for filling table

### Counters (at the top of the status page)

- **Total** — Number of rows in the table (all .int files that have a .rut + all .rut files that have no matching .int in /int).
- **Done** — Number of rows where **Status** is `Done`.
- **Verified** — Number of rows where **Verified** is `YES`.
- Display as: `**Total:** N · **Done:** M · **Verified:** K`.
- **Always update the counters** when you change or update the table (add/remove rows, change Status or Verified). Recalculate Total (number of data rows), Done (rows with Status = Done), Verified (rows with Verified = YES) and correct the line above the table. When you recalculate global string statistics, also update the line **Strings Total:** ... under the counters (strings in all .rut, translated to Russian, and their percent).

### Rows with no .int (base from .est when possible)

- Some .rut files have **no corresponding .int** in /int. For such .rut, check for an **analogous .est** in /est (same base name: `Foo.rut` → `Foo.est`). If it exists, use it as **Base File** (`Foo.est`). If there is no .est either, set **Base File** to `-` (dash).
- **Status No .int** — use only when the .rut has **neither** a matching .int in /int **nor** a matching .est in /est (and then only if the .rut also has **Missing `; EN:`**). If a .est exists, use it as base and determine status as usual (Untranslated, Spanish!!!, Done, etc.) from the .rut content. **For rows with .est as base:** if the .rut contains any Spanish translation, set status to **Spanish!!!**.
- Place **all** rows in **one alphabetical order by Localization** (see Table format).

### Table format

- Use a **header row**, then a **separator row** with aligned column delimiters (`|:---|:---|:---|:---|`).
- **Align columns** in source: pad cell content with spaces so that the first character of each column lines up vertically (Base File width ~26, Localization ~26, Status ~12, Verified ~8). This keeps the table readable when editing the .md file.
- **Row order:** Sort **all** rows in one **alphabetical order by Localization** (the .rut filename). Rows with Base File = `-` (no .int and no .est) are interleaved where their .rut name falls.

### Table includes columns

- **Base File** — .int filename in /int folder; if no .int, then .est filename from /est folder (same base name as .rut); or `-` when the .rut has neither .int nor .est in this repo
- **Localization** — .rut filename in /rut folder (same base name: `Foo.int`/`Foo.est` → `Foo.rut`)
- **Status** — No .rut, No .int, Untranslated, Spanish!!!, No Caption, In Progress, Done (see below)
- **Verified** — YES when manually confirmed by translator; empty otherwise

### Status clarification (check in this order)

1. **No .rut** — The .int file has no matching .rut file in /rut. Set this first.
2. **No .int** — Only when the .rut has **no matching .int in /int and no matching .est in /est** (Base File = `-`), and the .rut has **Missing `; EN:`**. If a .est exists, use it as base and determine status as usual.
3. **Untranslated** — .rut exists but has no Russian and no Spanish in user-facing strings (e.g. only English copied from .int or no `; EN:` blocks).
4. **Spanish!!!** — .rut contains any Spanish strings (even if some lines are already Russian). One Spanish string = whole file gets this status. **When checking for Spanish:** consider only the **translation lines** (lines of the form `Key="value"` that are **not** comments). Ignore lines starting with `; EN:` — those are the English reference, not the translation; Latin script in `; EN: Key="English text"` must not be treated as Spanish.
5. **No Caption** — .int has `Caption=` (or other translatable keys inside `Preferences=`, etc.) but in .rut that key is either missing or its value is still the English original (no `; EN:` + translation).
6. **In Progress** — Some translatable strings are in Russian, but not all.
7. **Done** — All translatable strings in .rut are translated into Russian (and no Spanish left).

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
