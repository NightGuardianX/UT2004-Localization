# Incoming Analysis (handoff from Sync step)

> **Produced by:** [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md).  
> **Consumed by:** [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md).

This file is **overwritten** each time step 0 (Sync and Analyze Incoming) is run. It provides the merge reference, list of changed files, and for each modified .rut file the changed keys and new Russian values, so step 1 (Validate and Update Glossary) can work without re-running git or re-parsing the diff.

---

## Merge reference

- **Merge commit M:** *(hash from `git log --merges -1 --first-parent --format=%H`)*
- **As of:** *(date or “after merging main into Russian_Localization_Docs”)*

---

## Changed files

*(List from `git diff --name-only M^1..M` restricted to int/, est/, rut/ — or “Modified .rut only” list.)*

- *(e.g. rut/XGame.rut, int/Some.int)*

---

## Modified .rut — changed keys and new Russian values

*(For each modified .rut file, list key => new Russian value. Example format.)*

### rut/Filename.rut

| Key | New Russian value |
|-----|-------------------|
| Section.Key | "Новый русский текст" |

*(If no .rut files changed, state: “No .rut files modified in this merge.”)*

---

## Summary

- **Change types:** *(e.g. new keys in X, edits in Y, new files)*
- **Affects:** *(FILE_TRANSLATION_STATUS, _GLOSSARIES_LIST, duplicated keys — or “None”)*
