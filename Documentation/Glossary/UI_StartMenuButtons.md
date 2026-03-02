# UI Start menu buttons glossary

## Entity Glossary Rules (UI_StartMenuButtons)

- **Sources:** Main menu button labels from `[UT2MainMenu]` in `XInterface.int` and `[UT2K4MainMenu]` in `GUI2K4.int`. **Current Russian uses `/rut/GUI2K4.rut` (`[UT2K4MainMenu]`) as the primary and canonical source**. Old Russian from `/rut_old/XInterface.rut`.
- **Scope:** Only the primary buttons visible on the main / front-end menu screen: Host, Instant Action, Multiplayer, Quit, Settings, Single Player.
- **Exclusions:** Submenu buttons (inside Instant Action, Settings, etc.) and mid‑game menu entries are not included here; they belong to other UI entities (e.g. `UI_Menus`, dialogs, popups). The main menu screen itself is tracked in the `UI_Menus` entity as `UT2k4MainMenu`.
- **Table format:** Standard 4‑column table: *Technical name | English name | Current Russian | Old Russian*.

---

Source: `[UT2MainMenu]` in `XInterface.int`, `[UT2K4MainMenu]` in `GUI2K4.int`.

Current Russian: `[UT2K4MainMenu]` in `/rut/GUI2K4.rut` (this file is the main authoritative source for these button captions; values from `/rut/XInterface.rut` are considered legacy and are not used here).

Old Russian: `[UT2MainMenu]` in `/rut_old/XInterface.rut`.

Format: Technical name | English name | Current Russian | Old Russian.

If no translation: `-`.

---

## Start menu buttons

Technical name             | English name            | Current Russian         | Old Russian
---------------------------|-------------------------|-------------------------|--------------------------
HostButton.Caption         | Host Game               | Хост игры               | Хост игры
InstantActionButton.Caption| Instant Action          | Быстрая схватка         | Мгновенное Действие
MultiplayerButton.Caption  | Join Game               | Присоединиться к игре   | Подключиться к игре
QuitButton.Caption         | Exit UT2004             | Выйти из UT2004         | Выйти из Unreal Tournament
SettingsButton.Caption     | Settings                | Настройки               | Настройки
SinglePlayerButton.Caption | Single Player           | Одиночная игра          | Одиночная игра

