# Validation Report (for translator)

> **Produced by:** [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md); then processed in **Stage 1** ([STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md)) and sent to the translator in **Stage 2** ([PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md)).  
> **For:** The translator (human). Items in **For translator to fix** and **Discrepancies with updated term** are for you to fix at your discretion — align .rut to glossary or keep your wording and we update the glossary.

**Flow:** (1) The validation step adds all new **term / glossary consistency issues** to **New problems — unreviewed** (agent may add comments there). It also writes **language‑quality issues** and **duplicated‑keys follow‑ups** directly into the corresponding subsections of **For translator to fix** (these usually do **not** require Stage 1 decisions). (2) Stage 1: the **human** reviews *only* the list in **New problems — unreviewed** and decides per item — accept (→ Validated) or reject (→ For translator to fix); the agent only moves items when the human has decided. (3) Stage 2: the translator receives this file and fixes items in **For translator to fix** and **Discrepancies with updated term**. (4) On the next merge, we use this report as a **checklist** before re-running validation.

---

## Process verification run

**Scope of this run:** Checklist pass applied for merge `b2b2b2c98b0558be9e7dbc10279751839f27abb8` using `_INCOMING_ANALYSIS.md` and `_diff_rut_result.json`; items already fixed by this merge were removed from the sections below. Next, run validation for this merge to add any new issues.

**Files processed in checklist pass (from `_diff_rut_result.json`, in order):**

- rut/BR-Anubis.rut
- rut/CTF-AbsoluteZero.rut
- rut/CTF-BP2-Pistola.rut
- rut/CTF-FaceClassic.rut
- rut/CTF-Orbital2.rut
- rut/DM-BP2-GoopGod.rut
- rut/DM-Deck17.rut
- rut/DM-IronDeity.rut
- rut/Engine.rut
- rut/GUI2K4.rut
- rut/TUT-BR.rut
- rut/UTClassic.rut
- rut/UnrealGame.rut
- rut/XAdmin.rut
- rut/XInterface.rut
- rut/XVoting.rut
- rut/XWeapons.rut

**Duplicated keys:** To be checked against `[_DUPLICATED_KEYS_LIST.md](_DUPLICATED_KEYS_LIST.md)` during validation.

---

## New problems — unreviewed (to review in Stage 1)

*(All newly found **term / glossary consistency issues** from the validation step go **only** here. The **human** reviews this list in [STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md) and decides for each: accept → Validated, or reject → For translator to fix. The agent does not move items out of this section on its own; the agent may leave comments in the last column to help the human decide.)*

---

## Validated (accepted as new term)

*(Items reviewed in Stage 1 and **accepted** as valid; glossary was updated. Listed so the translator sees they were intentional.)*


| .rut file     | Key                     | Glossary (file · technical name)      | Was (glossary)   | Accepted (.rut value) |
| ------------- | ----------------------- | ------------------------------------- | ---------------- | --------------------- |
| rut/XWeapons.rut | [Redeemer]ItemName  | Game_Weapons.md · Redeemer           | (empty)          | Искупитель            |
| rut/XWeapons.rut | [RedeemerAmmo]ItemName | Game_Pickups.md · RedeemerAmmo     | (empty)          | Ядерная боеголовка    |


---

## For translator to fix

---

### Main issues to fix

*(Items moved here **only after the human has decided** in Stage 1 that the translator must fix them. Empty until review is done.)*


| .rut file    | Key | Glossary (file · technical name) | Glossary value | .rut value | Comment (optional) |
| ------------ | --- | -------------------------------- | -------------- | ---------- | ------------------ |
| *(none yet)* | —   | —                                | —              | —          | —                  |


---

### Discrepancies with updated term

*(After accepting a term and updating the glossary, the same term was found elsewhere with different wording. Translator: align these to the updated term.)*


| .rut file      | Key                                    | Expected (updated term)          | Current .rut value | Comment (optional)                                                                                                                                 |
| -------------- | -------------------------------------- | -------------------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| rut/GUI2K4.rut | [UT2K4SPTab_Profile]MultiKillsLabel[3] | Ультранасилие: / Ультра-насилие: | Ультранасилие:     | Style/case/punctuation difference vs updated UltraKill term; also decide on hyphen use (Ультранасилие: vs Ультра-насилие:) to stay consistent with Мульти-убийство:. |
| rut/XGame.rut  | [MultiKillMessage]KillString[3]        | УЛЬТРАНАСИЛИЕ!! / УЛЬТРА-НАСИЛИЕ!! | УЛЬТРАНАСИЛИЕ      | Style/punctuation inconsistency vs Мульти-убийство! (KillString[1]) and ULTRA KILL!!; also decide on hyphen use (УЛЬТРАНАСИЛИЕ!! vs УЛЬТРА-НАСИЛИЕ!!) for consistent multi‑kill terminology. |


---

### Language‑quality issues — typos and non‑Russian fragments


| .rut file              | Key                               | Glossary (file · technical name) | Glossary value | .rut value                                                                                                                                                                                                                                                                                                                                                                        | Comment (optional)                                                              |
| ---------------------- | --------------------------------- | -------------------------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| rut/CTF-AbsoluteZero.rut | [Volume24]LocationName          | —                                | —              | Puente del Искупитель                                                                                                                                                                                                                                                                                                                                                             | Mixed Spanish/Russian; expected fully Russian location name.                   |
| rut/CTF-AbsoluteZero.rut | [Volume25]LocationName          | —                                | —              | Torre Francotirador Azul: Lado del Искупитель                                                                                                                                                                                                                                                                                                                                    | Mixed Spanish/Russian; expected fully Russian location name.                   |
| rut/CTF-AbsoluteZero.rut | [Volume27]LocationName          | —                                | —              | Torre Francotirador Roja: Lado del Искупитель                                                                                                                                                                                                                                                                                                                                    | Mixed Spanish/Russian; expected fully Russian location name.                   |
| rut/CTF-FaceClassic.rut  | [ZoneInfo21]LocationName        | —                                | —              | Desván de Искупитель Azul                                                                                                                                                                                                                                                                                                                                                        | Mixed Spanish/Russian; expected fully Russian location name.                   |
| rut/CTF-FaceClassic.rut  | [ZoneInfo3]LocationName         | —                                | —              | Desván de Искупитель Rojo                                                                                                                                                                                                                                                                                                                                                        | Mixed Spanish/Russian; expected fully Russian location name.                   |
| rut/DM-Deck17.rut       | [ZoneInfo58]LocationName         | —                                | —              | Ascensores de arriba (Искупитель)                                                                                                                                                                                                                                                                                                                                                | Mixed Spanish/Russian; expected fully Russian location name.                   |
| rut/DM-IronDeity.rut    | [LevelSummary]Description        | —                                | —              | Este estadio grande e imponente es más apropiado para dos equipos de combatientes de tamaño medio. Procura que no te pillen corriendo por la estrecha sala del ventilador y asegúrate de controlar el Doble Daño. Por último, ¡estate atento al Искупитель oculto!                                                                                                               | Spanish sentence with Russian term; expected fully Russian map description.    |
| rut/XWeapons.rut        | [Redeemer]Description            | —                                | —              | La primera vez que veas en acción este dispositivo nuclear en miniatura, estarás de acuerdo en que es el arma más poderosa del Torneo.|Con el disparo primario, lanza un misil lento pero tremendamente devastador; y ten cuidado de estar fuera del impresionante radio de acción del Искупитель antes de que impacte. El disparo secundario te permite guiar el cohete personalmente, con una vista desde el mismo.||De todas maneras, no olvides que mientras apuntas el proyectil del Искупитель, eres vulnerable. Debido al enorme volumen de su munición, se queda sin cargas después de un disparo. | Spanish description with Russian term; expected fully Russian weapon description. |
| rut/XWeapons.rut        | [RedeemerAmmo]ItemName           | —                                | —              | Munición de Искупитель                                                                                                                                                                                                                                                                                                                                                           | Mixed Spanish/Russian; expected fully Russian item name.                       |
| rut/XWeapons.rut        | [RedeemerPickup]PickupMessage    | —                                | —              | Has recogido el Искупитель.                                                                                                                                                                                                                                                                                                                                                      | Mixed Spanish/Russian; expected fully Russian pickup message.                  |


---

### Duplicated keys

- *(Not checked yet in this cycle; will be filled if any duplicated keys are found and synced based on `_DUPLICATED_KEYS_LIST.md`.)*

---

