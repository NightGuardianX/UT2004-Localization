# UI Dialogs glossary

## Entity Glossary Rules (UI_Dialogs)

- **Sources:** `Setup.int` (`[IDDIALOG_*]` wizard/confirmation dialogs), `XInterface.int` (e.g. `UT2ArenaConfig`, `UT2DeferChangeRes`, `UT2PerformWarn`).
- **Scope:** Full-screen or windowed dialog boxes with their own layout and explanatory text (installer wizards, blocking warnings, confirmations). Short one-line notifications → `UI_Popups` / `UI_Notifications`.
- **Exclusions:** Generic button captions (OK, Cancel, Yes, No) reused across dialogs are not repeated here unless the dialog is defined only by that text.
- **Table:** 5 columns. Technical names: `Section.Key` (e.g. `IDDIALOG_WizardDialog.IDC_WizardDialog`, `UT2ArenaConfig.DialogText.Caption`).

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

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

| Technical name | .rut file   | English name | Current Russian | Old Russian |
| -------------- | ----------- | ------------ | --------------- | ----------- |
| KickVotingPage.lmsgKickVotingDisabled | XVoting.rut | Sorry, Kick Voting has been disabled by the server administrator. | - | Извините, голосование выброса отключено администратором сервера. |
| MapVotingPage.lmsgMapVotingDisabled | XVoting.rut | Sorry, Map Voting has been disabled by the server administrator. | - | Извините, голосование за карты отключено администратором сервера. |
| MapVotingPage.lmsgReplicationNotFinished | XVoting.rut | Map data download in progress. Please try again later. | - | Загрузка данных карты в процессе. Пожалуйста, попробуйте еще раз позднее. |
| MapVotingPage.lmsgMapDisabled | XVoting.rut | The selected Map is disabled. | - | Выбранная карта отключена. |

Additional dialog titles and explanatory texts from `Setup.int` and `XInterface.int` should be added following the same structure and rules.
