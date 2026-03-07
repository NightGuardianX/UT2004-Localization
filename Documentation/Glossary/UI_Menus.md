# UI Menus glossary

## Entity Glossary Rules (UI_Menus)

- **Sources:** `GUI2K4.int` (primary; sections like `UT2k4MainMenu`, `UT2K4SettingsPage`, `UT2k4ServerBrowser`, `UT2K4SP_Main`) and other UI .int when needed.
- **Scope:** Distinct screens/menus and major pages (Main Menu, Settings, Server Browser, Tournament, Mid-game menu). Buttons → `UI_StartMenuButtons`. Setting controls → `UI_Settings`.
- **Structure:** Main/front-end menus; Settings (UT2K4SettingsPage tabs); Online/server browser; Single-player tournament; Mid-game/in-game.
- **Exclusions:** Modal OK/YES/NO dialogs → dialog/popup entities (unless they behave like full screens).
- **Table:** 5 columns. Technical name: section and field (e.g. `UT2k4MainMenu`, `UT2K4Tab_DetailSettings.PanelCaption`).

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

---

## Main / front‑end menus

| Technical name           | .rut file   | English name       | Current Russian   | Old Russian |
| ------------------------ | ----------- | ------------------ | ----------------- | ----------- |
| UT2k4MainMenu            | GUI2K4.rut  | Main Menu          | Главное меню      | -    *(main screen; primary buttons are listed in `UI_StartMenuButtons.md`)* |
| UT2K4SettingsPage        | GUI2K4.rut  | Settings           | Настройки         | - |
| UT2K4SP_Main.PageCaption | GUI2K4.rut  | Tournament         | Турнир            | - |
| UT2k4ServerBrowser       | GUI2K4.rut  | Server Browser     | -                 | - |
| UT2K4ModsAndDemos        | GUI2K4.rut  | Community          | Сообщество        | - |
| UT2K4QuickPlay.Window    | GUI2K4.rut  | Quick Play         | Быстрая игра      | - |

---

## Settings menus (UT2K4SettingsPage tabs)

Only tab/menu names here; individual setting options → `UI_Settings.md`.

### Settings: Display tab

| Technical name                            | .rut file   | English name | Current Russian | Old Russian |
| ----------------------------------------- | ----------- | ------------ | --------------- | ----------- |
| UT2K4Tab_DetailSettings.PanelCaption      | GUI2K4.rut  | Display      | Экран           | - |

### Settings: Audio tab

| Technical name                            | .rut file   | English name | Current Russian | Old Russian |
| ----------------------------------------- | ----------- | ------------ | --------------- | ----------- |
| UT2K4Tab_AudioSettings.PanelCaption       | GUI2K4.rut  | Audio        | Аудио           | - |

### Settings: Player tab

| Technical name                            | .rut file   | English name | Current Russian | Old Russian |
| ----------------------------------------- | ----------- | ------------ | --------------- | ----------- |
| UT2K4Tab_PlayerSettings.PanelCaption      | GUI2K4.rut  | Player       | Игрок           | - |

### Settings: Game tab

| Technical name                            | .rut file   | English name | Current Russian | Old Russian |
| ----------------------------------------- | ----------- | ------------ | --------------- | ----------- |
| UT2K4Tab_GameSettings.PanelCaption        | GUI2K4.rut  | Game         | Игра            | - |

### Settings: Input tab

| Technical name                            | .rut file   | English name | Current Russian | Old Russian |
| ----------------------------------------- | ----------- | ------------ | --------------- | ----------- |
| UT2K4Tab_IForceSettings.PanelCaption      | GUI2K4.rut  | Input        | Управление      | - |

### Settings: Weapons tab

| Technical name                            | .rut file   | English name | Current Russian | Old Russian |
| ----------------------------------------- | ----------- | ------------ | --------------- | ----------- |
| UT2K4Tab_WeaponPref.PanelCaption          | GUI2K4.rut  | Weapons      | Оружие          | - |

### Settings: HUD tab

| Technical name                            | .rut file   | English name | Current Russian   | Old Russian |
| ----------------------------------------- | ----------- | ------------ | ----------------- | ----------- |
| UT2K4Tab_HudSettings.PanelCaption         | GUI2K4.rut  | HUD          | Интерфейс (HUD)   | - |

---

## Online / server browser menus

| Technical name                                   | .rut file   | English name              | Current Russian | Old Russian |
| ------------------------------------------------ | ----------- | ------------------------- | --------------- | ----------- |
| UT2k4ServerBrowser.ServerBrowserHeader.Caption  | GUI2K4.rut  | Server Browser            | -               | - |
| UT2K4Browser_Page.PanelCaption                  | GUI2K4.rut  | Server Browser (page)     | -               | - |
| UT2k4Browser_MOTD.PanelCaption                  | GUI2K4.rut  | News                      | -               | - |
| UT2k4Browser_IRC.PanelCaption                   | GUI2K4.rut  | UT2004 Internet Chat      | -               | - |
| UT2K4Browser_ServerListPageFavorites.PanelCaption | GUI2K4.rut | Server Browser : Favorites | -            | - |
| UT2K4Browser_ServerListPageLAN.PanelCaption     | GUI2K4.rut  | Server Browser : LAN      | -               | - |
| UT2K4Browser_ServerListPageMS.PanelCaption      | GUI2K4.rut  | Server Browser : Internet | -               | - |

---

## Single‑player tournament menus

| Technical name                                   | .rut file   | English name           | Current Russian | Old Russian |
| ------------------------------------------------ | ----------- | ---------------------- | --------------- | ----------- |
| UT2K4SP_Main.PageCaption                         | GUI2K4.rut  | Tournament             | Турнир          | - |
| UT2K4SP_Details.PageCaption                      | GUI2K4.rut  | Tournament details     | Детали турнира  | - |
| UT2K4SPTab_Profile.PanelCaption                  | GUI2K4.rut  | Profile                | Профиль         | - |
| UT2K4SPTab_ProfileNew.PanelCaption               | GUI2K4.rut  | New profile            | Новый профиль   | - |
| UT2K4SPTab_Tutorials.PanelCaption                | GUI2K4.rut  | Tutorial               | Обучение        | - |
| UT2K4SPTab_Qualification.PanelCaption            | GUI2K4.rut  | Qualification          | Квалификация    | - |
| UT2K4SPTab_TeamQualification.PanelCaption        | GUI2K4.rut  | Team Qualification     | Командная квалификация | - |
| UT2K4SPTab_Ladder.PanelCaption                   | GUI2K4.rut  | Ladder                 | Турнирная сетка | - |
| UT2K4SPTab_TeamManagement.PanelCaption           | GUI2K4.rut  | Team Management        | Управление командой | - |
| UT2K4SPTab_ExtraLadder.PanelCaption              | GUI2K4.rut  | Additional             | Дополнительно   | - |

---

## Mid‑game / in‑game menus

| Technical name                                   | .rut file   | English name           | Current Russian         | Old Russian |
| ------------------------------------------------ | ----------- | ---------------------- | ----------------------- | ----------- |
| UT2K4MidGameMenu                                | GUI2K4.rut  | Mid‑game Menu          | Меню во время матча     | - |
| UT2K4PlayerLoginMenu.Panels                     | GUI2K4.rut  | Player Login           | Меню игрока             | - |
| UT2K4DisconnectOptionPage                       | GUI2K4.rut  | Disconnect Options     | Параметры отключения    | - |
| UT2K4ServerInfo.PanelCaption                    | GUI2K4.rut  | Server Info            | Информация о сервере    | - |
| UT2K4OnslaughtMap                               | GUI2K4.rut  | Onslaught Map Screen   | Карта режима Onslaught  | - |
| UT2K4OnslaughtPowerLinkDesigner                 | GUI2K4.rut  | Power Link Designer    | Редактор связей нод     | - |

---

## Voting menus (XVoting.int)

| Technical name                         | .rut file    | English name                      | Current Russian | Old Russian                          |
| -------------------------------------- | ------------ | --------------------------------- | --------------- | ------------------------------------ |
| KickVotingPage.WindowName              | XVoting.rut  | Kick Voting                       | -               | Выбор удаления                       |
| MapVotingPage.WindowName               | XVoting.rut  | Map Voting                        | -               | Голосование по картам                |
| MapVoteGameConfigPage.WindowName       | XVoting.rut  | Map Voting Game Configuration     | -               | Настройки голосования за карты       |
| MapVoteMapListConfigPage.WindowName    | XVoting.rut  | Map Voting List Configuration     | -               | Настройки списка голосования за карты |

