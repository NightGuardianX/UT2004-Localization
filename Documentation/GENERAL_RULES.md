# General Documentation Rules

> UT2004 localization pipeline (Russian locale). 

## Principles

1. **One card, one scope** — a document describes a single element; lists and indexes go in `_LIST*` (or equivalent index files).
2. **Link, don’t repeat** — information in one place; others reference it.
3. **At most five links** in the “Key links” section; full lists live in indexes.
4. **Templates are mandatory** — new documents only from `_TEMPLATE_*.md` 
5. **Prefix `_`** — for index and template files/folders.
6. **No spaces in names** — use underscores only.

## Glossaries

- Term definitions — **only in glossaries**; other documents link to them.
- Glossary index: [_GLOSSARIES_LIST.md](_GLOSSARIES_LIST.md).
- For new terms — add to the appropriate glossary.

## Config and indexes

- [LOC_CONFIG.md](LOC_CONFIG.md) — languages (ru only), sources (/int, /est), locale (/rut), entities, process.
- [_LANGUAGES_LIST.md](_LANGUAGES_LIST.md) — language list.
- [_PROJECT_MAP.md](_PROJECT_MAP.md) — project map.
