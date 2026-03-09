# Step: Sync and Analyze Incoming Changes

> After the localizator commits to `main` and you merge into `Russian_Localization_Docs`, analyze **only what changed** (diff or changed files). Do not read entire localization files.

## Context

- **Localizator** commits changes to branch `main`.
- **You** pull `main` and merge it into your branch `Russian_Localization_Docs`.
- **Goal:** Understand what changed without scanning all .int/.est/.rut files — use the merge as the scope.

## Reference for the diff

The changes to analyze are exactly those introduced by the **last merge of `main` into `Russian_Localization_Docs`**. That merge commit has two parents: the previous tip of your branch and the tip of `main` at merge time. The diff between “before merge” and “after merge” on your branch is the incoming change set.

### Encoding and "binary" diff

The content of `.rut` files is text, not binary. Git may still show `Binary files a/rut/… and b/rut/… differ` when:

- **Encoding** — files are stored as **UTF-16** (or another encoding that introduces NUL bytes or a BOM). Git treats such files as binary and does not produce a line diff.
- **Effect** — you cannot parse "changed keys" and "new Russian value" from the diff, so Step 2 and the handoff lose key-level detail.

**Recommendation:** Store `.rut` files in the repo as **UTF-8** (with or without BOM, consistently). Then `git diff` will show a normal text diff and the step can extract changed keys and Russian values from it.

**When .rut are UTF-16 (git reports binary):** Use the **existing** script **scripts/diff_rut_merge.py**. Do not recreate or reimplement it; update the script only if the step/process changes, the script fails, or the .rut format differs. From repo root: `python scripts/diff_rut_merge.py MERGE -o Documentation/_diff_rut_result.json` (replace `MERGE` with the merge commit hash). Each run **overwrites** \_diff_rut_result.json (no append). The script decodes UTF-16 blobs from git, diffs text, and writes per-file lists of `{ "key": "[Section]KeyName", "new_value": "Russian text" }`. Then write [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) with the merge reference, changed files, and a pointer to \_diff_rut_result.json so Step 2 can use it as the source of changed keys and new values.

---

## Agent directive

When asked to analyze incoming localization changes (or to “see what changed after merging main”):

1. **Assume** you are on branch `Russian_Localization_Docs` and have already merged `main` (so the latest commit on your branch is a merge commit, or the last merge is in recent history).

2. **Find the last merge commit** where `main` was merged into the current branch:
   - Run: `git log --merges -1 --first-parent`
   - This gives the most recent merge *into* the current branch (e.g. `Russian_Localization_Docs`). Call this commit **M**.

3. **Define the change set** using that merge:
   - **M^1** = first parent of M = state of `Russian_Localization_Docs` before the merge.
   - **M** = state after the merge (incoming changes included).
   - The **incoming changes** are exactly: **M^1..M** (or equivalently the diff of M against M^1).

4. **Get only what changed** — do not read full file contents:
   - **List of changed files:**  
     `git diff --name-only M^1..M`
   - **Unified diff (for analysis):**  
     `git diff M^1..M`
   - Restrict to locale/source folders if needed, e.g. paths under `int/`, `est/`, `rut/`.
   - If Git reports **binary** for `.rut` files, the cause is likely encoding (e.g. UTF-16); see "Encoding and binary diff" above. Then **run the existing script** [scripts/diff_rut_merge.py](../scripts/diff_rut_merge.py) to get key-level data — do not recreate or reimplement; update the script only on process/step changes or script failures.

5. **Analyze only that diff / those files:**
   - Use the diff output (and if needed, read only the **changed regions** of the listed files).
   - Do **not** load or scan entire .int/.est/.rut files for the whole repo.
   - Summarize: which files changed, what kind of changes (new keys, modified strings, new files, deleted keys), and whether any changes affect [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) or glossaries ([_GLOSSARIES_LIST](_GLOSSARIES_LIST.md)).

6. **Output** (adapt as needed):
   - Short list of changed files (and path filters used).
   - Summary of change types (e.g. new keys in X, edits in Y, new .rut/.int files).
   - Any follow-up actions: status table updates, glossary updates (e.g. [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) for modified .rut), sync of [duplicated keys](DUPLICATED_KEYS.md) if any changed key is in the list, or translation work suggested by the diff.

7. **Write the handoff artifact** for the next step: **[\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md)** in `Documentation/`. This file is the **input** for [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md). It must contain:
   - **Merge reference:** the merge commit hash **M** used for the diff (e.g. `MERGE=<hash>`). If possible, also write the merge commit timestamp (e.g. from `git log --merges -1 --first-parent --format=%cI` or `%ci`).
   - **Changed files:** list of all changed files in the merge (at least under `int/`, `est/`, `rut/`), or a clear subset (e.g. “Modified .rut only: …”).
   - **For each modified .rut file:** list of **changed keys** and the **new Russian value** for each (parsed from the diff). Format can be a small table or `Key => "Russian text"` per line so the next step can work without re-running git or re-parsing the diff.
   - **Short summary:** change types (new keys, edited strings, new files) and any note that affects [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) or [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md).
   - If no .rut files changed, the file should state that clearly so step 2 can skip or only run duplicated-keys checks.

## One-shot command reference

From repo root, on `Russian_Localization_Docs` after merging `main`:

```bash
# Last merge commit into current branch (hash and timestamp for handoff)
MERGE=$(git log --merges -1 --first-parent --format=%H)
MERGE_DATE=$(git log --merges -1 --first-parent --format=%cI)   # ISO 8601; use %ci for short format

# Changed files only
git diff --name-only ${MERGE}^1..${MERGE}

# Full diff (incoming only)
git diff ${MERGE}^1..${MERGE}
```

Use these to drive analysis; then analyze only the diff or the changed file regions, not the entire localization set.

## Key links

- [LOC_PROCESS.md](LOC_PROCESS.md) — process stages (this step feeds into analysis/glossary/translation).
- [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) — handoff file written by this step; consumed by [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md).
- [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md) — next: validate changed .rut strings against glossaries and fill Current Russian (uses \_INCOMING_ANALYSIS.md).
- [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) — update if new/changed files affect status.
- [_GLOSSARIES_LIST.md](_GLOSSARIES_LIST.md) — check if new entities or terms need glossary entries.
