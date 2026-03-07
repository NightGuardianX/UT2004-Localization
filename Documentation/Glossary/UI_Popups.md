# UI Popups glossary

## Entity Glossary Rules (UI_Popups)

- **Sources:** `XInterface.int` (e.g. `[Browser_Page]`, `ExtendedConsole` — transient status text).
- **Scope:** Brief popup status, progress, and result messages over menus or in a small area (e.g. *Querying Master Server*, *Authentication Failed*). HUD/scoreboard → `UI_Notifications`. Full dialogs → `UI_Dialogs`.
- **Exclusions:** Button captions and menu labels (`UI_StartMenuButtons`, `UI_Menus`); setting descriptions (`UI_Settings`, `UI_Tooltips`).
- **Table:** 5 columns. Technical names: `Section.Key` (e.g. `Browser_Page.StartQueryString`).

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

---

## Server browser popups (`[Browser_Page]`)

| Technical name                        | .rut file     | English name              | Current Russian | Old Russian |
| ------------------------------------- | ------------- | ------------------------- | --------------- | ----------- |
| Browser_Page.StartQueryString         | XInterface.rut | Querying Master Server    | -               | Запрос основного сервера |
| Browser_Page.AuthFailString           | XInterface.rut | Authentication Failed     | -               | Проверка на соответствие файлов не пройдена |
| Browser_Page.ConnFailString           | XInterface.rut | Connection Failed - Retrying | -           | Соединение прервано - повтор попытки... |
| Browser_Page.ConnTimeoutString        | XInterface.rut | Connection Timed Out      | -               | Время соединения закончилось |
| Browser_Page.QueryCompleteString      | XInterface.rut | Query Complete!           | -               | Запрос завершен! |
| Browser_Page.RefreshCompleteString    | XInterface.rut | Refresh Complete!         | -               | Обновление списка серверов закончено! |
| Browser_Page.ReadyString              | XInterface.rut | Ready                     | -               | Готово |

---

## Extended console popups (`[ExtendedConsole]`)

| Technical name                        | .rut file     | English name                         | Current Russian | Old Russian |
| ------------------------------------- | ------------- | ------------------------------------ | --------------- | ----------- |
| ExtendedConsole.AddedCurrentHead      | XInterface.rut | Added Server:                        | -               | Добавлен сервер: |
| ExtendedConsole.AddedCurrentTail      | XInterface.rut | To Favorites!                        | -               | В избранное! |
| ExtendedConsole.ServerFullMsg         | XInterface.rut | Server is now full                   | -               | Сервер сейчас заполнен |

Additional popup‑style messages from `XInterface.int` should be added as identified, following the same structure and rules.
