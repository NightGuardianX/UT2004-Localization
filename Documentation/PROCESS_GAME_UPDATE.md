# Process: Localization Update When the Game Is Updated

> Run this process when a **game patch or update** is released and the localizator has committed changes to `main`. Goal: analyze incoming changes, update glossaries if new keys/entities appear, and optionally start the translation cycle.

## When to run

- You merged `main` (with game/localization updates) into your branch (e.g. `Russian_Localization_Docs`).
- You need to know what changed and whether new strings require glossary updates or translation work.

## Steps (agent directive)

1. **Sync and analyze incoming**
   - Follow [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md).
   - **Output:** [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) with merge reference, changed files, and for modified `.rut`: changed keys and new Russian values.

2. **Validate .rut vs glossaries**
   - Follow [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md).
   - **Input:** \_INCOMING_ANALYSIS.md.
   - **Output:** [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md); glossary Current Russian filled where empty; duplicated keys synced.

3. **Glossary expansion (if needed)**
   - If the analysis shows **new keys or entities** that have no glossary entry:
     - Add or update entity glossaries in [Glossary/](Glossary/) per [GLOSSARY_RULES](GLOSSARY_RULES.md).
     - Update [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md).
   - If nothing new: skip.

4. **Decision**
   - If there are **new translatable strings** (new keys, new files): hand off to **[PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md)** so the translator can work on them.
   - If there are **no new strings**: process ends after steps 1–3; optionally summarize for the user.

## Summary output

After running, report:

- What changed (files, key counts, new files).
- Whether glossaries were updated and which ones.
- Whether the translation cycle (Process 2) should be started and why or why not.

## Key links

- [LOC_PROCESS](LOC_PROCESS.md) — overall process (Process 1 described there too).
- [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md) · [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md).
- [PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md) — next when new strings exist.
