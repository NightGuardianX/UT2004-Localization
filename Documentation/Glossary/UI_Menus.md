# UI Menus glossary

## Entity Glossary Rules (UI_Menus)

These rules apply only to the `UI_Menus` entity and override the general Glossary Rules where they differ.

- **Sources:** Menu/page captions and window titles from `GUI2K4.int` (primary) and other UI `.int` files when needed. **Current Russian:** `/rut/GUI2K4.rut` (and related `/rut` files). **Old Russian:** `/rut_old`.
- **Scope:** Only distinct **screens/menus** and **major pages** of the front‑end UI and in‑game UI (e.g. Main Menu, Settings, Server Browser, Tournament, Mid‑game menu, etc.). Individual buttons inside these menus belong to other entities (e.g. `UI_StartMenuButtons`). Detailed terminology for individual settings controls (sliders, checkboxes, etc.) lives in the separate `UI_Settings` entity (`UI_Settings.md`).
- **Structure / categories:** Menus are grouped into:
  - **Main / front‑end menus** (entry points from the main screen).
  - **Settings menus** (the `UT2K4SettingsPage` tabs).
  - **Online / server browser menus.**
  - **Single‑player tournament menus.**
  - **Mid‑game / in‑game menus.**
- **Exclusions:** Purely modal confirmation boxes and tiny one‑off dialogs (e.g. simple OK/YES/NO popups) are covered by dialog / popup entities, not by `UI_Menus`, except where they behave like full screens.
- **Table format:** Standard 4‑column table, aligned with other entities:
  - Columns: **Technical name | .rut file | English name | Current Russian | Old Russian**.
  - If no translation is known yet, use `-`.

---

Source: primarily `GUI2K4.int` (sections like `[UT2k4MainMenu]`, `[UT2K4SettingsPage]`, `[UT2k4ServerBrowser]`, `[UT2K4SP_Main]`, etc.).

Current Russian: `/rut/GUI2K4.rut` (matching sections).

Old Russian: `/rut_old/*.rut` (matching sections), where available.

Format: 

Technical name           | .rut file   | English name       | Current Russian        | Old Russian
-------------------------|-------------|--------------------|------------------------|--------------------------
*(Section.Key or class)* | (*.rut*)    | (UI label)         | (Current Russian text) | (Old Russian text or -)

If no translation: `-`.

Notes:

- **Technical name** is usually the section name and field, e.g. `UT2k4MainMenu` or `UT2K4Tab_DetailSettings.PanelCaption`. For composite menus (like `UT2K4SettingsPage` with tabs), the tabs are listed separately below.
- When filling or updating this glossary, always check both the current `/rut` file and `/rut_old/` to populate Russian columns where possible.

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

Source: `[UT2K4SettingsPage]` in `GUI2K4.int` / `/rut/GUI2K4.rut` and the corresponding tab classes (`UT2K4Tab_*`).

The main Settings screen (`UT2K4SettingsPage`) has seven tabs. Each tab is treated here as a separate menu entity. **Only the tab/menu names are tracked in this file; all individual setting options and controls are documented in the `UI_Settings` glossary (`UI_Settings.md`).**

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

Source: `XVoting.int`. Current Russian: `/rut/XVoting.rut` (if Russian; else `-`). Old Russian: `/rut_old/XVoting.rut`.

| Technical name                         | .rut file    | English name                      | Current Russian | Old Russian                          |
| -------------------------------------- | ------------ | --------------------------------- | --------------- | ------------------------------------ |
| KickVotingPage.WindowName              | XVoting.rut  | Kick Voting                       | -               | Выбор удаления                       |
| MapVotingPage.WindowName               | XVoting.rut  | Map Voting                        | -               | Голосование по картам                |
| MapVoteGameConfigPage.WindowName       | XVoting.rut  | Map Voting Game Configuration     | -               | Настройки голосования за карты       |
| MapVoteMapListConfigPage.WindowName    | XVoting.rut  | Map Voting List Configuration     | -               | Настройки списка голосования за карты |

