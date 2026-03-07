# UI Dialogs glossary

## Entity Glossary Rules (UI_Dialogs)

These rules apply only to the `UI_Dialogs` entity and override the general Glossary Rules where they differ.

- **Sources:** Dialog titles and key phrases from:
  - `Setup.int` (`[IDDIALOG_*]` wizard pages and confirmation dialogs),
  - `XInterface.int` (dedicated dialog pages such as `UT2ArenaConfig`, `UT2DeferChangeRes`, `UT2PerformWarn`, and similar UI classes).
- **Current Russian:** `/rut/Setup.rut`, `/rut/XInterface.rut` (matching sections and keys).  
  At the current stage many values in `/rut` are temporary non‑Russian placeholders (Spanish); such values are **not** copied into the glossary and the **Current Russian** column stays `-` until proper Russian text is added.
- **Old Russian:** `/rut_old/Setup.rut`, `/rut_old/XInterface.rut` (matching sections and keys).
- **Scope:** Full‑screen or windowed dialog boxes with their own layout and explanatory text (installer wizards, blocking warnings, confirmation questions).  
  Short one‑line in‑game notifications and status lines without a dedicated dialog belong to other entities (`UI_Popups`, `UI_Notifications`).
- **Exclusions:** Generic button captions such as `OK`, `Cancel`, `Yes`, `No` that are reused across many dialogs and already covered by other UI entities are not repeated here unless the dialog itself is defined only by that button text.
- **Table format:** Standard 5‑column glossary tables: **Technical name | .rut file | English name | Current Russian | Old Russian**.  
  Technical names use `Section.Key` form (for example `IDDIALOG_WizardDialog.IDC_WizardDialog`, `UT2ArenaConfig.DialogText.Caption`).

---

Source: `Setup.int`, `XInterface.int`.

Current Russian: `/rut/Setup.rut`, `/rut/XInterface.rut`.

Old Russian: `/rut_old/Setup.rut`, `/rut_old/XInterface.rut`.

Format (Markdown table):

Technical name | .rut file | English name | Current Russian | Old Russian
-------------- | --------- | ------------ | --------------- | -----------

If no translation: `-`.

Notes:

- When filling or updating this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- If a value in `/rut` is clearly not Russian (e.g. Spanish from `/est`), leave **Current Russian** as `-` and treat only `/rut_old` as a valid Russian reference for that row.

---

## Installer dialogs (`Setup.int`)

| Technical name                                   | .rut file   | English name                                          | Current Russian | Old Russian |
| ------------------------------------------------ | ----------- | ----------------------------------------------------- | --------------- | ----------- |
| IDDIALOG_WizardDialog.IDC_WizardDialog          | Setup.rut   | Unreal Setup                                          | -               | Установка/Удаление UT2004 |
| IDDIALOG_FailedRequirement.IDC_FailedRequirement | Setup.rut   | This product can't be installed here                  | -               | Программу нельзя установить сюда |
| IDDIALOG_FilerPageUninstall.IDC_UninstallQuestion | Setup.rut | Are you sure you want to remove these components?    | -               | Удалить эти компоненты? |
| IDDIALOG_AutopatchPageGo.CancelText             | Setup.rut   | Until you complete auto-update, you will only be able to play single-player and LAN.  Are you sure you want to cancel this auto-update? | - | Пока вы не завершите автообновление, вы сможете играть только в одиночной игре и по локальной сети.  Вы действительно хотите отменить автообновление? |

---

## In‑game dialogs (`XInterface.int`)

| Technical name                                   | .rut file     | English name                                                                 | Current Russian | Old Russian |
| ------------------------------------------------ | ------------- | ---------------------------------------------------------------------------- | --------------- | ----------- |
| Browser_IconKey.DialogText.Caption              | XInterface.rut | Server Icon Key                                                              | -               | Клавиша иконки сервера |
| UT2ArenaConfig.DialogText.Caption               | XInterface.rut | Weapon Arena                                                                 | -               | Оружейная |
| UT2ArenaConfig.DialogText2.Caption              | XInterface.rut | Choose the weapon to populate your Arena.                                    | -               | Выберите оружие для арены. |
| UT2DeferChangeRes.DialogText.Caption            | XInterface.rut | The resolution you have chosen is lower than the minimum menu resolution.    | -               | Выбранное вами разрешение ниже минимального разрешения меню. |
| UT2DeferChangeRes.DialogText2.Caption           | XInterface.rut | It will be applied when you next enter gameplay.                             | -               | Оно будет применено при следующем запуске игры. |
| UT2PerformWarn.DialogText.Caption               | XInterface.rut | WARNING                                                                      | -               | ВНИМАНИЕ! |
| UT2PerformWarn.DialogText2.Caption              | XInterface.rut | The change you are making may adversely affect your performance.             | -               | Изменения могут повлиять на работу программы. |

---

## Voting messages (XVoting.int)

Source: `XVoting.int`. One-line messages shown when voting is disabled or a vote action fails. Current Russian: `/rut/XVoting.rut` (if Russian; else `-`). Old Russian: `/rut_old/XVoting.rut`.

| Technical name | .rut file   | English name | Current Russian | Old Russian |
| -------------- | ----------- | ------------ | --------------- | ----------- |
| KickVotingPage.lmsgKickVotingDisabled | XVoting.rut | Sorry, Kick Voting has been disabled by the server administrator. | - | Извините, голосование выброса отключено администратором сервера. |
| MapVotingPage.lmsgMapVotingDisabled | XVoting.rut | Sorry, Map Voting has been disabled by the server administrator. | - | Извините, голосование за карты отключено администратором сервера. |
| MapVotingPage.lmsgReplicationNotFinished | XVoting.rut | Map data download in progress. Please try again later. | - | Загрузка данных карты в процессе. Пожалуйста, попробуйте еще раз позднее. |
| MapVotingPage.lmsgMapDisabled | XVoting.rut | The selected Map is disabled. | - | Выбранная карта отключена. |

Additional dialog titles and explanatory texts from `Setup.int` and `XInterface.int` should be added in this file following the same structure and rules.

