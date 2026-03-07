# Localization Process (Russian locale)

> Cycle from analysis to integration. Sources: `/int`, `/est`. Target locale: `/rut`.

## Stages

0. **Sync and analyze incoming** — after the localizator commits to `main`, pull and merge into your branch (e.g. `Russian_Localization_Docs`); then analyze only what changed (diff or changed files since the last merge). **Output:** write [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) with the list of changed files and, for modified .rut, changed keys and new Russian values. See [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md) (agent directive).
1. **Validate .rut vs glossaries** — **Input:** [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) from step 0. Compare only those changed translation strings with entity glossaries: validate new text against Current Russian when set; fill Current Russian when empty. **Output:** write [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) with all validation issues and mismatches (glossary vs .rut, duplicated-key sync). See [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) (agent directive).
2. **Analyze existing** — review source .int/.est, identify files without .rut or with incomplete translation. Use [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md).
3. **Update glossary** — when new entities or terms appear: edit glossaries in [Glossary/](Glossary/) per [GLOSSARY_RULES](GLOSSARY_RULES.md), update [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md).
4. **Glossary validation** — ensure strings to be translated are covered in entity glossaries; consistent use of terms (see [validation rules](#validation-rules)).
5. **Translation** — **Input:** [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) from step 1 (issues and mismatches to fix at translator’s discretion). Manual editing of .rut; iterations with AI agent using glossaries when needed.
6. **Translation validation** — check against [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md): status (Untranslated, In Progress, Done, etc.), presence of `; EN:` for translatable keys, no Spanish placeholders.
7. **Review** — manual proofread and update status table (Verified).
8. **Integration** — copy .rut into the game installation.

## Validation rules

- **By glossary:** terms from entity glossaries (Game_*, UI_*, Lore_*, Tech_*) must be used consistently in .rut within each entity.
- **By file status:** for each .rut, determine Base File (.int or .est) and Status per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md); update counters on the status page when changes are made.
- **.rut format:** translatable strings as `; EN: Key="English"` + `Key="Russian"`; no translatable keys without `; EN:` or without Russian value.
- **Duplicated keys:** some keys exist in more than one .rut file (developer duplication); the game’s source is undefined. Keep a list of such keys ([DUPLICATED_KEYS](DUPLICATED_KEYS.md), [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md)) and **synchronize** the same Russian translation in every listed .rut file; when a new duplicate is found, add it to the list and sync.

## Key links

- [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md) — sync from main and analyze diff; writes [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) (agent directive)
- [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) — validate changed .rut vs glossaries using \_INCOMING_ANALYSIS.md, fill Current Russian; writes [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) (agent directive)
- [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) — handoff: changed files and .rut key/value list (step 0 → step 1)
- [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) — handoff: validation issues and mismatches for the translator (step 1 → translation)
- [LOC_CONFIG.md](LOC_CONFIG.md) — pipeline config
- [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) — status table
- [GLOSSARY_RULES](GLOSSARY_RULES.md) — entity glossary rules
- [LOCALIZATION_GLOSSARY](Glossary/LOCALIZATION_GLOSSARY.md) — process terms
