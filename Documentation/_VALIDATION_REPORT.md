# Validation Report (for translator)

> **Produced by:** [STEP_02_VALIDATE_AND_SYNC_GLOSSARY](STEP_02_VALIDATE_AND_SYNC_GLOSSARY.md); then processed in **Stage 1** ([STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md)) and sent to the translator in **Stage 2** ([PROCESS_TRANSLATION_CYCLE](PROCESS_TRANSLATION_CYCLE.md)).  
> **For:** The translator (human). Items in **For translator to fix** and **Discrepancies with updated term** are for you to fix at your discretion — align .rut to glossary or keep your wording and we update the glossary.

**Flow:** (1) The validation step adds all new **term / glossary consistency issues** to **New problems — unreviewed** (agent may add comments there). It also writes **language‑quality issues** and **duplicated‑keys follow‑ups** directly into the corresponding subsections of **For translator to fix** (these usually do **not** require Stage 1 decisions). (2) Stage 1: the **human** reviews *only* the list in **New problems — unreviewed** and decides per item — accept (→ Validated) or reject (→ For translator to fix); the agent only moves items when the human has decided. (3) Stage 2: the translator receives this file and fixes items in **For translator to fix** and **Discrepancies with updated term**. (4) On the next merge, we use this report as a **checklist** before re-running validation.

---

## Process verification run

**Scope of this run:** Checklist pass and validation applied for merge `1e09deb8fa5d684d4fc24923860bc3abc63d0b05` using `_INCOMING_ANALYSIS.md` and `_diff_rut_result.json`; items already fixed by this merge were removed from the sections below. New issues from this merge are listed in the corresponding sections.

**Files in this merge (from `_diff_rut_result.json`):** 158 .rut files modified or removed. See [INCOMING_ANALYSIS.md](_INCOMING_ANALYSIS.md). Seven files were deleted in the merge (CTF-DE-LavaGiant2, Gestalt, License, Manifest, UC, XDemoMaps, xplayers2); their status set to No .rut in FILE_TRANSLATION_STATUS.

**Duplicated keys:** To be checked against `[_DUPLICATED_KEYS_LIST.md](_DUPLICATED_KEYS_LIST.md)` during validation.

---

## New problems — unreviewed (to review in Stage 1)

*(All newly found **term / glossary consistency issues** from the validation step go **only** here. The **human** reviews this list in [STEP_03_REVIEW_VALIDATION_REPORT](STEP_03_REVIEW_VALIDATION_REPORT.md) and decides for each: accept → Validated, or reject → For translator to fix. The agent does not move items out of this section on its own; the agent may leave comments in the last column to help the human decide.)*


| .rut file | Key | Glossary (file · technical name) | Glossary value | .rut value | Comment (optional) |
| --------- | --- | -------------------------------- | -------------- | ---------- | ------------------ |
| *(none)*  | —   | —                                | —              | —          | —                  |


---

## Validated (accepted as new term)

*(Items reviewed in Stage 1 and **accepted** as valid; glossary was updated. Listed so the translator sees they were intentional.)*


| .rut file        | Key                    | Glossary (file · technical name) | Was (glossary)       | Accepted (.rut value) |
| ---------------- | ---------------------- | -------------------------------- | -------------------- | --------------------- |
| rut/XWeapons.rut | [Redeemer]ItemName     | Game_Weapons.md · Redeemer       | (empty)              | Искупитель            |
| rut/XWeapons.rut | [RedeemerAmmo]ItemName | Game_Pickups.md · RedeemerAmmo   | Ядерная боеголовка   | Снаряд Искупителя     |
| rut/XWeapons.rut | (optional fill)        | Game_Weapons.md · AssaultRifle, BioRifle, LinkGun, FlakCannon, Minigun, RocketLauncher, ShockRifle | (empty) | Штурмовая винтовка, Биовинтовка, Связующая пушка, Осколочная пушка, Миниган, Ракетница, Громобой |


---

## For translator to fix

---

### Main issues to fix

*(Items moved here **only after the human has decided** in Stage 1 that the translator must fix them. Empty until review is done.)*


| .rut file        | Key                    | Glossary (file · technical name) | Glossary value | .rut value             | Comment (optional)                                                                 |
| ---------------- | ---------------------- | -------------------------------- | -------------- | ---------------------- | ----------------------------------------------------------------------------------- |
| rut/XWeapons.rut | [BallLauncher]ItemName | Game_Weapons.md · BallLauncher   | (empty)        | Мячемёт (Ball Launcher) | Рекомендация: оставить либо просто «Мячемёт», либо английский термин (на выбор).    |


---

### Discrepancies with updated term

*(After accepting a term and updating the glossary, the same term was found elsewhere with different wording. Translator: align these to the updated term.)*


| .rut file      | Key                                    | Expected (updated term)            | Current .rut value | Comment (optional)                                                                                                                                                                           |
| -------------- | -------------------------------------- | ---------------------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| rut/GUI2K4.rut | [UT2K4SPTab_Profile]MultiKillsLabel[3] | Ультранасилие: / Ультра-насилие:   | Ультранасилие:     | Style/case/punctuation difference vs updated UltraKill term; also decide on hyphen use (Ультранасилие: vs Ультра-насилие:) to stay consistent with Мульти-убийство:.                         |
| rut/XGame.rut  | [MultiKillMessage]KillString[3]        | УЛЬТРАНАСИЛИЕ!! / УЛЬТРА-НАСИЛИЕ!! | УЛЬТРАНАСИЛИЕ      | Style/punctuation inconsistency vs Мульти-убийство! (KillString[1]) and ULTRA KILL!!; also decide on hyphen use (УЛЬТРАНАСИЛИЕ!! vs УЛЬТРА-НАСИЛИЕ!!) for consistent multi‑kill terminology. |
| rut/XWeapons.rut | [RocketLauncher]ItemName, PickupMessage | Ракетница / Ракетную установку     | Ракетная установка | Align to validated term (Game_Weapons · RocketLauncher).                                                                                                                                    |
| rut/XWeapons.rut | [ShockRifle]ItemName, Description, PickupMessage | Громобой / Громобоя / Штурмовую винтовку | Шоковая винтовка   | Align to validated term (Game_Weapons · ShockRifle).                                                                                                                                         |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[30]        | Громобой                           | Шоковая винтовка   | Shock Rifle → validated Громобой.                                                                                                                                                             |
| rut/GUI2K4.rut | [ControlBinder]BindingLabel[34]        | Ракетница                          | Ракетная установка | Rocket Launcher → validated Ракетница.                                                                                                                                                       |
| rut/GUI2K4.rut | SPPbtnAutoMake.Hint, WeaponAutoSwitch.Hint, AutoJoin*.Hint, AutoSpeakCheckbox.Hint | Штурмовая винтовка / автомат (lowercase in hints) | Автомат            | Assault Rifle → validated Штурмовая винтовка.                                                                                                                                               |
| rut/XInterface.rut | Bindings, Labels, *.Hint (weapon names) | Штурмовая винтовка, Ракетница, Громобой | Автомат, Ракетная установка, Шоковая винтовка | Align to validated weapon terms.                                                                                                                                                            |
| rut/OnslaughtFull.rut | VehicleNameString (Minigun)          | Миниган                            | Пулемёт            | Align to validated term (Game_Weapons · Minigun).                                                                                                                                           |
| rut/UnrealGame.rut | DMPropDescText[6], DMPropDescText[11] | Штурмовая винтовка                 | Автомат            | Assault Rifle → validated term.                                                                                                                                                             |
| rut/UT2k4Assault.rut | [UT2K4Assault]AutoRespawn            | Штурмовая винтовка                 | Автомат            | Assault Rifle → validated term.                                                                                                                                                             |
| rut/DM-*.rut, etc. | [ZoneInfo*]LocationName (weapon spawn) | Громобой                           | Шоковая винтовка   | 6 map files: DM-1on1-Mixer, DM-Asbestos, DM-DE-Ironic, DM-Deck17, DM-Oceanic; Shock Rifle spawn → Громобой.                                                                                 |


---

### Language‑quality issues — typos and non‑Russian fragments


| .rut file                 | Key                                                             | Glossary (file · technical name) | Glossary value | .rut value                                                                               | Comment (optional)                                                             |
| ------------------------- | --------------------------------------------------------------- | -------------------------------- | -------------- | ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| rut/GUI2K4.rut            | [UT2K4Tab_DetailSettings]MMRelaunchQuestion                     | —                                | —              | The main menu has been successfully updated… Would you like to restart UT2004 right now? | Full English; expected Russian in settings dialog.                             |
| rut/AS-Mothership.rut     | [DestroyableObjective_SM4]Objective_Info_Attacker               | —                                | —              | Уничтожьте conductor                                                                     | Mixed: "conductor" → кондуктор (as elsewhere in this objective).               |
| rut/AS-Mothership.rut     | [DestroyableObjective_SM4]Objective_Info_Defender               | —                                | —              | Защищайте conductor                                                                      | Same.                                                                          |
| rut/AS-Mothership.rut     | [DestroyableObjective_SM5]ObjectiveDescription                  | —                                | —              | Уничтожьте desvío del campo láser                                                        | Spanish fragment; use full Russian (e.g. энергетический обходной контур).      |
| rut/AS-Mothership.rut     | [ZoneInfo35]LocationName                                        | —                                | —              | Sala de Энергетический обходной контур                                                   | Mixed Spanish/Russian; use full Russian.                                       |
| rut/AS-Mothership.rut     | [ZoneInfo37]LocationName                                        | —                                | —              | Посадочная палуба de atacantes                                                           | Mixed; "de atacantes" → рус. (напр. атакующих).                                |
| rut/AS-Mothership.rut     | [ZoneInfo39]LocationName                                        | —                                | —              | Entrada superior a Энергетический обходной контур                                        | Mixed; use full Russian.                                                       |
| rut/BR-Bifrost.rut        | [ZoneInfo14]LocationName, [ZoneInfo5]LocationName               | —                                | —              | Коридор ROJO                                                                             | ROJO (Spanish) → КРАСНЫХ for consistency.                                      |
| rut/BR-BridgeOfFate.rut   | [ZoneInfo4]LocationName, [ZoneInfo7]LocationName                | —                                | —              | Sala de Pilares СИНИХ / Sala de Pilares КРАСНЫХ                                          | Mixed Spanish/Russian; use full Russian.                                       |
| rut/BR-Slaughterhouse.rut | [ZoneInfo11]LocationName                                        | —                                | —              | Entrada al Кладовая Синих                                                                | Mixed; use full Russian.                                                       |
| rut/CTF-Orbital2.rut      | [ZoneInfo56],[ZoneInfo57],[ZoneInfo75],[ZoneInfo76]LocationName | —                                | —              | Фойе Superior Красных / Фойе Superior Синих                                              | "Superior" (English) → рус. (напр. верхнее) для единообразия.                  |
| rut/XGame.rut             | [xBombingRun]BRPropText2                                        | Game_Weapons.md · BallLauncher   | —              | Ball Launcher расходует заряд Транслокатора                                              | Use Мячемёт instead of "Ball Launcher" for consistency with glossary/ItemName. |
| *(various map .rut)*      | [LevelInfo0]Title, [LevelSummary]Title                          | —                                | —              | Absolute Zero, Mothership Assault, Bridge of Fate, Canyon, etc.                          | Many map/scenario titles still in English; localize as needed.                 |


---

### Duplicated keys

- In this merge diff, **230 keys** appear in **2+ .rut files** (e.g. `[LevelSummary]Description`, `[ZoneInfo*]LocationName`). Most are map-specific and need not share the same Russian text. No entries were added to [_DUPLICATED_KEYS_LIST.md](_DUPLICATED_KEYS_LIST.md) this cycle. If a key is later added to that list, keep its translation identical across all listed files.

---

