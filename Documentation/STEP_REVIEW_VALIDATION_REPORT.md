# Step: Review _VALIDATION_REPORT with Agent (Stage 1)

> After [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) has produced [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md), process the report in two stages. **Stage 1** (this step): the **human** reviews the unreviewed list and decides what to do with each item; the agent applies those decisions. **Stage 2**: send the final report to the translator for manual fixes.

## Purpose

- **Stage 1:** The **human** reviews the list **New problems — unreviewed** and decides for each item: accept (→ Validated, glossary updated) or reject (→ For translator to fix). The **agent must NOT** move items to Validated or For translator to fix on its own; it only moves items when the human has stated the decision.
- **Stage 2:** The translator receives a single report with all open issues and optional comments.

## Report categories

| Section in \_VALIDATION_REPORT | Meaning |
|--------------------------------|--------|
| **New problems — unreviewed (to review in Stage 1)** | All newly found validation issues from the validation step go **only** here. The **human** validates this list in Stage 1 and tells the agent what to do with each item. The agent may add comments in the Comment column; the agent must **not** move items out of this section on its own. |
| **Validated (accepted as new term)** | Items that the **human** accepted in Stage 1. Glossary updated; row moved here from "New problems — unreviewed" after the human's decision. |
| **Discrepancies with updated term** | After accepting a term, same term found elsewhere with different wording; for the translator to align. |
| **For translator to fix** | Items that the **human** rejected in Stage 1. Row moved here from "New problems — unreviewed" only after the human has said to send to translator. |
| **Duplicated keys** | Unchanged from validation step: sync status or manual follow-up. |
| **Other for review** | Optional: keys with no glossary row, suggestions, etc. |

## Agent directive (Stage 1)

When asked to review \_VALIDATION_REPORT with the agent (or to "process validation report Stage 1"):

1. **Do not move items on your own.** All items in **New problems — unreviewed** stay there until the **human** decides for each one. You must **not** pre-move anything to "For translator to fix" or "Validated".
2. **Work with the human** — by item or in small blocks. For each item (or group) the human reviews, wait for the human's decision:
   - **If the human accepts the change as valid:** update the glossary, search for inconsistent uses elsewhere (add to Discrepancies if found), then move the item from "New problems — unreviewed" to **Validated (accepted as new term)**.
   - **If the human rejects (send to translator):** move the item from "New problems — unreviewed" to **For translator to fix**; optionally keep or add a comment for the translator.
3. **Do not** add new rows from a new _diff_rut_result or a new validation run until the [checklist pass](PROCESS_TRANSLATION_CYCLE.md) has been done for the current report.
4. After the human has processed all items in "New problems — unreviewed", the report is ready for **Stage 2**: hand off to the translator.

## Output

- **\_VALIDATION_REPORT.md** updated: items distributed into **Validated (accepted as new term)**, **Discrepancies with updated term**, and **For translator to fix** only after the human has decided each item; glossary files updated where terms were accepted.
- No new validation run is triggered in the same cycle; the next run happens after the translator returns changes (see Process: Translation Cycle, checklist then re-validation).

## Key links

- [PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md) — where Stage 1 and Stage 2 sit; checklist use on next merge.
- [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) — produces the raw validation output.
- [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) — artifact structure and categories.
