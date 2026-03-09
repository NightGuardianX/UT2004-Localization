# Localization Process (Russian locale)

> Cycle from analysis to handoff. Sources: `/int`, `/est`. Target locale: `/rut`.  
> **In this project:** the team and the agent handle analytics, incoming data, glossaries, and specs/checklists/bug lists. **The translator** edits `.rut` files manually; we do not rewrite localization files in this repo.

## Roles

| Role | Responsibility |
|------|----------------|
| **Project (you + agent)** | Sync and analyze incoming changes; maintain glossaries; validate translations; produce _VALIDATION_REPORT, checklists, and bug lists for the translator. |
| **Translator** | All manual editing of `.rut` files; fixes issues from reports at their discretion; returns updated `.rut` for the next validation cycle. |

---

## Initial setup (already done)

The following has been completed once and does not need to be repeated unless the game structure changes significantly:

- **Structure analysis** — all localization files and their relationship to sources (`.int`/`.est`) are known; [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) and status rules are in place.
- **Glossaries** — entity glossaries in [Glossary/](Glossary/) are created and indexed in [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md).

**Glossary updates** are needed only when:
- The game is updated and **new strings** (keys/entities/terms) appear, or
- New terms are introduced during the translation cycle and must be standardized.

---

## Two ongoing processes

### Process 1: Localization update when the game is updated

**Trigger:** New game patch or update; localizator commits to `main`; you merge into your branch.

**Goal:** Incoming changes may add new keys or files. There may be no new strings; if there are, we add new keys/concepts to the glossary as needed, then optionally start the translation cycle.

| Step | Who | Action |
|------|-----|--------|
| 1 | Agent / you | **Sync and analyze incoming** — pull/merge `main`, analyze only what changed (diff). **Output:** [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md). See [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md). |
| 2 | Agent / you | **Validate .rut vs glossaries** — use \_INCOMING_ANALYSIS.md; validate changed strings against entity glossaries; fill Current Russian when empty; sync [duplicated keys](DUPLICATED_KEYS.md). **Output:** [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md). See [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md). |
| 3 | Agent / you | If **new keys or entities** appeared: add or update glossaries per [GLOSSARY_RULES](GLOSSARY_RULES.md), update [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md). |
| 4 | You | If new translatable content exists: hand off to **Process 2 (translation cycle)**. If no new strings, stop after step 2–3. |

**Agent directive (full Process 1):** When asked to “update localization for a game update” or “process incoming game patch”:
1. Run [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md) → produce \_INCOMING_ANALYSIS.md.
2. Run [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md) → produce \_VALIDATION_REPORT.md.
3. If the analysis shows new keys/entities without glossary coverage, add or update entries in [Glossary/](Glossary/) and [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md).
4. Summarize: what changed, whether there are new strings for translation, and whether to start the translation cycle (Process 2).

---

### Process 2: Translation cycle (current game version)

**Trigger:** Translator sends updated `.rut` files (e.g. commits to `main` and you merge, or they provide a patch).

**Goal:** Validate their changes, collect artifacts and bugs, produce a report and checklists; hand off to the translator; repeat until all target files are Done and all checklist bugs are closed.

| Step | Who | Action |
|------|-----|--------|
| 1 | Agent / you | **Sync and analyze incoming** — same as Process 1: merge, diff, **Output:** [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md). [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md). |
| 2 | Agent / you | **Validate .rut vs glossaries** — compare changed translations with glossaries; fill Current Russian where empty; sync duplicated keys. **Output:** [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md). [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md). |
| 3 | Agent / you | **Check against status and rules** — update [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) for changed files (Status, Verified); ensure rules from [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md): `; EN:` present, no Spanish placeholders, status (Untranslated / In Progress / Done). Collect **bugs and checklist items** (e.g. glossary mismatches, duplicated-key sync, missing `; EN:`, Spanish left). |
| 4 | You | **Hand off to translator** — send \_VALIDATION_REPORT.md plus bug list/checklist. Translator fixes `.rut` manually and returns updates. |
| 5 | Repeat | From step 1 until all target files are **Done** and all reported bugs/checklist items are closed. |

**Agent directive (full Process 2):** When asked to “run a translation cycle” or “validate translator’s update and prepare handoff”:
1. Run [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md) → \_INCOMING_ANALYSIS.md.
2. Run [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md) → \_VALIDATION_REPORT.md.
3. For each modified .rut in the diff: update [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md); list any bugs (glossary mismatch, duplicated key not synced, Spanish, missing `; EN:`, wrong status).
4. Summarize for the translator: link to \_VALIDATION_REPORT.md, list of bugs/checklist items to fix, and which files still need work.

---

## Validation rules

- **By glossary:** Terms from entity glossaries (Game_*, UI_*, Lore_*, Tech_*) must be used consistently in `.rut` within each entity.
- **By file status:** For each `.rut`, set Base File (`.int` or `.est`) and Status per [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md); update counters on the status page when the table changes.
- **.rut format:** Translatable strings as `; EN: Key="English"` + `Key="Russian"`; no translatable keys without `; EN:` or without Russian value.
- **Duplicated keys:** Some keys exist in more than one `.rut` file. Keep [DUPLICATED_KEYS](DUPLICATED_KEYS.md) and [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md); **synchronize** the same Russian translation in every listed `.rut`; when a new duplicate is found, add it to the list and sync.

---

## Key links

| Purpose | Document |
|--------|----------|
| Sync and analyze diff | [STEP_01_SYNC_AND_ANALYZE_INCOMING](STEP_01_SYNC_AND_ANALYZE_INCOMING.md) → writes [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) |
| Validate and glossary | [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md) → writes [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) |
| Handoff (step 0→1) | [\_INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md) |
| Handoff (to translator) | [\_VALIDATION_REPORT.md](_VALIDATION_REPORT.md) |
| Full process: game update | [PROCESS_GAME_UPDATE](PROCESS_GAME_UPDATE.md) |
| Full process: translation cycle | [PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md) |
| Config | [LOC_CONFIG.md](LOC_CONFIG.md) |
| File status | [FILE_TRANSLATION_STATUS](FILE_TRANSLATION_STATUS.md) · [FILE_TRANSLATION_STATUS_RULES](FILE_TRANSLATION_STATUS_RULES.md) |
| Glossary | [GLOSSARY_RULES](GLOSSARY_RULES.md) · [_GLOSSARIES_LIST](_GLOSSARIES_LIST.md) · [Glossary/](Glossary/) |
| Duplicated keys | [DUPLICATED_KEYS](DUPLICATED_KEYS.md) · [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md) |
| Process terms | [Glossary/LOCALIZATION_GLOSSARY](Glossary/LOCALIZATION_GLOSSARY.md) |
