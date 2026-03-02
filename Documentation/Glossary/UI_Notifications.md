# UI Notifications glossary

## Entity Glossary Rules (UI_Notifications)

These rules apply only to the `UI_Notifications` entity and override the general Glossary Rules where they differ.

- **Sources:** Notification, error, warning, success, info, and help messages from:
  - `XInterface.int` (HUD messages, scoreboard labels, console notifications, IRC/link errors, etc.).
- **Current Russian:** `/rut/XInterface.rut` (matching sections and keys).  
  Where `/rut` still contains non‑Russian placeholder text (Spanish), the **Current Russian** column is left as `-` until proper Russian text is added.
- **Old Russian:** `/rut_old/XInterface.rut`.
- **Additional sources for announcer / award messages:** `UnrealGame.int`, `XGame.int`, `GUI2K4.int` (multi‑kill and spree messages such as *Double Kill!*, *Unstoppable!*, and their labels).
- **Scope:** Messages that inform the player or user about state changes, results, or errors (e.g. *You've won the match!*, *Server is now full*, *Invalid server address, aborting.*). These may appear on the HUD, scoreboard, or in small message areas, but are not full dialogs.
- **Exclusions:** 
  - Dialog titles and multi‑line explanations belong to `UI_Dialogs`.
  - Short one‑off popup progress strings closely tied to menu actions belong to `UI_Popups`.
  - Tooltip help text for individual controls belongs to `UI_Tooltips`.
- **Table format:** Standard 4‑column glossary tables: **Technical name | English name | Current Russian | Old Russian**.  
  Technical names use `Section.Key` form (for example `HudBase.YouveWonTheMatch`, `ExtendedConsole.ServerFullMsg`).

---

Source: `XInterface.int`.

Current Russian: `/rut/XInterface.rut`.

Old Russian: `/rut_old/XInterface.rut`.

Format (Markdown table):

Technical name | English name | Current Russian | Old Russian
-------------- | ------------ | --------------- | -----------

If no translation: `-`.

Notes:

- When filling or updating this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- If a value in `/rut` is clearly non‑Russian (e.g. Spanish), leave **Current Russian** as `-` and rely on `/rut_old` for **Old Russian**.
- **Consistency rule for multi‑kill / spree terms:** all related entries for the same English term (e.g. `Double Kill`, `Mega Kill`, `Killing Spree`, `Unstoppable`) **must use the same Russian term** across all sources: `KillString[]` in `UnrealGame`, `MultiKillMessage.KillString[]` in `XGame`, and `SpreeLabel[]` / `MultiKillsLabel[]` in `GUI2K4`.  
  - Differences in case, punctuation, or surrounding text (e.g. `ДВОЙНОЕ УБИЙСТВО!` vs `Двойное убийство:`) are acceptable; the base term (*двойное убийство*, *мегаубийство*, etc.) must remain identical everywhere.

---

## HUD match notifications (`[HudBase]`)

Technical name                 | English name                               | Current Russian | Old Russian
----------------------------- | ------------------------------------------ | --------------- | ----------
HudBase.WaitingToSpawn        | Press [Fire] to join the match!           | -               | Нажмите [Огонь] для присоединения к матчу!
HudBase.AtMenus               | Press [ESC] to close menu                 | -               | Нажмите [ESC] чтобы закрыть меню
HudBase.YouveWonTheMatch      | You've won the match!                     | -               | Вы выиграли матч!
HudBase.YouveLostTheMatch     | You've lost the match.                    | -               | Вы проиграли матч.
HudBase.NowViewing            | Now viewing                               | -               | Вид от
HudBase.InitialViewingString  | Press Fire to View a different Player     | -               | Нажмите Огонь для просмотра другого игрока

---

## Multi‑kill announcer messages (`KillString[]`)

Technical name                            | English name       | Current Russian                       | Old Russian
---------------------------------------- | ------------------ | ------------------------------------- | ----------
UnrealGame.KillString[0]                 | Double Kill!       | -                                     | Двойное убийство!
UnrealGame.KillString[1]                 | MultiKill!         | -                                     | Мультиубийство!
UnrealGame.KillString[2]                 | MegaKill!          | -                                     | Мегаубийство!
UnrealGame.KillString[3]                 | UltraKill!         | -                                     | Ультраубийство!
UnrealGame.KillString[4]                 | MONSTER KILL!      | -                                     | МОНСТР!
UnrealGame.KillString[5]                 | LUDICROUS KILL!    | -                                     | ГЕНОЦИД!
UnrealGame.KillString[6]                 | HOLY SHIT!         | -                                     | ДЬЯВОЛ!
XGame.MultiKillMessage.KillString[0]     | Double Kill!       | Двойное убийство!                     | Двойное убийство!
XGame.MultiKillMessage.KillString[1]     | Multi Kill!        | Серия убийств!                        | Мультиубийство!
XGame.MultiKillMessage.KillString[2]     | Mega Kill!!        | Мега-убийство!                        | Мегаубийство!!
XGame.MultiKillMessage.KillString[3]     | ULTRA KILL!!       | УЛЬТРА-НАСИЛИЕ                        | Ультраубийство!!
XGame.MultiKillMessage.KillString[4]     | M O N S T E R  K I L L !!! | М О Н С Т Р У О З Н О !!!    | М О Н С Т Р !!!
XGame.MultiKillMessage.KillString[5]     | L U D I C R O U S !!!      | Н Е М Ы С Л И М О !!!         | Г Е Н О Ц И Д !!!
XGame.MultiKillMessage.KillString[6]     | H O L Y  S H I T !         | С Р А Н Ь  Г О С П О Д Н Я !  | Д Ь Я В О Л !!!

---

## Spree announcer messages (`SelfSpreeNote[]`)

Technical name                            | English name       | Current Russian | Old Russian
---------------------------------------- | ------------------ | --------------- | ----------
UnrealGame.SelfSpreeNote[0]              | Killing Spree!     | -               | Убийственный порыв!
UnrealGame.SelfSpreeNote[1]              | Rampage!           | -               | Ярость!
UnrealGame.SelfSpreeNote[2]              | Dominating!        | -               | Доминирование!
UnrealGame.SelfSpreeNote[3]              | Unstoppable!       | -               | Непреодолим!
UnrealGame.SelfSpreeNote[4]              | GODLIKE!           | -               | РАССВИРЕПЕЛ!
UnrealGame.SelfSpreeNote[5]              | WICKED SICK!       | -               | БОГОПОДОБЕН!

---

## Profile summary labels for sprees and multi‑kills (`GUI2K4.int`)

Technical name                            | English name       | Current Russian      | Old Russian
---------------------------------------- | ------------------ | -------------------- | ----------
GUI2K4.SpreeLabel[0]                     | Killing Spree:     | Серия убийств:       | Частые Убийства:
GUI2K4.SpreeLabel[1]                     | Rampage:           | Буйство:             | Ярость:
GUI2K4.SpreeLabel[2]                     | Dominating:        | Доминирование:       | Доминирующий:
GUI2K4.SpreeLabel[3]                     | Unstoppable:       | Неудержимость:       | Неодолимый:
GUI2K4.SpreeLabel[4]                     | GODLIKE:           | БОГОПОДОБЕН:         | БОГОПОДОБНЫЙ:
GUI2K4.SpreeLabel[5]                     | WICKED SICK:       | ЧИСТОЕ БЕЗУМИЕ:      | ЗЛОБНЫЙ ПСИХ:
GUI2K4.MultiKillsLabel[0]                | Double Kill:       | Двойное убийство:    | Двойное Убийца:
GUI2K4.MultiKillsLabel[1]                | MultiKill:         | Серия убийств:       | Мульти Убийца:
GUI2K4.MultiKillsLabel[2]                | MegaKill:          | Мегаубийство:        | Мега Убийца:
GUI2K4.MultiKillsLabel[3]                | UltraKill:         | Ультранасилие:       | Ультра Убийца:
GUI2K4.MultiKillsLabel[4]                | MONSTER KILL:      | МОНСТРУОЗНО:         | -
GUI2K4.MultiKillsLabel[5]                | LUDICROUS KILL:    | НЕМЫСЛИМО:           | -
GUI2K4.MultiKillsLabel[6]                | HOLY SHIT:         | СРАНЬ ГОСПОДНЯ:      | -

---

## Server and console notifications (`[ExtendedConsole]`)

Technical name                        | English name                         | Current Russian | Old Russian
------------------------------------- | ------------------------------------ | --------------- | ----------
ExtendedConsole.AddedCurrentHead      | Added Server:                        | -               | Добавлен сервер:
ExtendedConsole.AddedCurrentTail      | To Favorites!                        | -               | В избранное!
ExtendedConsole.ServerFullMsg         | Server is now full                   | -               | Сервер сейчас заполнен

---

## IRC / chat connection notifications (`[IRCLink]`, `[IRC_System]`)

Technical name                 | English name                                        | Current Russian | Old Russian
----------------------------- | --------------------------------------------------- | --------------- | ----------
IRCLink.InvalidAddressText    | Invalid server address, aborting.                  | -               | Неверный адрес сервера, прерывание.
IRCLink.ErrorBindingText      | Error binding local port, aborting.                | -               | Ошибка привязки локального порта, прерывание.
IRCLink.ResolveFailedText     | Failed to resolve server address, aborting.        | -               | Не удалось определить адрес сервера, прерывание.
IRCLink.TimeOutError          | Timeout connecting to server.                      | -               | Время ожидания соединения с сервером истекло.
IRC_System.NotInAChannelText  | Not in a channel!                                  | -               | Вы не находитесь в канале!
IRC_System.KickedFromText     | You were kicked from                               | -               | Вас выгнали из

Additional notification strings from `XInterface.int` should be added here following the same structure and rules.

