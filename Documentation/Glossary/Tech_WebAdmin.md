# WebAdmin glossary

## Entity Glossary Rules (WebAdmin)

- **Sources:** Strings used by the in-game WebAdmin (web-based administration interface), taken from `.int` files and any web-related localization resources that define WebAdmin labels, menu entries, button captions, tooltips, form field names, and inline help texts. Current Russian: matching `.rut` files in `/rut/`. Old Russian: matching `.rut` files in `/rut_old/`.
- **Structure / categories:** Sections are grouped by WebAdmin area/page: login and session management, server information, map/playlist management, game settings (rules, bots, mutators), player administration (kick/ban), and logs/monitoring. Within each section, rows are ordered by technical key.
- **Exclusions:** Server names, map names, mutator names, and similar content that is already covered by other entities (`Game_Maps`, `Game_Weapons`, `Game_Pickups`, `Game_Vehicles`, `Game_Modes`, `UI_Menus`, etc.) are not duplicated here unless the string is WebAdmin-specific (for example, a WebAdmin-only label that does not appear in the in-game UI).
- **Table format:** Standard glossary format: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: WebAdmin-related `.int` files and web localization resources (templates, config-based labels) that define the WebAdmin interface texts.
Current Russian: `/rut/*.rut` (same basenames as the WebAdmin sources).
Old Russian: `/rut_old/*.rut` (same basenames as the WebAdmin sources).

Format (Markdown table):

Technical name | .rut file     | English name | Current Russian | Old Russian
-------------- | ------------- | ------------ | --------------- | -----------
*(TechnicalKey)* | XWebAdmin.rut | (English label) | - | (Old Russian or -)

If no translation: `-`.

Notes:

- When filling this glossary, keep strings grouped by WebAdmin page so that it is easy to see where each term appears in the interface.
- If a label appears both in WebAdmin and the in-game UI, prefer documenting it in the relevant `UI_*.md` entity and reference that entity from here only when needed.

---

## Login and session management

| Technical name           | .rut file     | English name                 | Current Russian | Old Russian |
| -------------------------| ------------- | ----------------------------|-----------------| ----------- |
| UTServerAdmin.AccessDeniedText | XWebAdmin.rut | Access Denied          | Доступ запрещён | - |
| UTServerAdmin.ErrorAuthenticating | XWebAdmin.rut | Exception Occurred During Authentication! | Произошла ошибка во время авторизации! | - |
| xWebQueryAdmins.AdminHomeTitle | XWebAdmin.rut | Admin Home Page        | Домашняя страница администратора | - |
| xWebQueryAdmins.AdminAccountTitle | XWebAdmin.rut | Account            | Аккаунт         | - |
| xWebQueryAdmins.PasswordError | XWebAdmin.rut | Invalid characters in password or password not at least 6 characters. | Неверные символы в пароле или пароль менее 6 символов. | - |
| xWebQueryAdmins.NegSecLevel | XWebAdmin.rut | Negative security level is invalid! | Отрицательный уровень безопасности невозможен! | - |
| xWebQueryAdmins.CannotAssignHigher | XWebAdmin.rut | You cannot assign a security level higher than yours | Вы не можете установить уровень безопасности выше вашего | - |

## Server information and overview

| Technical name           | .rut file     | English name                 | Current Russian | Old Russian |
| -------------------------| ------------- | ----------------------------|-----------------| ----------- |
| UTServerAdmin.WaitTitle | XWebAdmin.rut | Please Wait                  | Пожалуйста подождите | - |
| UTServerAdmin.MapChanging | XWebAdmin.rut | The server is now switching maps.  Please allow 10 - 15 seconds while the server changes maps. | Сервер меняет карту. Пожалуйста, подождите 10 - 15 секунд прежде чем сервер закончит. | - |
| UTServerAdmin.MapChangingTo | XWebAdmin.rut | The server is now switching to map '%MapName%'.    Please allow 10-15 seconds while the server changes maps. | Сервер меняет карту на '%MapName%'. Пожалуйста, подождите 10 - 15 секунд прежде чем сервер закончит. | - |
| UTServerAdmin.LoadingGames | XWebAdmin.rut | Loading Game Types         | Загружаются игровые режимы | - |
| UTServerAdmin.LoadingMaps | XWebAdmin.rut | Loading Available Maps      | Загружаются доступные карты | - |
| UTServerAdmin.Initialized | XWebAdmin.rut | %class% Initialized on port %port% | %class% инициализирован на порте %port% | - |
| xWebQueryCurrent.BadGameType | XWebAdmin.rut | Unsupported Game Type    | Неподдерживаемый режим игры | - |
| xWebQueryCurrent.NoPlayersConnected | XWebAdmin.rut | ** No Players Connected ** | ** Ни один игрок не присоединился ** | - |

## Map list and playlists

| Technical name           | .rut file     | English name                 | Current Russian | Old Russian |
| -------------------------| ------------- | ----------------------------|-----------------| ----------- |
| xWebQueryDefaults.DefaultsMapsLink | XWebAdmin.rut | Maps              | Карты           | - |
| xWebQueryDefaults.ActiveMapNotFound | XWebAdmin.rut | Active map not found:  | Активная карта не найдена:  | - |
| xWebQueryDefaults.InactiveMapNotFound | XWebAdmin.rut | Inactive map not found:  | Неактивная карта не найдена:  | - |
| xWebQueryDefaults.NoteMapsPage | XWebAdmin.rut | To save any changes to a custom maplist, click the Save button.  To apply the selected maplist to the server's map rotation, click the 'Use' button. | Чтобы сохранить изменённый список карт, нажмите 'Сохранить'. Для добавления списка в ротацию сервера, нажмите 'Использовать'. | - |
| xWebQueryCurrent.CurrentLinks[0] | XWebAdmin.rut | Current Game        | Текущая игра    | - |
| xWebQueryCurrent.CurrentLinks[1] | XWebAdmin.rut | Player List         | Список игроков  | - |

## Game rules, bots, and mutators

| Technical name           | .rut file     | English name                 | Current Russian | Old Russian |
| -------------------------| ------------- | ----------------------------|-----------------| ----------- |
| xWebQueryDefaults.NoteRulesPage | XWebAdmin.rut | Configurable game parameters can be changed from this page.  Some parameters may affect more than one gametype. | Параметры игры можно изменить на этой странице. Некоторые параметры могу распространяться на несколько игровых режимов. | - |
| xWebQueryCurrent.CurrentLinks[3] | XWebAdmin.rut | Mutators           | Мутаторы        | - |
| xWebQueryCurrent.SelectedMutators | XWebAdmin.rut | Selected Mutators  | Выбранные мутаторы | - |
| xWebQueryCurrent.PickMutators | XWebAdmin.rut | Select desired mutators | Выбрать желаемые мутаторы | - |
| xWebQueryCurrent.NoteMutatorsPage | XWebAdmin.rut | Select which mutators you want to be used when you hit the Restart Server Link | Выберите мутаторы, которые вы хотите использовать после перезапуска сервера | - |
| xWebQueryCurrent.CurrentLinks[4] | XWebAdmin.rut | Bots               | Боты            | - |
| xWebQueryCurrent.NoBotsTitle | XWebAdmin.rut | Bots unavailable       | Боты недоступны | - |
| xWebQueryCurrent.GameTypeUnsupported | XWebAdmin.rut | The Game Type '%GameType%' does not use standard bots. | Режим игры '%GameType%' не использует обычных ботов. | - |
| xWebQueryCurrent.NoBots | XWebAdmin.rut | You cannot add bots while World Stats Logging is enabled. | Вы не можете добавлять ботов во время активной записи мировой статистики. | - |
| xWebQueryCurrent.Added | XWebAdmin.rut | added.                       | добавлен.       | - |
| xWebQueryCurrent.Removed | XWebAdmin.rut | removed.                   | удалён.         | - |
| xWebQueryCurrent.BotStatus | XWebAdmin.rut | bots were %Action%       | боты: %Action%  | - |
| xWebQueryCurrent.SingleBotStatus | XWebAdmin.rut | bot was %Action%   | боты: %Action%  | - |
| xWebQueryDefaults.NoteVotingGameConfigPage | XWebAdmin.rut | The game configurations for map voting can be modified from this page. | Игровые конфигурации для голосования за карты могут настраиваться на этой странице. | - |

## Player administration (kick/ban, messages)

| Technical name           | .rut file     | English name                 | Current Russian | Old Russian |
| -------------------------| ------------- | ----------------------------|-----------------| ----------- |
| xWebQueryAdmins.NoteUserHomePage | XWebAdmin.rut | Welcome to Admins &amp; Groups Management | Добро пожаловать на &amp; страницу управления | - |
| xWebQueryAdmins.NoteAccountPage | XWebAdmin.rut | Here you can change your password if required. You can also see which privileges were assigned to you by your manager. | Здесь вы можете изменить пароль, если необходимо. Также, вы можете видеть все права, предоставленные вам менеджером | -
| xWebQueryAdmins.NoteUserAddPage | XWebAdmin.rut | As an Admin of this server you can add new Admins and give them privileges. Make sure that the password assigned to the new Admin is not easy to hack. | В качестве администратора этого сервера вы можете добавлять новых администраторов и наделять их привилегиями. Убедитесь, что установленный пароль достаточно сложный. | -
| xWebQueryAdmins.NoteUserEditPage | XWebAdmin.rut | As an Admin of this server you can modify information and privileges for another Admin that you can manage. | В качестве администратора этого сервера вы можете изменять информацию и привилегии другого подконтрольного администратора. | -
| xWebQueryAdmins.NoteUsersBrowsePage | XWebAdmin.rut | Here you can see other Admins that you can manage and modify their privilege and groups assignment. | Здесь вы можете видеть подконтрольных вам администраторов и управлять их привилегиями и группами. | -
| xWebQueryAdmins.NoteGroupAddPage | XWebAdmin.rut | You can create new groups which will have a common set of privileges. Groups are used to give the same privileges to multiple Admins. | Вы можете создавать новые группы, которые будут иметь общий набор привилегий. Вы можете наделить одинаковыми полномочиями сразу нескольких администраторов одной группы. | -
| xWebQueryAdmins.NoteGroupEditPage | XWebAdmin.rut | You can modify which privileges were assigned to this group. Note that you can only change privileges that you have yourself. | Вы можете изменять привилегии, привязанные к группе. Помните, что можно меня только привилегии, установленные вами. | -
| xWebQueryAdmins.NoteGroupsBrowsePage | XWebAdmin.rut | Here you can see all the groups that you can manage, click on a group name to modify it. | Здесь отображается полный список управляемых вами групп. Нажмите на имя группы, чтобы внести изменения. | -
| xWebQueryAdmins.NoteGroupAccessPage | XWebAdmin.rut | Here you can decide in which groups the selected admin will be part of. This will decide which base privileges this admin will have. | Здесь вы можете выбрать, в каких группах будет состоять выбранный вами администратор. Это определит его полномочия. | -
| xWebQueryAdmins.NoteMGroupAccessPage | XWebAdmin.rut | Here you can decide which groups this admin will be able to manage. He will be able to assign other admins to this group. | Здесь вы можете определить, какими группами может управлять администратор. Он сможет добавлять новых администраторов самостоятельно. | -
| xWebQueryAdmins.NameText | XWebAdmin.rut | Name                     | Название        | - |
| xWebQueryAdmins.Group | XWebAdmin.rut | group                       | группа          | - |
| xWebQueryAdmins.Groups | XWebAdmin.rut | Groups                     | Группы          | - |
| xWebQueryAdmins.User | XWebAdmin.rut | user                         | Пользователь    | - |
| xWebQueryAdmins.Modify | XWebAdmin.rut | modify                     | Изменить        | - |
| xWebQueryAdmins.Managed | XWebAdmin.rut | Managed                   | Управляется     | - |
| xWebQueryAdmins.Privileges | XWebAdmin.rut | Privileges             | Привилегии      | - |
| xWebQueryAdmins.SecurityLevel | XWebAdmin.rut | Security Level      | Уровень безопасности | - |
| xWebQueryAdmins.AdminPageTitle | XWebAdmin.rut | Users &amp; Groups Management | Управление пользователями &amp; и группами | - |
| xWebQueryAdmins.BrowseUsersTitle | XWebAdmin.rut | Browse Available Users | Обзор доступных пользователей | - |
| xWebQueryAdmins.BrowseGroupsTitle | XWebAdmin.rut | Browse Available Groups | Обзор доступных групп | - |
| xWebQueryAdmins.AddUserTitle | XWebAdmin.rut | Add a New Administrator | Добавить нового администратора | - |
| xWebQueryAdmins.AddUserButton | XWebAdmin.rut | Add Admin           | Добавить администратора | - |
| xWebQueryAdmins.AddGroupTitle | XWebAdmin.rut | Add New Administration Group | Добавить новую группу для управления | - |
| xWebQueryAdmins.AddGroupButton | XWebAdmin.rut | Add Group          | Добавить группу | - |
| xWebQueryAdmins.EditUserTitle | XWebAdmin.rut | Modify an Administrator | Изменить администратора | - |
| xWebQueryAdmins.EditUserButton | XWebAdmin.rut | Modify Admin       | Изменить администратора | - |
| xWebQueryAdmins.EditGroupTitle | XWebAdmin.rut | Modify an Administration Group | Изменить подконтрольную группу | - |
| xWebQueryAdmins.EditGroupButton | XWebAdmin.rut | Modify Group      | Изменить группу | - |
| xWebQueryAdmins.ModifyUserGroup | XWebAdmin.rut | Modify Groups for | Изменить группы для | - |
| xWebQueryAdmins.ModifyMUserGroup | XWebAdmin.rut | Modify Managed Groups for | Изменить подконтрольные группы для | - |
| xWebQueryAdmins.UserRemoved | XWebAdmin.rut | User '%UserName%' was removed! | '%UserName%' был исключён! | - |
| xWebQueryAdmins.GroupRemoved | XWebAdmin.rut | Group '%GroupName%' was removed! | Группа '%GroupName%' была удалена! | - |
| xWebQueryAdmins.AdminNotFound | XWebAdmin.rut | Admin Not Found     | Администратор не найден | - |
| xWebQueryAdmins.GroupNotFound | XWebAdmin.rut | Group Not Found     | Группа не найдена | - |
| xWebQueryAdmins.PrivTitle | XWebAdmin.rut | Insufficient Privileges | Недостаточно прав | - |
| xWebQueryAdmins.NoneItemText | XWebAdmin.rut | ** There are no %Item%s to list ** | ** Нечего отобразить ** | - |
| xWebQueryAdmins.InsufficientPrivs | XWebAdmin.rut | Your privileges prevent you from %Action% this %Item%. | Ваших привелегий недостаточно для %Action% объекта %Item%. | - |
| xWebQueryAdmins.InvalidItem | XWebAdmin.rut | Invalid %Item% name specified! | Задано неверное имя для объекта %Item%! | - |
| xWebQueryAdmins.InvalidCharacters | XWebAdmin.rut | Invalid characters in %Item% name! | Название объекта %Item% содержит ошибку! | - |
| xWebQueryAdmins.NameExists | XWebAdmin.rut | Must specify a unique name for | Необходимо задать уникальное имя для | - |
| xWebQueryAdmins.YouMustSelect | XWebAdmin.rut | You must select a | Необходимо выбрать | - |
| xWebQueryAdmins.DoesNotExist | XWebAdmin.rut | The selected %Item% does not exist! | Объект %Item% не существует! | - |
| xWebQueryAdmins.CouldNotCreate | XWebAdmin.rut | Exceptional error creating new | Произошла ошибка при создании | - |
| xWebQueryAdmins.CannotAssignPrivs | XWebAdmin.rut | You cannot assign privileges | Вы не можете назначать полномочия | - |
| xWebQueryCurrent.KickButtonText[0] | XWebAdmin.rut | Kick            | Исключить       | - |
| xWebQueryCurrent.KickButtonText[1] | XWebAdmin.rut | Ban             | Забанить        | - |
| xWebQueryCurrent.KickButtonText[2] | XWebAdmin.rut | Kick/Ban        | Исключить/Забанить | - |
| xWebQueryDefaults.DefaultsIPPolicyLink | XWebAdmin.rut | Access Policies | Политика доступа | - |
| xWebQueryDefaults.IDBan | XWebAdmin.rut | (Global Ban)              | (Глобальный бан) | - |
| xWebQueryDefaults.NotePolicyPage | XWebAdmin.rut | Any banned players will automatically be added to this listing. You will only be able to add manual bans for IP addresses. | Любой забаненный игрок автоматически добавляется в этот список. Вы сможете добавлять баны вручную только для IP-адресов. | -
| xWebQueryCurrent.NotePlayersPage | XWebAdmin.rut | In order to see the global ID for connected players, change the value for bBanbyID in the [Engine.AccessControl] section of your ini to 'True'.  Bots cannot be banned. | Для просмотра глобального ID подключенных игроков, измените значение bBanbyID в секции [Engine.AccessControl] вашего ini файла на 'True'. Боты не банятся. | -
| xWebQueryCurrent.ConsoleUserlist | XWebAdmin.rut | Getting or setting admin accounts and groups is not allowed through the webadmin console.  This action has been logged. | Получение или настройка аккаунтов администраторов или групп запрещено через веб-консоль. Это действие будет записано. | -
| xWebQueryCurrent.NoteConsolePage | XWebAdmin.rut | You may communicate with the players in the game by entering text at the text box and clicking 'Send'.  You can also enter console commands to control the server.  Game messages are shown in the log window, with the exception of team messages. | Вы можете общаться с игроками в матче, вводя текст в поле и нажав 'Отправить'. Также можно вводить консольные команды для управления сервером. Игровые сообщения отображаются в окне логов, за исключением чата команды. | -

## Logs and monitoring

| Technical name           | .rut file     | English name                 | Current Russian | Old Russian |
| -------------------------| ------------- | ----------------------------|-----------------| ----------- |
| xWebQueryDefaults.CannotModify | XWebAdmin.rut | ** You cannot modify any settings in this section ** | ** Вы не можете изменять параметры в этом разделе ** | - |
| xWebQueryCurrent.CurrentLinks[2] | XWebAdmin.rut | Server Console   | Серверная консоль | - |
| xWebQueryCurrent.NoteGamePage | XWebAdmin.rut | You can view and select maps from other gametypes by using the combo box.  Selecting maps from other gametypes will automatically switch the server to that gametype. | Вы можете просматривать или выбирать карты других режимов через комбо-окно. Выбор карт других режимов автоматически переносит вас на сервер выбранного режима. | -
