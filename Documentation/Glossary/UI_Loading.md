# UI Loading glossary

## Entity Glossary Rules (UI_Loading)

These rules apply only to the `UI_Loading` entity and override the general Glossary Rules where they differ.

- **Sources:** Loading / progress texts and labels from:
  - `XInterface.int` (HUD and SP ladder loading messages).
  - `GUI2K4.int` (server loading, SP ladder loading, weapon database loading).
  - `Engine.int`, `Core.int` (generic `Loading` / file progress).
  - `XWebAdmin.int` (loading games / maps in WebAdmin).
- **Current Russian:** matching entries in `/rut/*.rut` (`XInterface.rut`, `GUI2K4.rut`, `Engine.rut`, `Core.rut`, `XWebAdmin.rut`, etc.).  
  Where `/rut` still contains non‑Russian placeholder text (e.g. Spanish), the **Current Russian** column is left as `-` until proper Russian text is added.
- **Old Russian:** corresponding entries in `/rut_old`.
- **Scope:** Any UI text that explicitly describes **loading / in‑progress operations** (e.g. `LOADING...`, `Loading file %s...`, `Loading Game Types`, `. . . LOADING`). This includes HUD loading indicators, loading screens, server loading messages, and progress texts in menus or WebAdmin.
- **Exclusions:**
  - Purely technical log / console messages that are never shown in UI are outside this entity.
  - General notifications not tied to loading belong to `UI_Notifications`.
  - Dialog titles and detailed multi‑line explanations of loading errors belong to `UI_Dialogs`.
- **Table format:** Standard 4‑column glossary tables: **Technical name | English name | Current Russian | Old Russian**.  
  Technical names usually use `Section.Key` (e.g. `HudBase.LevelActionLoading`, `UT2K4ServerLoading.OpLoading.Text`, `Progress.Loading`), but may also refer to a class or global key when appropriate (e.g. `Engine.Loading`).

---

Source: `XInterface.int`, `GUI2K4.int`, `Engine.int`, `Core.int`, `XWebAdmin.int` (and related UI `.int` files if needed).

Current Russian: `/rut/*.rut` for the same classes / sections.

Old Russian: `/rut_old/*.rut` for the same classes / sections, where available.

Format (Markdown table):

Technical name | English name | Current Russian | Old Russian
-------------- | ------------ | --------------- | -----------

If no translation: `-`.

Notes:

- When filling or updating this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- For core, frequently repeated loading strings (e.g. `LOADING...`, `Loading file %s...`, `. . . LOADING`) strive to keep **consistent punctuation and casing** across all usages (HUD, menus, SP ladder, server loading, WebAdmin), unless the original deliberately differs for stylistic reasons.
- **Consistency rule for the base term “Loading”:** if the English text is a single word `Loading` or a simple pattern `Loading <Entity>` (e.g. `Loading Game Types`, `Loading Weapon Database`), all such cases must use the **same Russian base noun** (e.g. «загрузка») across the project. Differences in **register** (uppercase / lowercase) and **punctuation** (`…`, `...`, `. . .`) are allowed, as are clearly **context‑driven paraphrases** in longer descriptive sentences; but short UI labels of the `Loading` / `Loading <Entity>` type must stay lexically aligned.

---

## HUD and in‑game loading indicators (`XInterface.int`)

Technical name                     | English name          | Current Russian | Old Russian
---------------------------------- | --------------------- | --------------- | ----------
HudBase.LevelActionLoading         | LOADING...            | -               | -
UT2SP_LadderLoading.LoadingMessage | Loading...            | -               | -

---

## Single‑player and server loading screens (`GUI2K4.int`)

Technical name                           | English name                 | Current Russian | Old Russian
---------------------------------------- | ---------------------------- | --------------- | ----------
UT2K4SP_LadderLoading.LoadingMessage     | loading                      | -               | -
UT2K4ServerLoading.OpLoading.Text        | . . . LOADING                | -               | -
UT2K4Tab_WeaponPref.LoadingText          | ...Loading Weapon Database...| -               | -

---

## Generic engine / core loading texts (`Engine.int`, `Core.int`)

Technical name      | English name              | Current Russian | Old Russian
------------------- | ------------------------- | --------------- | ----------
Engine.Loading      | Loading                   | -               | -
Core.ProgressLoading| Loading file %s...        | -               | -

---

## WebAdmin loading messages (`XWebAdmin.int`)

Technical name                  | English name             | Current Russian | Old Russian
------------------------------- | ------------------------ | --------------- | ----------
XWebAdmin.LoadingGames          | Loading Game Types       | -               | -
XWebAdmin.LoadingMaps           | Loading Available Maps   | -               | -

