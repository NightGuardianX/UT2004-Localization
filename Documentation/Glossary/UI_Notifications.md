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
- **Table format:** Standard 5‑column glossary tables: **Technical name | .rut file | English name | Current Russian | Old Russian**.  
  Technical names use `Section.Key` form (for example `HudBase.YouveWonTheMatch`, `ExtendedConsole.ServerFullMsg`).

---

Source: `XInterface.int`.

Current Russian: `/rut/XInterface.rut`.

Old Russian: `/rut_old/XInterface.rut`.

Format (Markdown table):

Technical name | .rut file | English name | Current Russian | Old Russian
-------------- | --------- | ------------ | --------------- | -----------

If no translation: `-`.

Notes:

- When filling or updating this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- If a value in `/rut` is clearly non‑Russian (e.g. Spanish), leave **Current Russian** as `-` and rely on `/rut_old` for **Old Russian**.
- **Consistency rule for multi‑kill / spree terms:** all related entries for the same English term (e.g. `Double Kill`, `Mega Kill`, `Killing Spree`, `Unstoppable`) **must use the same Russian term** across all sources: `KillString[]` in `UnrealGame`, `MultiKillMessage.KillString[]` in `XGame`, and `SpreeLabel[]` / `MultiKillsLabel[]` in `GUI2K4`.  
  - Differences in case, punctuation, or surrounding text (e.g. `ДВОЙНОЕ УБИЙСТВО!` vs `Двойное убийство:`) are acceptable; the base term (*двойное убийство*, *мегаубийство*, etc.) must remain identical everywhere.

---

## HUD match notifications (`[HudBase]`)

| Technical name                 | .rut file     | English name                               | Current Russian | Old Russian |
| ------------------------------ | ------------- | ------------------------------------------ | --------------- | ----------- |
| HudBase.WaitingToSpawn        | XInterface.rut | Press [Fire] to join the match!           | -               | Нажмите [Огонь] для присоединения к матчу! |
| HudBase.AtMenus               | XInterface.rut | Press [ESC] to close menu                 | -               | Нажмите [ESC] чтобы закрыть меню |
| HudBase.YouveWonTheMatch      | XInterface.rut | You've won the match!                     | -               | Вы выиграли матч! |
| HudBase.YouveLostTheMatch     | XInterface.rut | You've lost the match.                    | -               | Вы проиграли матч. |
| HudBase.NowViewing            | XInterface.rut | Now viewing                               | -               | Вид от |
| HudBase.InitialViewingString  | XInterface.rut | Press Fire to View a different Player     | -               | Нажмите Огонь для просмотра другого игрока |

---

## Multi‑kill announcer messages (`KillString[]`)

| Technical name                            | .rut file      | English name       | Current Russian                       | Old Russian |
| ----------------------------------------- | -------------- | ------------------ | ------------------------------------- | ----------- |
| UnrealGame.KillString[0]                 | UnrealGame.rut | Double Kill!       | -                                     | Двойное убийство! |
| UnrealGame.KillString[1]                 | UnrealGame.rut | MultiKill!         | -                                     | Мультиубийство! |
| UnrealGame.KillString[2]                 | UnrealGame.rut | MegaKill!          | -                                     | Мегаубийство! |
| UnrealGame.KillString[3]                 | UnrealGame.rut | UltraKill!         | -                                     | Ультраубийство! |
| UnrealGame.KillString[4]                 | UnrealGame.rut | MONSTER KILL!      | -                                     | МОНСТР! |
| UnrealGame.KillString[5]                 | UnrealGame.rut | LUDICROUS KILL!    | -                                     | ГЕНОЦИД! |
| UnrealGame.KillString[6]                 | UnrealGame.rut | HOLY SHIT!         | -                                     | ДЬЯВОЛ! |
| XGame.MultiKillMessage.KillString[0]     | XGame.rut      | Double Kill!       | Двойное убийство!                     | Двойное убийство! |
| XGame.MultiKillMessage.KillString[1]     | XGame.rut      | Multi Kill!        | Серия убийств!                        | Мультиубийство! |
| XGame.MultiKillMessage.KillString[2]     | XGame.rut      | Mega Kill!!        | Мега-убийство!                        | Мегаубийство!! |
| XGame.MultiKillMessage.KillString[3]     | XGame.rut      | ULTRA KILL!!       | УЛЬТРА-НАСИЛИЕ                        | Ультраубийство!! |
| XGame.MultiKillMessage.KillString[4]     | XGame.rut      | M O N S T E R  K I L L !!! | М О Н С Т Р У О З Н О !!!    | М О Н С Т Р !!! |
| XGame.MultiKillMessage.KillString[5]     | XGame.rut      | L U D I C R O U S !!!      | Н Е М Ы С Л И М О !!!         | Г Е Н О Ц И Д !!! |
| XGame.MultiKillMessage.KillString[6]     | XGame.rut      | H O L Y  S H I T !         | С Р А Н Ь  Г О С П О Д Н Я !  | Д Ь Я В О Л !!! |

---

## Spree announcer messages (`SelfSpreeNote[]`)

| Technical name                            | .rut file      | English name       | Current Russian | Old Russian |
| ----------------------------------------- | -------------- | ------------------ | --------------- | ----------- |
| UnrealGame.SelfSpreeNote[0]              | UnrealGame.rut | Killing Spree!     | -               | Убийственный порыв! |
| UnrealGame.SelfSpreeNote[1]              | UnrealGame.rut | Rampage!           | -               | Ярость! |
| UnrealGame.SelfSpreeNote[2]              | UnrealGame.rut | Dominating!        | -               | Доминирование! |
| UnrealGame.SelfSpreeNote[3]              | UnrealGame.rut | Unstoppable!       | -               | Непреодолим! |
| UnrealGame.SelfSpreeNote[4]              | UnrealGame.rut | GODLIKE!           | -               | РАССВИРЕПЕЛ! |
| UnrealGame.SelfSpreeNote[5]              | UnrealGame.rut | WICKED SICK!       | -               | БОГОПОДОБЕН! |

---

## Profile summary labels for sprees and multi‑kills (`GUI2K4.int`)

| Technical name                            | .rut file   | English name       | Current Russian      | Old Russian |
| ----------------------------------------- | ----------- | ------------------ | -------------------- | ----------- |
| GUI2K4.SpreeLabel[0]                     | GUI2K4.rut  | Killing Spree:     | Серия убийств:       | Частые Убийства: |
| GUI2K4.SpreeLabel[1]                     | GUI2K4.rut  | Rampage:           | Буйство:             | Ярость: |
| GUI2K4.SpreeLabel[2]                     | GUI2K4.rut  | Dominating:        | Доминирование:       | Доминирующий: |
| GUI2K4.SpreeLabel[3]                     | GUI2K4.rut  | Unstoppable:       | Неудержимость:       | Неодолимый: |
| GUI2K4.SpreeLabel[4]                     | GUI2K4.rut  | GODLIKE:           | БОГОПОДОБЕН:         | БОГОПОДОБНЫЙ: |
| GUI2K4.SpreeLabel[5]                     | GUI2K4.rut  | WICKED SICK:       | ЧИСТОЕ БЕЗУМИЕ:      | ЗЛОБНЫЙ ПСИХ: |
| GUI2K4.MultiKillsLabel[0]                | GUI2K4.rut  | Double Kill:       | Двойное убийство:    | Двойное Убийца: |
| GUI2K4.MultiKillsLabel[1]                | GUI2K4.rut  | MultiKill:         | Серия убийств:       | Мульти Убийца: |
| GUI2K4.MultiKillsLabel[2]                | GUI2K4.rut  | MegaKill:          | Мегаубийство:        | Мега Убийца: |
| GUI2K4.MultiKillsLabel[3]                | GUI2K4.rut  | UltraKill:         | Ультранасилие:       | Ультра Убийца: |
| GUI2K4.MultiKillsLabel[4]                | GUI2K4.rut  | MONSTER KILL:      | МОНСТРУОЗНО:         | - |
| GUI2K4.MultiKillsLabel[5]                | GUI2K4.rut  | LUDICROUS KILL:    | НЕМЫСЛИМО:           | - |
| GUI2K4.MultiKillsLabel[6]                | GUI2K4.rut  | HOLY SHIT:         | СРАНЬ ГОСПОДНЯ:      | - |

---

## Server and console notifications (`[ExtendedConsole]`)

| Technical name                        | .rut file     | English name                         | Current Russian | Old Russian |
| ------------------------------------- | ------------- | ------------------------------------ | --------------- | ----------- |
| ExtendedConsole.AddedCurrentHead      | XInterface.rut | Added Server:                        | -               | Добавлен сервер: |
| ExtendedConsole.AddedCurrentTail      | XInterface.rut | To Favorites!                        | -               | В избранное! |
| ExtendedConsole.ServerFullMsg         | XInterface.rut | Server is now full                   | -               | Сервер сейчас заполнен |

---

## IRC / chat connection notifications (`[IRCLink]`, `[IRC_System]`)

| Technical name                 | .rut file     | English name                                        | Current Russian | Old Russian |
| ------------------------------ | ------------- | --------------------------------------------------- | --------------- | ----------- |
| IRCLink.InvalidAddressText    | XInterface.rut | Invalid server address, aborting.                  | -               | Неверный адрес сервера, прерывание. |
| IRCLink.ErrorBindingText      | XInterface.rut | Error binding local port, aborting.                | -               | Ошибка привязки локального порта, прерывание. |
| IRCLink.ResolveFailedText     | XInterface.rut | Failed to resolve server address, aborting.        | -               | Не удалось определить адрес сервера, прерывание. |
| IRCLink.TimeOutError          | XInterface.rut | Timeout connecting to server.                      | -               | Время ожидания соединения с сервером истекло. |
| IRC_System.NotInAChannelText  | XInterface.rut | Not in a channel!                                  | -               | Вы не находитесь в канале! |
| IRC_System.KickedFromText     | XInterface.rut | You were kicked from                               | -               | Вас выгнали из |

---

## Vote messages (XVoting.int, Engine.int)

Source: `XVoting.int` (`[xVotingHandler]`), `Engine.int` (`[GameMessage]`). Current Russian: `/rut/Engine.rut` (GameMessage); `/rut/XVoting.rut` has non‑Russian placeholder → `-`. Old Russian: `/rut_old/XVoting.rut`, `/rut_old/Engine.rut`.

| Technical name | .rut file   | English name | Current Russian | Old Russian |
| -------------- | ----------- | ------------ | --------------- | ----------- |
| GameMessage.VoteStarted | Engine.rut  | started a vote. | начал голосование. | начал голосование. |
| GameMessage.VotePassed | Engine.rut  | Vote passed. | Голосование завершено. | голосование поддержано. |
| xVotingHandler.lmsgKickVote | XVoting.rut | %playername1% placed a kick vote against %playername2% | - | %playername1% объявил голосование на выброс %playername2% |
| xVotingHandler.lmsgAnonymousKickVote | XVoting.rut | A kick vote has been placed against %playername% | - | Объявлено голосование на выброс %playername% |
| xVotingHandler.lmsgKickVoteAdmin | XVoting.rut | %playername% attempted to submit a kick vote against the server administrator ! | - | %playername% попытался предложить голосование на выброс администратора сервера ! |
| xVotingHandler.lmsgMapWon | XVoting.rut | %mapname% has won ! | - | Карта %mapname% победила ! |
| xVotingHandler.lmsgMidGameVote | XVoting.rut | Mid-Game Map Voting has been initiated !!!! | - | Инициировано голосование карты в игре !!!! |
| xVotingHandler.lmsgSpectatorsCantVote | XVoting.rut | Sorry, Spectators can not vote. | - | Извините, наблюдатели не могут голосовать. |
| xVotingHandler.lmsgMapVotedFor | XVoting.rut | %playername% has voted for %mapname% | - | %playername% проголосовал за %mapname% |
| xVotingHandler.lmsgMapVotedForWithCount | XVoting.rut | %playername% has placed %votecount% votes for %mapname% | - | %playername% подал %votecount% голосов за карту %mapname% |

Additional notification strings from `XInterface.int` should be added here following the same structure and rules.

