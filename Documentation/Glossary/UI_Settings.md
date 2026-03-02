# UI Settings glossary

## Entity Glossary Rules (UI_Settings)

These rules apply only to the `UI_Settings` entity and override the general Glossary Rules where they differ.

- **Sources:** Text for options, sliders, checkboxes and other controls from the Settings menus:
  - `UT2K4Tab_DetailSettings` / `UT2K4Tab_DetailSettingsWS` (Display),
  - `UT2K4Tab_AudioSettings` (Audio),
  - `UT2K4Tab_PlayerSettings` (Player),
  - `UT2K4Tab_GameSettings` / `UT2K4Tab_GameSettingsWS` (Game),
  - `UT2K4Tab_IForceSettings` / `UT2K4Tab_IForceSettingsWS` (Input),
  - `UT2K4Tab_WeaponPref` (Weapons),
  - `UT2K4Tab_HudSettings` (HUD),
  - and any related `.int` classes used on the Settings screen.
- **Current Russian:** `/rut/GUI2K4.rut` (matching sections and keys).  
  **Old Russian:** `/rut_old/*.rut` (matching sections), where available.
- **Scope:** Only the **individual settings controls and values** (e.g. *Brightness*, *Dynamic Lighting*, *Auto-Taunt*, *Weapon Bob*).  
  Names of whole menus / tabs (e.g. *Settings*, *Display*, *Audio*) are documented in the `UI_Menus` entity.
- **Structure / categories:** Settings are grouped into sections mirroring the in‑game tabs:
  - **Display settings**
  - **Audio settings**
  - **Player settings**
  - **Game settings**
  - **Input settings**
  - **Weapon settings**
  - **HUD settings**
- **Exclusions:** 
  - Main menu buttons belong to `UI_StartMenuButtons`.
  - Generic dialogs and confirmation popups belong to dialog / popup entities.
- **Table format:** Standard 4‑column table:
  - Columns: **Technical name | English name | Current Russian | Old Russian**.
  - If no translation is known yet, use `-`.

---

Source: `GUI2K4.int` (sections `UT2K4Tab_*`) and related `.int` files.

Current Russian: `/rut/GUI2K4.rut`.

Old Russian: `/rut_old/*.rut`.

Format:

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
*(Section.Key)*          | (UI label)         | (Current RU)    | (Old RU or -)

If no translation: `-`.

Notes:

- **Technical name** usually includes the section and key, e.g. `UT2K4Tab_DetailSettings.BrightnessSlider.Caption`.
- Use the same English source line that appears in `.int` comments (`; EN:`) when possible.

---

## Display settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_DetailSettings.BrightnessSlider.Caption | Brightness | Яркость | Яркость
UT2K4Tab_DetailSettings.ContrastSlider.Caption | Contrast | Контраст | Контрастность
UT2K4Tab_DetailSettings.GammaSlider.Caption | Gamma | Гамма | Гамма
UT2K4Tab_DetailSettings.VideoResolution.Caption | Resolution | Разрешение экрана | Разрешение
UT2K4Tab_DetailSettings.VideoFullScreen.Caption | Full Screen | Полноэкранный режим | Полный экран
UT2K4Tab_DetailSettings.VideoColorDepth.Caption | Color Depth | Глубина цвета | Глубина цвета
UT2K4Tab_DetailSettings.RenderDeviceCombo.Caption | Render Device | Метод отрисовки | -
UT2K4Tab_DetailSettings.sbSection1.Caption | Resolution | Разрешение экрана | -
UT2K4Tab_DetailSettings.sbSection2.Caption | Options | Опции | -
UT2K4Tab_DetailSettings.sbSection3.Caption | Gamma Test | Тестирование гаммы | -
UT2K4Tab_DetailSettings.DetailCharacterDetail.Caption | Character Detail | Детализация персонажей | Детализация
UT2K4Tab_DetailSettings.DetailCharacterShadows.Caption | Character Shadows | Тени персонажей | Тени
UT2K4Tab_DetailSettings.DetailWorldDetail.Caption | World Detail | Детализация мира | Детализация текстур
UT2K4Tab_DetailSettings.DetailTextureDetail.Caption | Texture Detail | Детализация текстур | Текстуры
UT2K4Tab_DetailSettings.DetailDecals.Caption | Decals | Декали | Следы
UT2K4Tab_DetailSettings.DetailDecalStay.Caption | Decal Stay | Время существования декалей | Длительность следов
UT2K4Tab_DetailSettings.DetailDecoLayers.Caption | Foliage | Растительность | Листва
UT2K4Tab_DetailSettings.DetailDetailTextures.Caption | Detail Textures | Текстуры высокого качества | Текстуры
UT2K4Tab_DetailSettings.DetailDynamicLighting.Caption | Dynamic Lighting | Динамическое освещение | Динамическое освещение
UT2K4Tab_DetailSettings.DetailPhysics.Caption | Physics Detail | Детализация физики | Детализация физики
UT2K4Tab_DetailSettings.DetailProjectors.Caption | Projectors | Проекции | Проекторы
UT2K4Tab_DetailSettings.DetailCoronas.Caption | Coronas | Ореолы | Ореолы
UT2K4Tab_DetailSettings.DetailTrilinear.Caption | Trilinear Filtering | Трилинейная фильтрация | Трилинейная фильтрация
UT2K4Tab_DetailSettings.DistanceLODSlider.Caption | Fog Distance | Дистанция тумана | -
UT2K4Tab_DetailSettings.MeshLOD.Caption | Dynamic Mesh LOD | Динамический уровень детализации моделей (LOD) | -
UT2K4Tab_DetailSettings.WeatherEffects.Caption | Weather Effects | Погодные эффекты | -
UT2K4Tab_DetailSettingsWS.moMaxMenuFrameRate.Caption | Menu FPS Limit | Ограничение частоты кадров (FPS) в меню | -
UT2K4Tab_DetailSettingsWS.moMaxOfflineFrameRate.Caption | Offline FPS Limit | Ограничение частоты кадров (FPS) для одиночной игры | -
UT2K4Tab_DetailSettingsWS.moMaxOnlineFrameRate.Caption | Online FPS Limit | Ограничение частоты кадров (FPS) для сетевой игры | -
UT2K4Tab_DetailSettings.BitDepthText[0..1] | 16-bit / 32-bit | 16-бит / 32-бит | 16-битный цвет / 32-битный цвет
UT2K4Tab_DetailSettings.DetailLevels[0..8] | Lowest / Very Low / Lower / Low / Normal / High / Higher / Very High / Highest | Самый низкий / Очень низкий / Ниже / Низкий / Нормальный / Высокий / Выше / Очень высокий / Наивысший | Минимальная / Очень низкая / Низкая / Нормальная / Высокая / Очень высокая / Максимальная
UT2K4Tab_DetailSettings.ShadowOptions[0..2] | None / Blob / Full | Без теней / Овал / Полные тени | -
UT2K4Tab_DetailSettings.RenderModeText[0..1] | Direct 3D / Software | Direct 3D / Программный | -

---

## Audio settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_AudioSettings.AudioBK1.Caption | Sound Effects | Звуковые эффекты | -
UT2K4Tab_AudioSettings.AudioBK2.Caption | Announcer | Диктор | -
UT2K4Tab_AudioSettings.AudioBK3.Caption | Text To Speech | Текст в речь (TTS) | -
UT2K4Tab_AudioSettings.AudioEffectsVolumeSlider.Caption | Effects Volume | Громкость эффектов | Объем эффектов
UT2K4Tab_AudioSettings.AudioMusicVolume.Caption | Music Volume | Громкость музыки | Громкость музыки
UT2K4Tab_AudioSettings.AudioLowDetail.Caption | Low Sound Detail | Снизить качество звука | Низкая детализация звуков
UT2K4Tab_AudioSettings.AudioAnnouncerVolume.Caption | Volume | Громкость | Громкость диктора
UT2K4Tab_AudioSettings.AudioAnnounce.Caption | Announcements | Оповещения | Сообщения
UT2K4Tab_AudioSettings.AudioPlayVoices.Caption | Play Voices | Голоса | Речевые сообщения.
UT2K4Tab_AudioSettings.AudioAutoTaunt.Caption | Auto-Taunt | Автонасмешки | Автонасмешки
UT2K4Tab_AudioSettings.AudioRewardAnnouncer.Caption | Reward Announcer | Диктор серий убийсв | -
UT2K4Tab_AudioSettings.AudioStatusAnnouncer.Caption | Status Announcer | Диктор информации | -
UT2K4Tab_AudioSettings.AudioEnableTTS.Caption | Enable In Game | Разрешить | -
UT2K4Tab_AudioSettings.IRCTextToSpeech.Caption | Enable on IRC | Разрешить TTS в IRC | -
UT2K4Tab_AudioSettings.OnlyTeamTTSCheck.Caption | Team Messages Only | Сообщения только для команды | -
UT2K4Tab_AudioSettings.AudioMode.Caption | Audio Mode | Режим звука | Режим звука
UT2K4Tab_AudioSettings.AudioDefaultDriver.Caption | System Driver | Драйвер системы | -
UT2K4Tab_AudioSettings.AudioReverseStereo.Caption | Reverse Stereo | Инвертировать стерео | Обратить стерео
UT2K4Tab_AudioSettings.AudioMatureTaunts.Caption | Mature Taunts | Взрослые насмешки | Злые насмешки
UT2K4Tab_AudioSettings.AudioMessageBeep.Caption | Message Beep | Звуковое оповещение сообщений | Гудок сообщения
UT2K4Tab_AudioSettings.EnableVoiceChat.Caption | Voice Chat | Голосовой чат | -
UT2K4Tab_AudioSettings.VoiceOptions.Caption | Voice Options | Изменение голоса | -
UT2K4Tab_AudioSettings.AudioModes[0..3] | Safe Mode / 3D Audio / H/W 3D Audio / H/W 3D + EAX | Безопасный режим / 3D Аудио / H/W 3D Аудио / H/W 3D + EAX | Программный 3D-звук / Аппаратный 3D-звук / Аппаратный 3D-звук + EAX / Безопасный Режим
UT2K4Tab_AudioSettings.VoiceModes[0..3] | All / No auto-taunts / No taunts / None | Все / Отключить автонасмешки / Без насмешек / Ничего | Все / Без автонасмешек / Без насмешек / Ничего
UT2K4Tab_AudioSettings.AnnounceModes[0..2] | None / Minimal / All | Ничего / Минимально / Все | Отключены / Основные сообщения / Все сообщения

---

## Player settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_PlayerSettings.PlayerBK1.Caption | 3D View | Просмотр в 3D | -
UT2K4Tab_PlayerSettings.PlayerBK2.Caption | Misc. | Прочее | -
UT2K4Tab_PlayerSettings.PlayerBK3.Caption | Biography | Биография | -
UT2K4Tab_PlayerSettings.PlayerName.Caption | Name | Имя игрока | Имя
UT2K4Tab_PlayerSettings.PlayerTeam.Caption | Preferred Team | Предпочитаемая команда | Желаемая команда
UT2K4Tab_PlayerSettings.PlayerHand.Caption | Weapon Hand | Отображение оружия | Отображение оружия
UT2K4Tab_PlayerSettings.PlayerFOV.Caption | Default FOV | Угол обзора (FOV) по умолчанию | Угол обзора
UT2K4Tab_PlayerSettings.Player3DView.Caption | 3D View | Просмотр в 3D | 3-хмерный вид
UT2K4Tab_PlayerSettings.PlayerSmallWeap.Caption | Small Weapons | Компактное оружие | Маленькое оружие
UT2K4Tab_PlayerSettings.VoiceType.Caption | Voice Type | Голос персонажа | -
UT2K4Tab_PlayerSettings.bPickModel.Caption | Change Character | Смена персонажа | -
UT2K4Tab_PlayerSettings.HandNames[0..3] | Left / Center / Right / Hidden | Справа / По центру / Слева / Скрыто | Справа / Скрыт / Слева / По центру
UT2K4Tab_PlayerSettings.TeamNames[0..2] | Red / Blue / None | Красный / Синий / Не выбрано | Красная / Синяя / -

---

## Game settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_GameSettings.GameBK1.Caption | Gameplay | Игровой процесс | -
UT2K4Tab_GameSettings.GameBK2.Caption | Network | Сеть | -
UT2K4Tab_GameSettings.GameBK3.Caption | Stats | Статистика | -
UT2K4Tab_GameSettings.GameBK4.Caption | Misc | Прочее | -
UT2K4Tab_GameSettings.GameBK5.Caption | Unique ID / Messages | Уникальный ID / Сообщения | -
UT2K4Tab_GameSettings.GameAutoAim.Caption | Auto Aim | Помощь в прицеливании | Автоприцеливание
UT2K4Tab_GameSettings.GameDodging.Caption | Dodging | Уклонение | Уклонение
UT2K4Tab_GameSettings.GameGoreLevel.Caption | Gore Level | Уровень жестокости | Уменьшить уровень крови
UT2K4Tab_GameSettings.GameWeaponBob.Caption | Weapon Bob | Покачивание оружия | Балансировка оружия
UT2K4Tab_GameSettings.GameClassicTrans.Caption | High Beacon Trajectory | Траектория транслокатора (высокая) | -
UT2K4Tab_GameSettings.LandShaking.Caption | Landing Viewshake | Тряска камеры при приземлении | -
UT2K4Tab_GameSettings.WeaponAutoSwitch.Caption | Weapon Switch On Pickup | Смена оружия при подборе | -
UT2K4Tab_GameSettings.OnlineNetSpeed.Caption | Connection | Скорость сети | Связь
UT2K4Tab_GameSettings.NetworkDynamicNetspeed.Caption | Dynamic Netspeed | Адаптивная пропускная способность | Переменная сетевая скорость
UT2K4Tab_GameSettings.OnlineStatsName.Caption | UserName | Имя пользователя | Имя пользователя
UT2K4Tab_GameSettings.OnlineStatsPW.Caption | Password | Пароль | Пароль
UT2K4Tab_GameSettings.OnlineTrackStats.Caption | Track Stats | Отслеживание статистики | Статистика
UT2K4Tab_GameSettings.ViewOnlineStats.Caption | View Stats | Просмотр статистики | Смотреть статистику
UT2K4Tab_GameSettings.EpicID.Caption | Your Unique id is: | Ваш уникальный ID: | Ваш уникальный id:
UT2K4Tab_GameSettings.PrecacheSkins.Caption | Preload all player skins | Предзагрузка скинов | -
UT2K4Tab_GameSettings.SpeechRecognition.Caption | Speech Recognition | Распознавание речи | -
UT2K4Tab_GameSettingsWS.GameBK0.Caption | Terms Of Service | Пользовательское соглашение | -
UT2K4Tab_GameSettingsWS.CopyGUID.Caption | Copy GUID | Копировать GUID | -
UT2K4Tab_GameSettingsWS.ViewTOS.Caption | View Terms Of Service | Посмотреть пользовательское соглашение | -
UT2K4Tab_GameSettings.NetSpeedText[0..3] | Modem / ISDN / Cable/ADSL / LAN/T1 | Модем / ISDN / Кабель/ADSL / LAN/T1 | Модем / ISDN / Cable/ADSL / LAN/T1

---

## Input settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_IForceSettings.InputBK1.Caption | Options | Опции | -
UT2K4Tab_IForceSettings.InputBK2.Caption | TouchSense Force Feedback | Виброотдача (TouchSense) | Обратная связь TouchSense
UT2K4Tab_IForceSettings.InputBK3.Caption | Fine Tuning | Тонкая настройка | -
UT2K4Tab_IForceSettings.ControlBindButton.Caption | Configure Controls | Настройки управления | -
UT2K4Tab_IForceSettings.SpeechBindButton.Caption | Speech Binder | Голосовые команды | -
UT2K4Tab_IForceSettings.InputMouseSensitivity.Caption | Mouse Sensitivity (Game) | Чувствительность мыши (Игра) | Чувствительность мыши (игра)
UT2K4Tab_IForceSettings.InputMenuSensitivity.Caption | Mouse Sensitivity (Menus) | Чувствительность мыши (Меню) | Чувствительность мыши (меню)
UT2K4Tab_IForceSettings.InputInvertMouse.Caption | Invert Mouse | Инверсия мышь | Инвертировать мышь
UT2K4Tab_IForceSettings.InputAutoSlope.Caption | Auto Slope | Автонаклон | Автонаклон
UT2K4Tab_IForceSettings.InputDodgeTime.Caption | Dodge Double-Click Time | Задержка двойного нажатия для уклонения | Время двойного щелчка
UT2K4Tab_IForceSettings.InputMouseSmoothing.Caption | Mouse Smoothing | Сглаживание мыши | Сглаживание мыши
UT2K4Tab_IForceSettings.InputMouseSmoothStr.Caption | Mouse Smoothing Strength | Интенсивность сглаживания мыши | Сглаживание
UT2K4Tab_IForceSettings.InputMouseAccel.Caption | Mouse Accel. Threshold | Порог ускорения мыши | Порог ускорения мыши
UT2K4Tab_IForceSettings.InputMouseLag.Caption | Reduce Mouse Lag | Снижение задержки ввода мыши | Уменьшить сглаживание мыши
UT2K4Tab_IForceSettings.InputUseJoystick.Caption | Enable Joystick | Включить геймпад | Джойстик
UT2K4Tab_IForceSettings.InputIFWeaponEffects.Caption | Weapon Effects | Эффекты оружия | Эффекты оружия
UT2K4Tab_IForceSettings.InputIFPickupEffects.Caption | Pickup Effects | Эффекты подбора | Эффекты боеприпасов
UT2K4Tab_IForceSettings.InputIFDamageEffects.Caption | Damage Effects | Эффекты повреждений | Эффекты повреждения
UT2K4Tab_IForceSettings.InputIFGUIEffects.Caption | Vehicle Effects | Эффекты транспорта | Эффекты машины
UT2K4Tab_IForceSettingsWS.ComboInputMouseSmoothing.Caption | Mouse Smoothing | Сглаживание мыши | Сглаживание мыши
UT2K4Tab_IForceSettingsWS.InputMouseEPP.Caption | Direct Enhanced Pointer Precision | Прямая точность мыши | -

---

## Weapon settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_WeaponPref.WeaponBK.Caption | Weapon | Оружие | -
UT2K4Tab_WeaponPref.WeaponOptionBK.Caption | Crosshairs | Прицелы | -
UT2K4Tab_WeaponPref.WeaponPriorityBK.Caption | Weapon Priorities | Приоритет оружия | Приоритет оружия
UT2K4Tab_WeaponPref.GameCrossHair.Caption | Crosshair | Прицел | Прицел
UT2K4Tab_WeaponPref.CustomWeaponCrosshair.Caption | Custom Weapon Crosshairs | Пользовательские прицелы | -
UT2K4Tab_WeaponPref.GameHudCrossHairA.Caption | Opacity: | Непрозрачность: | Прозрачность:
UT2K4Tab_WeaponPref.GameHudCrossHairR.Caption | Red: | Красный: | Красный:
UT2K4Tab_WeaponPref.GameHudCrossHairG.Caption | Green: | Зелёный: | Зеленый:
UT2K4Tab_WeaponPref.GameHudCrossHairB.Caption | Blue: | Синий: | Синий:
UT2K4Tab_WeaponPref.GameHudCrosshairScale.Caption | Scale: | Размер: | -
UT2K4Tab_WeaponPref.WeaponMesh.Caption | Classic Model | Классическая модель | -
UT2K4Tab_WeaponPref.WeaponSwap.Caption | Swap Fire Mode | Инвертировать режим стрельбы | Режим огня

---

## HUD settings

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
UT2K4Tab_HudSettings.GameBK.Caption | Options | Опции | -
UT2K4Tab_HudSettings.GameBK1.Caption | Visuals | Оформление | -
UT2K4Tab_HudSettings.CustomHUDButton.Caption | Configure | Настройка | -
UT2K4Tab_HudSettings.CustomHUDColor.Caption | Custom HUD Color | Пользовательский цвет интерфейса (HUD) | -
UT2K4Tab_HudSettings.GameHudOpacity.Caption | HUD Opacity | Непрозрачность интерфейса (HUD) | Затененность МФД
UT2K4Tab_HudSettings.GameHudScale.Caption | HUD Scaling | Размер пользовательского интерфейса (HUD) | Масштаб МФД
UT2K4Tab_HudSettings.GameHudVisible.Caption | Hide HUD | Скрыть интерфейс (HUD) | Спрятать МФД
UT2K4Tab_HudSettings.GameHudShowPersonalInfo.Caption | Show Personal Info | Отображение статистики состояния | Отображение персональной информации
UT2K4Tab_HudSettings.GameHudShowScore.Caption | Show Score | Показывать счёт | Показать очки
UT2K4Tab_HudSettings.GameHudShowWeaponBar.Caption | Weapon Bar | Панель оружия | Показать полосу оружия
UT2K4Tab_HudSettings.GameHudShowWeaponInfo.Caption | Show Weapon Info | Показывать боезапас | Отобразить боеприпасы
UT2K4Tab_HudSettings.GameHudShowEnemyNames.Caption | Show Enemy Names | Отображать имена противников | Отображение имен неприятеля
UT2K4Tab_HudSettings.GameHudShowPortraits.Caption | Show Portraits | Отображение портретов | Отображение портретов
UT2K4Tab_HudSettings.GameHUDShowVCPortraits.Caption | Show VoIP Portraits | Отображать портрет говорящего | -
UT2K4Tab_HudSettings.GameHudMessageCount.Caption | Max. Chat Count | Максимальное число символов в чате | Число строк чата
UT2K4Tab_HudSettings.GameHudMessageOffset.Caption | Message Font Offset | Масштаб текста уведомлений | Размер шрифта сообщений
UT2K4Tab_HudSettings.GameHudMessageScale.Caption | Chat Font Size | Размер шрифта текстового чата | Размер шрифта чата
UT2K4Tab_HudSettings.GameDeathMsgs.Caption | No Console Death Messages | Скрыть лог смертей в консоли | Без консольных сообщений
UT2K4Tab_HudSettings.HudColorR.Caption | Red: | Красный | -
UT2K4Tab_HudSettings.HudColorG.Caption | Green: | Зелёный: | -
UT2K4Tab_HudSettings.HudColorB.Caption | Blue: | Синий: | -

---

## Voting / server options (XVoting.int, Engine.int)

Source: `XVoting.int` (`[xVotingHandler]`), `Engine.int` (`[Info]`). Current Russian: `/rut/XVoting.rut`, `/rut/Engine.rut`. Old Russian: `/rut_old/XVoting.rut`, `/rut_old/Engine.rut`.

### Server preference group names (Engine)

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
Info.MapVoteGroup | Map Voting | Голосование за карту | Голосование по картам
Info.KickVoteGroup | Kick Voting | Исключить голосованием | Голосование по игрокам

### Map / kick voting options (xVotingHandler PropsDisplayText / PropDescription)

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
xVotingHandler.PropsDisplayText[0] | Enable Map Voting | - | Разрешить голосование за карты
xVotingHandler.PropsDisplayText[1] | Auto Open GUI | - | Автооткрытие графического интерфейса
xVotingHandler.PropsDisplayText[2] | ScoreBoard Delay | - | Задержка таблицы очков
xVotingHandler.PropsDisplayText[3] | Score Mode | - | Режим очков
xVotingHandler.PropsDisplayText[4] | Accumulation Mode | - | Режим накопления
xVotingHandler.PropsDisplayText[5] | Elimination Mode | - | Режим отсеивания
xVotingHandler.PropsDisplayText[6] | Minimum Maps | - | Минимум карт
xVotingHandler.PropsDisplayText[7] | Repeat Limit | - | Ограничение повтора
xVotingHandler.PropsDisplayText[8] | Voting Time Limit | - | Ограничение времени
xVotingHandler.PropsDisplayText[9] | Mid-Game Vote Percent | - | Процент голосов
xVotingHandler.PropsDisplayText[10] | Default Current GameType | - | Текущий режим игры по умолчанию
xVotingHandler.PropsDisplayText[11] | Enable Kick Voting | - | Разрешить голосование за вылет
xVotingHandler.PropsDisplayText[12] | Kick Vote Percent | - | Процент голосов за вылет
xVotingHandler.PropsDisplayText[13] | Anonymous Kick Voting | - | Анонимное голосование за вылет
xVotingHandler.PropsDisplayText[14] | Allow Match Setup | - | Разрешить настройки матча
xVotingHandler.PropsDisplayText[15] | Game Configuration | - | Конфигурация игры
xVotingHandler.PropsDisplayText[16] | Map List Configuration | - | Конфигурация списка карт

### Map / kick voting option descriptions (PropDescription)

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
xVotingHandler.PropDescription[0] | If enabled players can vote for maps. | - | Если включено, игроки могут голосовать за карты.
xVotingHandler.PropDescription[1] | If enabled the Map voting interface will automatically open at the end of each game. | - | Если включено, интерфейс голосования за карты будет автоматически открываться в конце каждой игры.
xVotingHandler.PropDescription[2] | Sets the number of seconds to delay after the end of each game before opening the voting interface. | - | Задает количество секунд задержки после конца каждой игры до открытия интерфейса голосования.
xVotingHandler.PropDescription[3] | If enabled, each player gets his or her score worth of votes. | - | Если включено, голоса игроков взвешиваются пропорционально их очкам.
xVotingHandler.PropDescription[4] | If enabled, each player will accumulate votes each game until they win. | - | Если включено, игроки будут накапливать свои голоса каждую игру, пока они не выиграют.
xVotingHandler.PropDescription[5] | If enabled, available maps are disabled as they are played until there are X maps left. | - | Если включено, доступные карты деактивируются после игры на них, пока не останется X карт.
xVotingHandler.PropDescription[6] | The number of enabled maps that remain in the map list (in Elimination mode) before the map list is reset. | - | Количество разрешенных карт, которые остаются в списке карт (в режиме отсеивания), прежде чем список карт будет сброшен.
xVotingHandler.PropDescription[7] | Number of previously played maps that should not be votable. | - | Количество отыгранных карт, которые не должны быть доступны для голосования.
xVotingHandler.PropDescription[8] | Limits how much time (in seconds) to allow for voting. | - | Ограничивает время, отведенное на голосование, сек.
xVotingHandler.PropDescription[9] | Percentage of players that must vote to trigger a Mid-Game vote. | - | Процент игроков, которые должны проголосовать чтобы включить голосование в процессе игры.
xVotingHandler.PropDescription[10] | If enabled, and there are no players on the server then the server will stay on the current game type. | - | Если включено и на сервере нет игроков, сервер оставит текущий тип игры.
xVotingHandler.PropDescription[11] | If enable players can vote to kick other players. | - | Если включено, игроки могут голосовать за изгнание других игроков.
xVotingHandler.PropDescription[12] | The percentage of players that must vote against an individual player to have them kicked from the server. | - | Процент игроков, которые должны проголосовать против отдельного игрока, чтобы тот вылетел с сервера.
xVotingHandler.PropDescription[13] | If enabled players can place Kick votes without anyone knowing who placed the vote. | - | Если включено, игроки могут подавать голоса за вылет, оставаясь неизвестными.
xVotingHandler.PropDescription[14] | Enables match setup on the server - valid admin username & password is required in order to use this feature | - | Разрешает доступ к настройкам матча на сервере - требуется правильное имя и пароль администратора, чтобы использовать эту функцию
xVotingHandler.PropDescription[15] | Opens the map voting game configuration screen | - | Открывает экран конфигурации голосования за карты
xVotingHandler.PropDescription[16] | Opens the map voting list configuration screen | - | Открывает экран конфигурации списка голосования за карты

### Voting list and footer labels (XVoting)

Technical name | English name | Current Russian | Old Russian
---------------|--------------|-----------------|------------
KickVoteMultiColumnList.ColumnHeadings | Player Name, Team, ID, Votes | - | Имя игрока, Команда, ID, Голоса
KickVoteMultiColumnListBox.RCMenu.ContextItems | Vote to Kick this Player, View Player Details, [Admin] Kick from Server, [Admin] Ban from Server | - | Голосовать за выброс, Просмотр деталей, [Admin] Выброс с сервера, [Admin] Запретить доступ
MapVoteCountMultiColumnList.ColumnHeadings | GameType, MapName, Votes | - | Тип игры, Название карты, Число голосов
MapVoteCountMultiColumnListBox.RCMenu.ContextItems | Vote for this Map, View Screenshot and Description | - | Проголосовать за карту, Скриншот и описание
MapVoteMultiColumnList.ColumnHeadings | Map Name, Played, Seq | - | Имя карты, Сыграна, После
MapVoteMultiColumnListBox.RCMenu.ContextItems | Vote for this Map, View Screenshot and Description | - | Голосовать за карту, Просмотр описания
MapVoteFooter.AcceptButton.Caption | Accept | - | Ввод
MapVoteFooter.CloseButton.Caption | Close | - | Закрыть
MapVoteFooter.ChatEditbox.Caption | Say | - | Сказать
MapVoteFooter.MapvoteFooterBackground.Caption | Chat | - | Чат
MapVoteFooter.SubmitButton.Caption | Submit | - | ОТОСЛАТЬ
KickVotingPage.KickButton.Caption | Kick | - | Удалить
KickVotingPage.InfoButton.Caption | Info | - | Информация
MapVotingPage.GameTypeCombo.Caption | Filter Game Type: | - | Фильтр типа игры:

