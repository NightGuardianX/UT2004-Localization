# Validation Report (for translator)

> **Produced by:** [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md).  
> **For:** The translator (human). All issues and mismatches below are for you to fix **at your discretion** — align .rut to glossary, or update the glossary to match .rut, as you see fit.

This file is **overwritten** each time the Validate step runs. It lists only problems and follow-ups; no need to list items that already match.

---

## Validation issues (glossary vs .rut)

*(Rows where the glossary has **Current Russian** set but the new .rut text disagrees — different term or meaning. Translator decides: change .rut to match glossary, or update glossary and keep .rut.)*

| .rut file | Key | Glossary (file · technical name) | Glossary value | .rut value |
|-----------|-----|----------------------------------|----------------|------------|
| *(e.g. rut/XGame.rut)* | *(Section.Key)* | *(e.g. Game_Adrenaline.md · XGame.MutNoAdrenaline)* | *(Current Russian from glossary)* | *(current text in .rut)* |

*(If none: leave empty or write “None.”)*

---

## Duplicated keys

*(Keys that appear in more than one .rut file. Note what was synced (same Russian in all listed files) or what still needs manual sync. If a new duplicate was added to [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md), list it and the agreed Russian.)*

- *(e.g. Key `XGame.SomeKey` — synced in rut/XGame.rut, rut/Other.rut with value "…".)*
- *(Or: “No duplicated-key follow-up.”)*

---

## Other for review

*(Optional: keys with no glossary row, suggested term changes, or any note for the translator.)*

- *(or “None.”)*

---

*If there are no validation issues and no duplicated-key follow-up, this report will state: “No issues for translator; all checked strings match glossaries.”*
