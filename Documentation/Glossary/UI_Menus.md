# UI Menus glossary

## Entity Glossary Rules (UI_Menus)

These rules apply only to the `UI_Menus` entity and override the general Glossary Rules where they differ.

- **Sources:** Menu/page captions and window titles from `GUI2K4.int` (primary) and other UI `.int` files when needed. **Current Russian:** `/rut/GUI2K4.rut` (and related `/rut` files). **Old Russian:** `Documentation/rut_old`.
- **Scope:** Only distinct **screens/menus** and **major pages** of the front‑end UI and in‑game UI (e.g. Main Menu, Settings, Server Browser, Tournament, Mid‑game menu, etc.). Individual buttons inside these menus belong to other entities (e.g. `UI_StartMenuButtons`). Detailed terminology for individual settings controls (sliders, checkboxes, etc.) lives in the separate `UI_Settings` entity (`UI_Settings.md`).
- **Structure / categories:** Menus are grouped into:
  - **Main / front‑end menus** (entry points from the main screen).
  - **Settings menus** (the `UT2K4SettingsPage` tabs).
  - **Online / server browser menus.**
  - **Single‑player tournament menus.**
  - **Mid‑game / in‑game menus.**
- **Exclusions:** Purely modal confirmation boxes and tiny one‑off dialogs (e.g. simple OK/YES/NO popups) are covered by dialog / popup entities, not by `UI_Menus`, except where they behave like full screens.
- **Table format:** Standard 4‑column table, aligned with other entities:
  - Columns: **Technical name | English name | Current Russian | Old Russian**.
  - If no translation is known yet, use `-`.

---

Source: primarily `GUI2K4.int` (sections like `[UT2k4MainMenu]`, `[UT2K4SettingsPage]`, `[UT2k4ServerBrowser]`, `[UT2K4SP_Main]`, etc.).

Current Russian: `/rut/GUI2K4.rut` (matching sections).

Old Russian: `Documentation/rut_old/*.rut` (matching sections), where available.

Format: 

Technical name           | English name       | Current Russian        | Old Russian
-------------------------|--------------------|------------------------|--------------------------
*(Section.Key or class)* | (UI label)         | (Current Russian text) | (Old Russian text or -)

If no translation: `-`.

Notes:

- **Technical name** is usually the section name and field, e.g. `UT2k4MainMenu` or `UT2K4Tab_DetailSettings.PanelCaption`. For composite menus (like `UT2K4SettingsPage` with tabs), the tabs are listed separately below.
- When filling or updating this glossary, always check both the current `/rut` file and `Documentation/rut_old/` to populate Russian columns where possible.

---

## Main / front‑end menus

Technical name           | English name       | Current Russian   | Old Russian
-------------------------|--------------------|-------------------|--------------------------
UT2k4MainMenu            | Main Menu          | Главное меню      | -
UT2K4SettingsPage        | Settings           | Настройки         | -
UT2K4SP_Main.PageCaption | Tournament         | Турнир            | -
UT2k4ServerBrowser       | Server Browser     | -                 | -
UT2K4ModsAndDemos        | Community          | Сообщество        | -
UT2K4QuickPlay.Window    | Quick Play         | Быстрая игра      | -

---

## Settings menus (UT2K4SettingsPage tabs)

Source: `[UT2K4SettingsPage]` in `GUI2K4.int` / `/rut/GUI2K4.rut` and the corresponding tab classes (`UT2K4Tab_*`).

The main Settings screen (`UT2K4SettingsPage`) has seven tabs. Each tab is treated here as a separate menu entity. **Only the tab/menu names are tracked in this file; all individual setting options and controls are documented in the `UI_Settings` glossary (`UI_Settings.md`).**

### Settings: Display tab

Technical name                            | English name | Current Russian | Old Russian
------------------------------------------|--------------|-----------------|--------------------------
UT2K4Tab_DetailSettings.PanelCaption      | Display      | Экран           | -

### Settings: Audio tab

Technical name                            | English name | Current Russian | Old Russian
------------------------------------------|--------------|-----------------|--------------------------
UT2K4Tab_AudioSettings.PanelCaption       | Audio        | Аудио           | -

### Settings: Player tab

Technical name                            | English name | Current Russian | Old Russian
------------------------------------------|--------------|-----------------|--------------------------
UT2K4Tab_PlayerSettings.PanelCaption      | Player       | Игрок           | -

### Settings: Game tab

Technical name                            | English name | Current Russian | Old Russian
------------------------------------------|--------------|-----------------|--------------------------
UT2K4Tab_GameSettings.PanelCaption        | Game         | Игра            | -

### Settings: Input tab

Technical name                            | English name | Current Russian | Old Russian
------------------------------------------|--------------|-----------------|--------------------------
UT2K4Tab_IForceSettings.PanelCaption      | Input        | Управление      | -

### Settings: Weapons tab

Technical name                            | English name | Current Russian | Old Russian
------------------------------------------|--------------|-----------------|--------------------------
UT2K4Tab_WeaponPref.PanelCaption          | Weapons      | Оружие          | -

### Settings: HUD tab

Technical name                            | English name | Current Russian   | Old Russian
------------------------------------------|--------------|-------------------|--------------------------
UT2K4Tab_HudSettings.PanelCaption         | HUD          | Интерфейс (HUD)   | -

---

## Online / server browser menus

Technical name                                   | English name              | Current Russian | Old Russian
------------------------------------------------|---------------------------|-----------------|--------------------------
UT2k4ServerBrowser.ServerBrowserHeader.Caption  | Server Browser            | -               | -
UT2K4Browser_Page.PanelCaption                  | Server Browser (page)     | -               | -
UT2k4Browser_MOTD.PanelCaption                  | News                      | -               | -
UT2k4Browser_IRC.PanelCaption                   | UT2004 Internet Chat      | -               | -
UT2K4Browser_ServerListPageFavorites.PanelCaption | Server Browser : Favorites | -            | -
UT2K4Browser_ServerListPageLAN.PanelCaption     | Server Browser : LAN      | -               | -
UT2K4Browser_ServerListPageMS.PanelCaption      | Server Browser : Internet | -               | -

---

## Single‑player tournament menus

Technical name                                   | English name           | Current Russian | Old Russian
------------------------------------------------|------------------------|-----------------|--------------------------
UT2K4SP_Main.PageCaption                         | Tournament             | Турнир          | -
UT2K4SP_Details.PageCaption                      | Tournament details     | Детали турнира  | -
UT2K4SPTab_Profile.PanelCaption                  | Profile                | Профиль         | -
UT2K4SPTab_ProfileNew.PanelCaption               | New profile            | Новый профиль   | -
UT2K4SPTab_Tutorials.PanelCaption                | Tutorial               | Обучение        | -
UT2K4SPTab_Qualification.PanelCaption            | Qualification          | Квалификация    | -
UT2K4SPTab_TeamQualification.PanelCaption        | Team Qualification     | Командная квалификация | -
UT2K4SPTab_Ladder.PanelCaption                   | Ladder                 | Турнирная сетка | -
UT2K4SPTab_TeamManagement.PanelCaption           | Team Management        | Управление командой | -
UT2K4SPTab_ExtraLadder.PanelCaption              | Additional             | Дополнительно   | -

---

## Mid‑game / in‑game menus

Technical name                                   | English name           | Current Russian         | Old Russian
------------------------------------------------|------------------------|-------------------------|--------------------------
UT2K4MidGameMenu                                | Mid‑game Menu          | Меню во время матча     | -
UT2K4PlayerLoginMenu.Panels                     | Player Login           | Меню игрока             | -
UT2K4DisconnectOptionPage                       | Disconnect Options     | Параметры отключения    | -
UT2K4ServerInfo.PanelCaption                    | Server Info            | Информация о сервере    | -
UT2K4OnslaughtMap                               | Onslaught Map Screen   | Карта режима Onslaught  | -
UT2K4OnslaughtPowerLinkDesigner                 | Power Link Designer    | Редактор связей нод     | -

