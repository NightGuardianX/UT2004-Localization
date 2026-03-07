# Project Map

> Navigation for the UT2004 localization repository (Russian locale). **All project documentation** lives in this folder `Documentation/`; locale folders (/int, /est, /rut, etc.) contain translation data and are separate from documentation.

## Locales and Sources

| Folder | Purpose |
|--------|---------|
| /int | Source files (English), primary source of keys and strings |
| /est | Additional source when no corresponding .int exists in /int |
| /rut | Russian localization (.rut) |

Language list: [_LANGUAGES_LIST.md](_LANGUAGES_LIST.md).

## Documentation

| Item | Description |
|------|-------------|
| [LOC_CONFIG.md](LOC_CONFIG.md) | Pipeline config (sources, language, entities, process) |
| [LOC_PROCESS.md](LOC_PROCESS.md) | Process: analysis → glossary → validation → translation → review → integration |
| [GENERAL_RULES.md](GENERAL_RULES.md) | General documentation rules |
| [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) | Table of .rut file translation statuses |
| [_GLOSSARIES_LIST.md](_GLOSSARIES_LIST.md) | Glossary index and entity list with links to glossaries |
| [GLOSSARY_RULES](GLOSSARY_RULES.md) · [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md) | Rules (file status, entity glossaries) |
| [DUPLICATED_KEYS](DUPLICATED_KEYS.md) · [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md) | Keys duplicated across .rut files; list and sync rules |
| [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) | Handoff: changed files and .rut key/value list (written by Sync step, read by Validate step) |
| [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) | Handoff: validation issues and mismatches for the translator (written by Validate step, read by translator) |
| [Glossary/](Glossary/) | Entity glossaries + [LOCALIZATION_GLOSSARY.md](Glossary/LOCALIZATION_GLOSSARY.md) |

## Key Links

- Config: [LOC_CONFIG.md](LOC_CONFIG.md)
- Process: [LOC_PROCESS.md](LOC_PROCESS.md)
