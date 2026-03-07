# UI Loading glossary

## Entity Glossary Rules (UI_Loading)

- **Sources:** `XInterface.int`, `GUI2K4.int`, `Engine.int`, `Core.int`, `XWebAdmin.int` (loading/progress labels and messages from these and related UI .int files).
- **Scope:** UI text that describes **loading / in‑progress operations** (e.g. `LOADING...`, `Loading file %s...`, `Loading Game Types`, `. . . LOADING`): HUD indicators, loading screens, server loading, progress in menus or WebAdmin.
- **Exclusions:** Technical log/console messages not shown in UI; general notifications → `UI_Notifications`; dialog titles and long loading-error text → `UI_Dialogs`.
- **Table:** 5 columns. Technical names: `Section.Key` (e.g. `HudBase.LevelActionLoading`) or class/global key (e.g. `Engine.Loading`).
- **Consistency:** For repeated loading strings, keep punctuation and casing consistent across HUD, menus, SP ladder, server, WebAdmin. For English `Loading` or `Loading <Entity>`, use the **same Russian base noun** (e.g. «загрузка») both in short labels and in longer sentences; register and punctuation may vary.

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

---

## HUD and in‑game loading indicators (`XInterface.int`)

| Technical name                     | .rut file     | English name          | Current Russian | Old Russian |
| ---------------------------------- | ------------- | --------------------- | --------------- | ----------- |
| HudBase.LevelActionLoading         | XInterface.rut | LOADING...            | -               | - |
| UT2SP_LadderLoading.LoadingMessage | XInterface.rut | Loading...            | -               | - |

---

## Single‑player and server loading screens (`GUI2K4.int`)

| Technical name                           | .rut file   | English name                 | Current Russian | Old Russian |
| ---------------------------------------- | ----------- | ---------------------------- | --------------- | ----------- |
| UT2K4SP_LadderLoading.LoadingMessage     | GUI2K4.rut  | loading                      | -               | - |
| UT2K4ServerLoading.OpLoading.Text        | GUI2K4.rut  | . . . LOADING                | -               | - |
| UT2K4Tab_WeaponPref.LoadingText          | GUI2K4.rut  | ...Loading Weapon Database...| -               | - |

---

## Generic engine / core loading texts (`Engine.int`, `Core.int`)

| Technical name      | .rut file   | English name              | Current Russian | Old Russian |
| ------------------- | ----------- | ------------------------- | --------------- | ----------- |
| Engine.Loading      | Engine.rut  | Loading                   | -               | - |
| Core.ProgressLoading| Core.rut    | Loading file %s...        | -               | - |

---

## WebAdmin loading messages (`XWebAdmin.int`)

| Technical name                  | .rut file     | English name             | Current Russian | Old Russian |
| -------------------------------- | ------------- | ------------------------ | --------------- | ----------- |
| XWebAdmin.LoadingGames          | XWebAdmin.rut | Loading Game Types       | -               | - |
| XWebAdmin.LoadingMaps           | XWebAdmin.rut | Loading Available Maps   | -               | - |
