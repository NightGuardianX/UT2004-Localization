# Localization Glossary

> Terms used in the localization pipeline (UT2004 Russian locale). Game entity terms live in entity glossaries (see [_GLOSSARIES_LIST](../_GLOSSARIES_LIST.md)).

## Terms

| Term | Definition |
|------|------------|
| **Base File** | Source file from which a .rut is translated: .int from `/int` or .est from `/est` with the same base name (e.g. `Foo.int` or `Foo.est` → `Foo.rut`). |
| **Validation** | Checking the translation against entity glossaries and [FILE_TRANSLATION_STATUS_RULES](../FILE_TRANSLATION_STATUS_RULES.md) (format, status). |
| **Entity glossary** | Document in [Documentation/Glossary/](.) with terms for one group (Game_*, UI_*, Lore_*, Tech_*). |
| **Integration** | Copying finished .rut files into the game installation. |
| **Source language** | Language of strings in `/int` (English). For files without .int, the source may be `/est`. |
| **Key** | Field name in .int/.est/.rut (e.g. `GameName=`, `Caption=`). The translatable value is the quoted string to the right of `=`. |
| **Localization (file)** | A .rut file in `/rut` — Russian translation of one source .int or .est. |
| **Old Russian (column)** | In entity glossary tables — string from the old Russian localization (/rut_old). For visual comparison only; **never use as source text for translation** into .rut. |
| **/rut_old** | Folder with the old Russian localization. May be used for comparison; **not a translation source** — do not copy strings from there into .rut. |
| **Status (file)** | Classification per [FILE_TRANSLATION_STATUS_RULES](../FILE_TRANSLATION_STATUS_RULES.md): No .int, Untranslated, Spanish!!!, No Caption, In Progress, Done. |
| **Entity** | A group of terms in a glossary (maps, weapons, menus, etc.). List: [_GLOSSARIES_LIST](../_GLOSSARIES_LIST.md). |
| **Target language** | Russian (ru); output locale is the `/rut` folder. |
| **`; EN:`** | Comment line in .rut before the translation, storing the reference English string (from .int/.est). Required for translatable keys. |

## Key links

- [LOC_PROCESS](../LOC_PROCESS.md) — localization process
- [LOC_CONFIG](../LOC_CONFIG.md) — pipeline config
- [_GLOSSARIES_LIST](../_GLOSSARIES_LIST.md) — index of all glossaries
