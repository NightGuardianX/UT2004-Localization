# Config: UT2004 Localization Pipeline

> Russian localization only. Key and base string sources: `/int`, `/est`.

## Initialization Questions

| Question | Answer |
|----------|--------|
| Engine integration | External: text .int files (Unreal Engine 2) |
| Tools | Manual translation, scripts (status), AI agent for iterations when needed |
| File format | UE2: .int (sections `[Category]`, keys `Key="Value"`). Pair: source (.int or .est) ↔ .rut |

## General

| Field | Value |
|-------|-------|
| Project name | UT2004 Localization (RU) |
| Repository | *(current)* |
| Target language | ru (Russian) |

## Sources and Locale

| Role | Folder | Description |
|------|--------|-------------|
| Source 1 | /int | English .int — primary source of keys and reference strings |
| Source 2 | /est | Estonian .est — additional source when no matching .int in /int (same file name → .rut) |
| Localization | /rut | Russian translation files; one .rut per source file (.int or .est) |
| Reference | /rut_old | Old Russian localization. May be used for comparison. **Not a translation source:** strings from /rut_old must never be copied into .rut. |

Other locale folders (itt, det, frt, etc.) are not used in the pipeline.

### About the Old Russian column in glossaries

Entity glossary tables include an **Old Russian** column — strings from the old translation (/rut_old). This column is **for visual comparison only**. Use only sources (/int, /est) for translation; do not use Old Russian as source text for .rut.

## Namespaces / entities

List: [_GLOSSARIES_LIST.md](_GLOSSARIES_LIST.md). Groups: Game_*, UI_*, Lore_*, Tech_* (entity glossaries in [Glossary/](Glossary/)).

## Scripts

Scripts in `/scripts` are **canonical**: use them as-is for the steps that reference them. Do **not** recreate or reimplement; update a script only when the process/step changes, the script fails, or the file format differs.

| Script | Used in | Purpose |
|--------|---------|---------|
| [diff_rut_merge.py](../scripts/diff_rut_merge.py) | [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md) | When `git diff` reports binary for .rut (e.g. UTF-16): get key-level changes from merge and write \_diff_rut_result.json. |
| classify_status.ps1 | *(status/classification)* | *(document when used)* |

## Process

| Stage | Tool / method |
|-------|----------------|
| Analysis | Review .int/.est, [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) |
| Glossary | Entity glossaries, [GLOSSARY_RULES](GLOSSARY_RULES.md) |
| Validation | By glossary and [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md) |
| Translation | Manual, AI iterations when needed |
| Review | Manual |
| Integration | Copy .rut into game installation |
