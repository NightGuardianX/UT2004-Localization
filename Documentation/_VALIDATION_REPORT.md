# Validation Report (for translator)

> **Produced by:** [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md); then processed in **Stage 1** ([STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md)) and sent to the translator in **Stage 2** ([PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md)).  
> **For:** The translator (human). Items in **For translator to fix** and **Discrepancies with updated term** are for you to fix at your discretion — align .rut to glossary or keep your wording and we update the glossary.

**Flow:** (1) The validation step adds all new **term / glossary consistency issues** to **New problems — unreviewed** (agent may add comments there). It also writes **language‑quality issues** and **duplicated‑keys follow‑ups** directly into the corresponding subsections of **For translator to fix** (these usually do **not** require Stage 1 decisions). (2) Stage 1: the **human** reviews *only* the list in **New problems — unreviewed** and decides per item — accept (→ Validated) or reject (→ For translator to fix); the agent only moves items when the human has decided. (3) Stage 2: the translator receives this file and fixes items in **For translator to fix** and **Discrepancies with updated term**. (4) On the next merge, we use this report as a **checklist** before re-running validation.

---

## Process verification run

**Scope of this run:** Not yet executed for this merge. Start validation from scratch using `_INCOMING_ANALYSIS.md` and `_diff_rut_result.json`; all sections below are initially empty and will be filled by the current validation cycle.

**Files processed (from `_diff_rut_result.json`, in order):**

- *(None yet — no files validated in this cycle.)*

**Duplicated keys:** To be checked against [`_DUPLICATED_KEYS_LIST.md`](_DUPLICATED_KEYS_LIST.md) during validation.

---

## New problems — unreviewed (to review in Stage 1)

*(All newly found **term / glossary consistency issues** from the validation step go **only** here. The **human** reviews this list in [STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md) and decides for each: accept → Validated, or reject → For translator to fix. The agent does not move items out of this section on its own; the agent may leave comments in the last column to help the human decide.)*


| .rut file      | Key                                    | Glossary (file · technical name) | Glossary value | .rut value       | Comment (optional)                                                                                |
| -------------- | -------------------------------------- | -------------------------------- | -------------- | ---------------- | ------------------------------------------------------------------------------------------------- |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[8]        | Game_Abilities.md · Strafe Toggle     | Переключение движения        | Переключение движения боком   | Term change vs glossary (movement ability name extended with "боком"); requires decision.        |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[15]       | Game_Abilities.md · Toggle BehindView | Режим камеры от 3-го лица    | Режим камеры от третьего лица | Term change vs glossary (spelled-out ordinal); consistency across bindings needed.               |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[24]       | Game_Abilities.md · Last Weapon       | Последнее оружие             | Последнее исп. оружие         | Term change vs glossary (abbreviation + aspect change); check if this should become new base term. |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[58]       | Game_Abilities.md · ScoreBoard Toggle | Показать таблицу результатов | Перекл. таблицы результатов   | Term change vs glossary (shortened form); verify readability and whether to update glossary.     |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[63]       | Game_Abilities.md · Screenshot        | Скриншот                     | Снимок экрана                 | Term change vs glossary (lexical change); unify base term between glossary and binding label.    |
| rut/GUI2K4.rut | [UT2K4SPTab_Profile]MultiKillsLabel[1] | UI_Notifications.md · MultiKill:      | Серия убийств:               | Мульти-убийство:              | Multi‑kill label base term changed vs glossary; must align with multi‑kill announcer terminology. |
| rut/XGame.rut  | [MultiKillMessage]KillString[1]       | UI_Notifications.md · XGame.MultiKillMessage.KillString[1] | Серия убийств! | Мульти-убийство! | Multi‑kill announcer text now uses "Мульти-убийство!" vs glossary "Серия убийств!"; term consistency decision needed. |
| rut/XGame.rut  | [MultiKillMessage]KillString[3]       | UI_Notifications.md · XGame.MultiKillMessage.KillString[3] | УЛЬТРА-НАСИЛИЕ | УЛЬТРАНАСИЛИЕ                | Minor spelling/punctuation difference vs glossary ("УЛЬТРА-НАСИЛИЕ" vs "УЛЬТРАНАСИЛИЕ"); verify preferred form. |

---

## Validated (accepted as new term)

*(Items reviewed in Stage 1 and **accepted** as valid; glossary was updated. Listed so the translator sees they were intentional.)*

| .rut file | Key | Glossary (file · technical name) | Was (glossary) | Accepted (.rut value) |
| --------- | --- | -------------------------------- | -------------- | --------------------- |
| *(none yet)* | — | — | — | — |


---

## For translator to fix

---

### Main issues to fix

*(Items moved here **only after the human has decided** in Stage 1 that the translator must fix them. Empty until review is done.)*


| .rut file | Key | Glossary (file · technical name) | Glossary value | .rut value | Comment (optional) |
| --------- | --- | -------------------------------- | -------------- | ---------- | ------------------ |
| *(none yet)*  | —   | —                                | —              | —          | —                  |

---

### Discrepancies with updated term

*(After accepting a term and updating the glossary, the same term was found elsewhere with different wording. Translator: align these to the updated term.)*

| .rut file | Key | Expected (updated term) | Current .rut value | Comment (optional) |
| --------- | --- | ----------------------- | ------------------ | ------------------ |
| *(none yet)* | — | — | — | — |

---

### Language‑quality issues — typos and non‑Russian fragments

| .rut file | Key | Glossary (file · technical name) | Glossary value | .rut value | Comment (optional) |
| --------- | --- | -------------------------------- | -------------- | ---------- | ------------------ |
| rut/Engine.rut | [Errors]DemoFileMissing               | —                                | —              | Отсутсвует пакет %s для проигрывания демо-записи | Typo in `.rut` value: "Отсутсвует" → should be "Отсутствует".                                    |
| rut/Setup.rut  | [Errors]AlreadyRunning                | —                                | —              | Para seguir con el proceso de instalación, cierra el programa y pulsa ОК. Para salir, pulsa Cancelar. | Spanish sentence mixed with Russian button labels; expected fully Russian text.                  |
| rut/UTClassic.rut | [MutUTClassic]TranslocString       | —                                | —              | Modificar Транслокатор | Contains Spanish word "Modificar"; expected fully Russian text.                                   |
| rut/UTClassic.rut | [MutUTClassic]TranslocHelp         | —                                | —              | Si se activa, el Транслокатор se recarga más rápido. | Spanish sentence around Russian term; expected fully Russian text.                               |
| rut/XAdmin.rut | [AdminIni]Msg_MapListNeedGameEdit     | —                                | —              | Debes usar el comando 'Editar Juego' antes de comandos de 'Список карт' | Mixed Spanish/Russian string; expected fully Russian instructions.                               |
| rut/XPlayers.rut | [DecoText]Sanctuary                 | —                                | —              | ID Planeta:            N/A, Santuario|Tipo de Planeta:       Неизвестно|Temp. Media:           Desconocida|Exportación Principal: Desconocida|Importación Principal: Desconocida||Datos:|Hace cierto tiempo que los Inquisidores sospechan que el Grupo de Combате Polaris mantiene comunicaciones con un planeta colonial todavía por identificar. Dicho planeta, que se identifica únicamente con el nombre de Santuario, es un refugio para mercenarios que transgreden la ley imperial. A pesar del uso de informadores e interrogatorios, el paradero de este planeta sigue siendo desconocido.|| | Majority of text remains in Spanish; expected Russian localization.                              |
| rut/XInterface.rut | [ServerBrowser]InvasionTypeName   | —                                | —              | Втрожение           | Typo in `.rut` value: "Втрожение" → should be "Вторжение".                                         |
| rut/XVoting.rut | [MapInfoPage]MessageNoInfo           | —                                | —              | Информация отсутсвутет! | Typo in `.rut` value: "отсутсвутет" → should be "отсутствует".                                   |
| rut/XWeapons.rut | [Translauncher]Description          | —                                | —              | El Транслокатор ha sido diseñado originalmente por la división de I+D de la Corporación Liandri para facilitar la evacuación rápida de los mineros durante derrumbamientos y otro tipo de accidentes. Sin embargo, la disolución и reconstitución rápida de un organismo tiene algunos efectos secundarios, entre los que destacan un incremento de la агресividad и la paranoia.||Para prolongar la carrera de los contendientes, hoy en día hay límites en el uso de transportadores en las ligas de menor rango.|La última versión del Транслокатор incorpora una cámara de control remoto, excepcionalmente útil cuando се explora áreas de contención. No debe olvidarse que mientras се utiliza la cámara de vigilancia el usuario queda efectivamente ciego a su entorno. | Long description remains Spanish with embedded Russian term; expected Russian localization.       |
| rut/XWeapons.rut | [Transpickup]PickupMessage          | —                                | —              | Has recogido el Транслokатор. | Spanish sentence around Russian term; expected fully Russian pickup message.                      |

---

### Duplicated keys

- *(Not checked yet in this cycle; will be filled if any duplicated keys are found and synced based on `_DUPLICATED_KEYS_LIST.md`.)*

---
