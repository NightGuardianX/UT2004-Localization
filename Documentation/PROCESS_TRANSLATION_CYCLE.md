# Process: Translation Cycle (Current Game Version)

> Run this process when the **translator** has sent updated `.rut` files (e.g. merge from `main` or a patch). Goal: validate changes, update status and glossaries, produce a validation report and bug/checklist for the translator; repeat until all target files are Done and all issues are closed.

## When to run

- Translator committed/pushed `.rut` updates and you merged into your branch.
- You need to validate their work and produce a handoff (report + bugs/checklist) for the next round of fixes.

## Steps (agent directive)

1. **Sync and analyze incoming**
   - Follow [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md).
   - **Output:** [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md), [\_diff_rut_result.json](_diff_rut_result.json) (if .rut diff was used).

2. **Checklist pass (when repeating)**  
   - **Only** when this is a **repeat** cycle (translator sent a new merge) and [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) **already exists** from the previous cycle:  
   - Check whether the **new** diff (from step 1) touches any keys or strings listed in the current \_VALIDATION_REPORT.  
   - If yes: use the report as a **checklist** — for each listed item, verify if the translator’s change fixed it in the new diff; remove or mark as resolved those that are fixed.  
   - **Important:** Do this **before** step 3 (validate) adds new items from the new \_diff_rut_result, so the same issues are not re-added and the process does not loop.

3. **Validate .rut vs glossaries**
   - Follow [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md).
   - **Input:** \_INCOMING_ANALYSIS.md (and \_diff_rut_result.json where applicable).
   - **Output:** [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) — when a previous report existed and a checklist pass was done, **merge**: keep remaining open items (not fixed in the new diff), add only **new** validation issues from this run; do not re-add items that were just resolved in the checklist. Glossary Current Russian filled where empty; duplicated keys synced.

4. **Review report with agent (Stage 1)**  
   - Follow [STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md).  
   - Go through **Validation step output (glossary vs .rut)** by item or small thematic blocks. For each: accept as valid (update glossary, search for inconsistencies, move to **Validated (accepted as new term)** and add any other occurrences to **Discrepancies with updated term**) or leave in **For translator to fix**.  
   - **Output:** \_VALIDATION_REPORT.md updated with categories [Validated (accepted as new term)], [Discrepancies with updated term], [For translator to fix]; glossaries updated where terms were accepted.

5. **Status and bug/checklist**
   - For each modified `.rut` in the diff:
     - Update [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md): Status and Verified per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md).
     - Recalculate counters at the top.
   - Collect **bugs and checklist items** for the translator from \_VALIDATION_REPORT (sections **For translator to fix**, **Discrepancies with updated term**), plus duplicated keys, missing `; EN:`, Spanish placeholders, and other rules per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md) and [LOC_PROCESS](LOC_PROCESS.md).

6. **Hand off to translator (Stage 2)**
   - Send [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) (with all categories and optional comments) and the clear list of bugs/checklist items.
   - Translator edits `.rut` manually and returns updates.

7. **Repeat**
   - When the translator sends the next update, run from **step 1** again. In step 2 (checklist pass), use the existing report as a checklist before step 3 (validate) runs.
   - Stop when all target files are **Done** and all reported bugs/checklist items are closed.

## Summary output (each cycle)

After each run, report:

- Changed files and keys (from \_INCOMING_ANALYSIS).
- Checklist pass (if any): which report items were resolved by the new diff.
- Validation issues and report categories (from \_VALIDATION_REPORT): Validation step output, Validated (accepted), Discrepancies with updated term, For translator to fix, Duplicated keys.
- Status table updates (which files changed status).
- **Bug list / checklist** for the translator (what to fix before the next cycle).
- Whether the cycle is complete (all Done, no open bugs) or another round is needed.

## Key links

- [LOC_PROCESS](LOC_PROCESS.md) — overall process (Process 2 described there too).
- [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md) · [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md) · [STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md).
- [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) · [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md).
- [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) — structure and categories; handoff to translator (Stage 2).
