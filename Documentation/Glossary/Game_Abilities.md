# Abilities glossary

## Entity Glossary Rules (Game_Abilities)

These rules apply only to the Abilities entity and override the general Glossary Rules where they differ.

- **Categories:** Abilities are grouped into **Movement**, **Special movement (no direct input)**, **Looking**, **Combat**, **Communication & taunts**, **HUD & display**, and **Game & misc**. Terms are player actions and control labels (key bindings), not weapon names.
- **Sources:** Terms from XInterface.int (Bindings/Labels), GUI2K4.int (BindingLabel), GamePlay.int (ActionMessage_DM), UnrealGame.int (DMHints). Current Russian: /rut (GUI2K4.rut, section [ControlBinder]). Old Russian: /rut_old (GUI2K4.rut, section [ControlBinder]).
- **Exclusions:** Weapon selection labels (Shield Gun, Assault Rifle, etc.) belong in the Weapons entity. Only the generic actions Fire, Alt-Fire, Throw Weapon, Next/Prev Weapon, etc. are listed here.
- **Table format:** Pipe-separated columns. Column order: Technical name | .rut file | English name | Current Russian | Old Russian. If no translation: - .
- **Alignment:** Same column widths across all tables.

---

Source: XInterface.int, GUI2K4.int, GamePlay.int, UnrealGame.int (English).
Current Russian: /rut.
Old Russian: /rut_old.

Format: Technical name | .rut file | English name | Current Russian | Old Russian.
If no translation: - .

Notes:

- **Dodge** and **Double Jump** appear in tutorial/hint text (e.g. "Double tap a key to dodge", "Press jump again at the peak of a jump"); they are not separate binding labels in the control list.
- Binding labels may appear in prompts like "Press [Fire] to join" or in key config UI.
- For control bindings, the primary Russian source is `GUI2K4.rut` `[ControlBinder]`; Current Russian uses `/rut/GUI2K4.rut`, Old Russian uses `/rut_old/GUI2K4.rut`.
- Special movement abilities **Double Jump** and **Dodge** are documented only in tutorial / hint text (e.g. `GamePlay.int` `[ActionMessage_DM]`, `UnrealGame.int` `DMHints`, `UTClassic.int` mutator help) and have no dedicated input bindings.

Tutorial / hint sources:

- `int/GamePlay.int` — `[ActionMessage_DM]` ("Double tap a key to dodge", "Double jump").
- `int/UnrealGame.int` — `DMHints` ("Press jump again at the peak of a jump…", dodge description).
- `int/UTClassic.int` — `DJHelp`, `WDHelp`, `DDJHelp` (double jump, wall dodge, dodge double jump).

---

## Movement

| Technical name   | .rut file    | English name       | Current Russian | Old Russian |
| ---------------- | ------------ | ------------------ | --------------- | ----------- |
| Forward          | GUI2K4.rut   | Forward            | Вперёд          | Вперед |
| Backward         | GUI2K4.rut   | Backward           | Назад           | Назад |
| Strafe Left      | GUI2K4.rut   | Strafe Left        | Движение влево  | Смещение влево |
| Strafe Right     | GUI2K4.rut   | Strafe Right       | Движение вправо | Смещение вправо |
| Jump             | GUI2K4.rut   | Jump               | Прыжок          | Прыжок |
| Walk             | GUI2K4.rut   | Walk               | Ходьба          | Идти |
| Crouch           | GUI2K4.rut   | Crouch             | Присед          | Приседание |
| Strafe Toggle    | GUI2K4.rut   | Strafe Toggle       | Переключение движения | Вкл/выкл смещение |

### Special movement (no direct input binding)

| Technical name   | .rut file   | English name  | Current Russian | Old Russian |
| ---------------- | ----------- | ------------- | --------------- | ----------- |
| Double Jump      | GamePlay.rut| Double Jump   | -               | - |
| Dodge            | GamePlay.rut| Dodge         | -               | - |

---

## Looking

| Technical name     | .rut file  | English name        | Current Russian | Old Russian |
| ------------------ | ---------- | ------------------- | --------------- | ----------- |
| Turn Left          | GUI2K4.rut | Turn Left           | Повернуться налево | Повернуться влево |
| Turn Right         | GUI2K4.rut | Turn Right          | Повернуться направо | Повернуться вправо |
| Look Up            | GUI2K4.rut | Look Up             | Посмотреть вверх | Посмотреть вверх |
| Look Down          | GUI2K4.rut | Look Down           | Посмотреть вниз | Посмотреть вниз |
| Center View        | GUI2K4.rut | Center View         | Центрировать взгляд | Посмотреть вперед |
| Toggle BehindView  | GUI2K4.rut | Toggle "BehindView" | Режим камеры от 3-го лица | Вкл/выкл вид от 3-го лица |
| Toggle Camera Mode | GUI2K4.rut | Toggle Camera Mode  | Переключить режим камеры | Смена режима камеры |

---

## Combat

| Technical name   | .rut file  | English name     | Current Russian | Old Russian |
| ---------------- | ---------- | ---------------- | --------------- | ----------- |
| Fire             | GUI2K4.rut | Fire             | Стрельба        | Основной режим стрельбы |
| Alt-Fire         | GUI2K4.rut | Alt-Fire         | Альт. режим стрельбы | Альтернативный режим стрельбы |
| Throw Weapon     | GUI2K4.rut | Throw Weapon     | Выбросить оружие | Бросить текущее оружие |
| Best Weapon      | GUI2K4.rut | Best Weapon      | Лучшее оружие   | Выбрать лучшее оружие |
| Next Weapon      | GUI2K4.rut | Next Weapon      | След. оружие    | Выбрать следующее оружие |
| Prev Weapon      | GUI2K4.rut | Prev Weapon      | Пред. оружие    | Выбрать предыдущее оружие |
| Last Weapon      | GUI2K4.rut | Last Weapon      | Последнее оружие | Выбрать предпоследнее оружие |
| Weapon Selection | GUI2K4.rut | Weapon Selection | Выбор оружия    | Выбор оружия |
| Super Weapon     | GUI2K4.rut | Super Weapon     | Супероружие     | Супероружие |
| Use              | GUI2K4.rut | Use              | Использовать    | Использовать |

---

## Communication & taunts

| Technical name   | .rut file  | English name   | Current Russian | Old Russian |
| ---------------- | ---------- | -------------- | --------------- | ----------- |
| Say              | GUI2K4.rut | Say            | Сказать         | Текстовое сообщение всем |
| Team Say         | GUI2K4.rut | Team Say       | Сказать команде | Текстовое сообщение команде |
| Speech Menu      | GUI2K4.rut | Speech Menu    | Меню общения    | Меню голосовых команд |
| In Game Chat     | GUI2K4.rut | In Game Chat   | Внутриигровой чат | Открыть окно чата |
| Taunts           | GUI2K4.rut | Taunts         | Насмешки        | Жесты |
| Pelvic Thrust    | GUI2K4.rut | Pelvic Thrust  | Вращение таза   | Удар по Печени |
| Ass Smack        | GUI2K4.rut | Ass Smack      | Шлепок по заднице | 'Поцелуй меня в задницу!' |
| Throat Cut       | GUI2K4.rut | Throat Cut     | Перерезать глотку | 'Голову снесу!' |
| Brag             | GUI2K4.rut | Brag           | Хвастовство     | Нахальство |

---

## HUD & display

| Technical name            | .rut file  | English name            | Current Russian | Old Russian |
| ------------------------- | ---------- | ----------------------- | --------------- | ----------- |
| Grow Hud                  | GUI2K4.rut | Grow Hud                | Увеличить размер интерфейса | Увеличить HUD |
| Shrink Hud                | GUI2K4.rut | Shrink Hud              | Уменьшить размер интерфейса | Уменьшить HUD |
| ScoreBoard                | GUI2K4.rut | ScoreBoard              | Таблица результатов | Табло счета |
| ScoreBoard Toggle         | GUI2K4.rut | ScoreBoard Toggle       | Показать таблицу результатов | Отобразить/скрыть табло счета |
| Show Radar Map            | GUI2K4.rut | Show Radar Map          | Показать радар   | Показать/скрыть карту-радар |
| Show Personal Stats       | GUI2K4.rut | Show Personal Stats     | Показать персональную статистику | Показать/скрыть личную статистику |
| View Next Player's Stats  | GUI2K4.rut | View Next Player's Stats | Показать статистику следующего игрока | Показать статистику следующего игрока |

---

## Game & misc

| Technical name                  | .rut file  | English name                 | Current Russian | Old Russian |
| ------------------------------- | ---------- | ---------------------------- | --------------- | ----------- |
| Pause                           | GUI2K4.rut | Pause                        | Пауза           | Пауза |
| Screenshot                      | GUI2K4.rut | Screenshot                   | Скриншот        | Сделать скриншот |
| Menu                            | GUI2K4.rut | Menu                         | Меню            | Меню |
| Server Info                     | GUI2K4.rut | Server Info                  | Информация о сервере | Сведения о сервере |
| Vehicle Horn                    | GUI2K4.rut | Vehicle Horn                 | Гудок           | Звуковой сигнал транспорта |
| Find Red Base                   | GUI2K4.rut | Find Red Base                | Найти красную базу | Показать путь к базе красной команды |
| Find Blue Base                  | GUI2K4.rut | Find Blue Base               | Найти голубую базу | Показать путь к базе синей команды |
| Next Inventory Item             | GUI2K4.rut | Next Inventory Item          | Следующий предмет в инвентаре | Выбрать следующий предмет инвентаря |
| Previous Inventory Item         | GUI2K4.rut | Previous Inventory Item     | Предыдущий предмет в инвентаре | Выбрать предыдущий предмет инвентаря |
| Activate Current Inventory Item | GUI2K4.rut | Activate Current Inventory Item | Использовать текущий предмет в инвентаре | Активировать текущий предмет инвентаря |
| Music Player                    | GUI2K4.rut | Music Player                 | Музыкальный плеер | Проигрыватель музыки |
| Voting Menu                     | GUI2K4.rut | Voting Menu                  | Меню голосования | Меню голосования |
| Toggle Console                  | GUI2K4.rut | Toggle Console               | Переключить консоль | Открыть/закрыть консоль |
| View Connection Status         | GUI2K4.rut | View Connection Status       | Посмотреть состояние подключения | Показать статистику соединения |
| Cancel Pending Connection       | GUI2K4.rut | Cancel Pending Connection    | Отменить ожидающее соединение | Отменить текущую попытку соединения |
| Activate Microphone             | GUI2K4.rut | Activate Microphone          | Включить микрофон | Включить микрофон |
| Speak in Public Channel         | GUI2K4.rut | Speak in Public Channel      | Говорить в публичном канале | Говорить в общем канале |
| Speak in local Channel          | GUI2K4.rut | Speak in local Channel       | Говорить в локальном канале | Говорить в локальном канале |
| Speak in Team Channel           | GUI2K4.rut | Speak in Team Channel        | Говорить с командой | Говорить в командном канале |
| Toggle Public Channel           | GUI2K4.rut | Toggle Public Channel        | Переключиться на публичный канал | Вкл/выкл общий канал |
| Toggle Local Channel            | GUI2K4.rut | Toggle Local Channel         | Переключиться на локальный канал | Вкл/выкл локальный канал |
| Toggle Team Channel             | GUI2K4.rut | Toggle Team Channel          | Переключиться на канал команды | Вкл/выкл командный канал |

