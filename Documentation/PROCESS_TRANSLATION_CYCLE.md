# Process: Translation Cycle (Current Game Version)

> Run this process when the **translator** has sent updated `.rut` files (e.g. merge from `main` or a patch). Goal: validate changes, update status and glossaries, produce a validation report and bug/checklist for the translator; repeat until all target files are Done and all issues are closed.

## When to run

- Translator committed/pushed `.rut` updates and you merged into your branch.
- You need to validate their work and produce a handoff (report + bugs/checklist) for the next round of fixes.

## Steps (agent directive)

1. **Sync and analyze incoming**
   - Follow [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md).
   - **Output:** [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md).

2. **Validate .rut vs glossaries**
   - Follow [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md).
   - **Input:** \_INCOMING_ANALYSIS.md.
   - **Output:** [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md); glossary Current Russian filled where empty; duplicated keys synced.

3. **Status and bug/checklist**
   - For each modified `.rut` in the diff:
     - Update [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md): Status (Untranslated, In Progress, Done, etc.) and Verified per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md).
     - Recalculate counters at the top (Total, Done, Verified, string counts).
   - Collect **bugs and checklist items** for the translator:
     - Validation issues from \_VALIDATION_REPORT.md (glossary vs .rut mismatch).
     - Duplicated keys that still need manual sync.
     - Missing `; EN:` for translatable keys.
     - Spanish placeholders left in `.rut`.
     - Any other rule violations from [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md) and [LOC_PROCESS](LOC_PROCESS.md) validation rules.

4. **Hand off to translator**
   - Provide: link to [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) and a clear list of bugs/checklist items to fix.
   - Translator edits `.rut` manually and returns updates.

5. **Repeat**
   - When the translator sends the next update, run from step 1 again.
   - Stop when all target files are **Done** and all reported bugs/checklist items are closed.

## Summary output (each cycle)

After each run, report:

- Changed files and keys (from \_INCOMING_ANALYSIS).
- Validation issues and duplicated-key actions (from \_VALIDATION_REPORT).
- Status table updates (which files changed status).
- **Bug list / checklist** for the translator (what to fix before the next cycle).
- Whether the cycle is complete (all Done, no open bugs) or another round is needed.

## Key links

- [LOC_PROCESS](LOC_PROCESS.md) — overall process (Process 2 described there too).
- [STEP_SYNC_AND_ANALYZE_INCOMING](STEP_SYNC_AND_ANALYZE_INCOMING.md) · [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md).
- [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) · [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md).
- [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) — handoff to translator.
