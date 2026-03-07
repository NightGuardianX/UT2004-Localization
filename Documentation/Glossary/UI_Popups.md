# UI Popups glossary

## Entity Glossary Rules (UI_Popups)

These rules apply only to the `UI_Popups` entity and override the general Glossary Rules where they differ.

- **Sources:** Short popup messages from the front‑end UI and server browser:
  - `XInterface.int` (for example `[Browser_Page]`, `ExtendedConsole`, and similar sections that show transient status text).
- **Current Russian:** `/rut/XInterface.rut` (matching sections and keys).  
  Many entries in `/rut/XInterface.rut` are currently non‑Russian placeholders (Spanish). Such values are **not** treated as valid current Russian and the **Current Russian** column is left as `-` until proper Russian text is added.
- **Old Russian:** `/rut_old/XInterface.rut`.
- **Scope:** Brief popup‑style status, progress, and result messages that appear over menus or in a small area (e.g. *Querying Master Server*, *Authentication Failed*, *Server is now full*).  
  In‑game HUD notifications and scoreboard text belong to `UI_Notifications`. Dialogs with their own title and multiple lines of explanatory text belong to `UI_Dialogs`.
- **Exclusions:** Button captions and menu labels (covered by `UI_StartMenuButtons` and `UI_Menus`), and detailed setting descriptions (covered by `UI_Settings` and `UI_Tooltips`).
- **Table format:** Standard 5‑column glossary tables: **Technical name | .rut file | English name | Current Russian | Old Russian**. Technical names use `Section.Key` form (e.g. `Browser_Page.StartQueryString`).

---

Source: `XInterface.int`.

Current Russian: `/rut/XInterface.rut`.

Old Russian: `/rut_old/XInterface.rut`.

Format (Markdown table):

Technical name | .rut file     | English name | Current Russian | Old Russian
-------------- | ------------- | ------------ | --------------- | -----------

If no translation: `-`.

Notes:

- When filling or updating this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- If a value in `/rut` is clearly not Russian (e.g. Spanish from `/est`), leave **Current Russian** as `-` and use only `/rut_old` for the **Old Russian** column.

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

Additional popup‑style messages from `XInterface.int` should be added here as they are identified, following the same structure and rules.

