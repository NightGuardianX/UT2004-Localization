# Localization Process (Russian locale)

> Cycle from analysis to integration. Sources: `/int`, `/est`. Target locale: `/rut`.

## Stages

1. **Analyze existing** — review source .int/.est, identify files without .rut or with incomplete translation. Use [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md).
2. **Update glossary** — when new entities or terms appear: edit glossaries in [Glossary/](Glossary/) per [GLOSSARY_RULES](GLOSSARY_RULES.md), update [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md).
3. **Glossary validation** — ensure strings to be translated are covered in entity glossaries; consistent use of terms (see [validation rules](#validation-rules)).
4. **Translation** — manual editing of .rut; iterations with AI agent using glossaries when needed.
5. **Translation validation** — check against [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md): status (Untranslated, In Progress, Done, etc.), presence of `; EN:` for translatable keys, no Spanish placeholders.
6. **Review** — manual proofread and update status table (Verified).
7. **Integration** — copy .rut into the game installation.

## Validation rules

- **By glossary:** terms from entity glossaries (Game_*, UI_*, Lore_*, Tech_*) must be used consistently in .rut within each entity.
- **By file status:** for each .rut, determine Base File (.int or .est) and Status per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md); update counters on the status page when changes are made.
- **.rut format:** translatable strings as `; EN: Key="English"` + `Key="Russian"`; no translatable keys without `; EN:` or without Russian value.

## Key links

- [LOC_CONFIG.md](LOC_CONFIG.md) — pipeline config
- [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) — status table
- [GLOSSARY_RULES](GLOSSARY_RULES.md) — entity glossary rules
- [LOCALIZATION_GLOSSARY](Glossary/LOCALIZATION_GLOSSARY.md) — process terms
