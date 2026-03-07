# UI Settings glossary

## Entity Glossary Rules (UI_Settings)

- **Sources:** `GUI2K4.int` (sections `UT2K4Tab_DetailSettings`, `UT2K4Tab_AudioSettings`, `UT2K4Tab_PlayerSettings`, `UT2K4Tab_GameSettings`, `UT2K4Tab_IForceSettings`, `UT2K4Tab_WeaponPref`, `UT2K4Tab_HudSettings`, and related Settings classes).
- **Scope:** Individual settings controls and values (e.g. Brightness, Dynamic Lighting, Auto-Taunt). Menu/tab names → `UI_Menus`.
- **Structure:** Sections mirror in-game tabs: Display, Audio, Player, Game, Input, Weapon, HUD.
- **Exclusions:** Main menu buttons → `UI_StartMenuButtons`. Dialogs/popups → dialog/popup entities.
- **Table:** 5 columns. Technical name usually `Section.Key` (e.g. `UT2K4Tab_DetailSettings.BrightnessSlider.Caption`).

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

---

## Display settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_DetailSettings.BrightnessSlider.Caption | GUI2K4.rut | Brightness | Яркость | Яркость
UT2K4Tab_DetailSettings.ContrastSlider.Caption | GUI2K4.rut | Contrast | Контраст | Контрастность
UT2K4Tab_DetailSettings.GammaSlider.Caption | GUI2K4.rut | Gamma | Гамма | Гамма
UT2K4Tab_DetailSettings.VideoResolution.Caption | GUI2K4.rut | Resolution | Разрешение экрана | Разрешение
UT2K4Tab_DetailSettings.VideoFullScreen.Caption | GUI2K4.rut | Full Screen | Полноэкранный режим | Полный экран
UT2K4Tab_DetailSettings.VideoColorDepth.Caption | GUI2K4.rut | Color Depth | Глубина цвета | Глубина цвета
UT2K4Tab_DetailSettings.RenderDeviceCombo.Caption | GUI2K4.rut | Render Device | Метод отрисовки | -
UT2K4Tab_DetailSettings.sbSection1.Caption | GUI2K4.rut | Resolution | Разрешение экрана | -
UT2K4Tab_DetailSettings.sbSection2.Caption | GUI2K4.rut | Options | Опции | -
UT2K4Tab_DetailSettings.sbSection3.Caption | GUI2K4.rut | Gamma Test | Тестирование гаммы | -
UT2K4Tab_DetailSettings.DetailCharacterDetail.Caption | GUI2K4.rut | Character Detail | Детализация персонажей | Детализация
UT2K4Tab_DetailSettings.DetailCharacterShadows.Caption | GUI2K4.rut | Character Shadows | Тени персонажей | Тени
UT2K4Tab_DetailSettings.DetailWorldDetail.Caption | GUI2K4.rut | World Detail | Детализация мира | Детализация текстур
UT2K4Tab_DetailSettings.DetailTextureDetail.Caption | GUI2K4.rut | Texture Detail | Детализация текстур | Текстуры
UT2K4Tab_DetailSettings.DetailDecals.Caption | GUI2K4.rut | Decals | Декали | Следы
UT2K4Tab_DetailSettings.DetailDecalStay.Caption | GUI2K4.rut | Decal Stay | Время существования декалей | Длительность следов
UT2K4Tab_DetailSettings.DetailDecoLayers.Caption | GUI2K4.rut | Foliage | Растительность | Листва
UT2K4Tab_DetailSettings.DetailDetailTextures.Caption | GUI2K4.rut | Detail Textures | Текстуры высокого качества | Текстуры
UT2K4Tab_DetailSettings.DetailDynamicLighting.Caption | GUI2K4.rut | Dynamic Lighting | Динамическое освещение | Динамическое освещение
UT2K4Tab_DetailSettings.DetailPhysics.Caption | GUI2K4.rut | Physics Detail | Детализация физики | Детализация физики
UT2K4Tab_DetailSettings.DetailProjectors.Caption | GUI2K4.rut | Projectors | Проекции | Проекторы
UT2K4Tab_DetailSettings.DetailCoronas.Caption | GUI2K4.rut | Coronas | Ореолы | Ореолы
UT2K4Tab_DetailSettings.DetailTrilinear.Caption | GUI2K4.rut | Trilinear Filtering | Трилинейная фильтрация | Трилинейная фильтрация
UT2K4Tab_DetailSettings.DistanceLODSlider.Caption | GUI2K4.rut | Fog Distance | Дистанция тумана | -
UT2K4Tab_DetailSettings.MeshLOD.Caption | GUI2K4.rut | Dynamic Mesh LOD | Динамический уровень детализации моделей (LOD) | -
UT2K4Tab_DetailSettings.WeatherEffects.Caption | GUI2K4.rut | Weather Effects | Погодные эффекты | -
UT2K4Tab_DetailSettingsWS.moMaxMenuFrameRate.Caption | GUI2K4.rut | Menu FPS Limit | Ограничение частоты кадров (FPS) в меню | -
UT2K4Tab_DetailSettingsWS.moMaxOfflineFrameRate.Caption | GUI2K4.rut | Offline FPS Limit | Ограничение частоты кадров (FPS) для одиночной игры | -
UT2K4Tab_DetailSettingsWS.moMaxOnlineFrameRate.Caption | GUI2K4.rut | Online FPS Limit | Ограничение частоты кадров (FPS) для сетевой игры | -
UT2K4Tab_DetailSettings.BitDepthText[0..1] | GUI2K4.rut | 16-bit / 32-bit | 16-бит / 32-бит | 16-битный цвет / 32-битный цвет
UT2K4Tab_DetailSettings.DetailLevels[0..8] | GUI2K4.rut | Lowest / Very Low / Lower / Low / Normal / High / Higher / Very High / Highest | Самый низкий / Очень низкий / Ниже / Низкий / Нормальный / Высокий / Выше / Очень высокий / Наивысший | Минимальная / Очень низкая / Низкая / Нормальная / Высокая / Очень высокая / Максимальная
UT2K4Tab_DetailSettings.ShadowOptions[0..2] | GUI2K4.rut | None / Blob / Full | Без теней / Овал / Полные тени | -
UT2K4Tab_DetailSettings.RenderModeText[0..1] | GUI2K4.rut | Direct 3D / Software | Direct 3D / Программный | -

---

## Audio settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_AudioSettings.AudioBK1.Caption | GUI2K4.rut | Sound Effects | Звуковые эффекты | -
UT2K4Tab_AudioSettings.AudioBK2.Caption | GUI2K4.rut | Announcer | Диктор | -
UT2K4Tab_AudioSettings.AudioBK3.Caption | GUI2K4.rut | Text To Speech | Текст в речь (TTS) | -
UT2K4Tab_AudioSettings.AudioEffectsVolumeSlider.Caption | GUI2K4.rut | Effects Volume | Громкость эффектов | Объем эффектов
UT2K4Tab_AudioSettings.AudioMusicVolume.Caption | GUI2K4.rut | Music Volume | Громкость музыки | Громкость музыки
UT2K4Tab_AudioSettings.AudioLowDetail.Caption | GUI2K4.rut | Low Sound Detail | Снизить качество звука | Низкая детализация звуков
UT2K4Tab_AudioSettings.AudioAnnouncerVolume.Caption | GUI2K4.rut | Volume | Громкость | Громкость диктора
UT2K4Tab_AudioSettings.AudioAnnounce.Caption | GUI2K4.rut | Announcements | Оповещения | Сообщения
UT2K4Tab_AudioSettings.AudioPlayVoices.Caption | GUI2K4.rut | Play Voices | Голоса | Речевые сообщения.
UT2K4Tab_AudioSettings.AudioAutoTaunt.Caption | GUI2K4.rut | Auto-Taunt | Автонасмешки | Автонасмешки
UT2K4Tab_AudioSettings.AudioRewardAnnouncer.Caption | GUI2K4.rut | Reward Announcer | Диктор серий убийсв | -
UT2K4Tab_AudioSettings.AudioStatusAnnouncer.Caption | GUI2K4.rut | Status Announcer | Диктор информации | -
UT2K4Tab_AudioSettings.AudioEnableTTS.Caption | GUI2K4.rut | Enable In Game | Разрешить | -
UT2K4Tab_AudioSettings.IRCTextToSpeech.Caption | GUI2K4.rut | Enable on IRC | Разрешить TTS в IRC | -
UT2K4Tab_AudioSettings.OnlyTeamTTSCheck.Caption | GUI2K4.rut | Team Messages Only | Сообщения только для команды | -
UT2K4Tab_AudioSettings.AudioMode.Caption | GUI2K4.rut | Audio Mode | Режим звука | Режим звука
UT2K4Tab_AudioSettings.AudioDefaultDriver.Caption | GUI2K4.rut | System Driver | Драйвер системы | -
UT2K4Tab_AudioSettings.AudioReverseStereo.Caption | GUI2K4.rut | Reverse Stereo | Инвертировать стерео | Обратить стерео
UT2K4Tab_AudioSettings.AudioMatureTaunts.Caption | GUI2K4.rut | Mature Taunts | Взрослые насмешки | Злые насмешки
UT2K4Tab_AudioSettings.AudioMessageBeep.Caption | GUI2K4.rut | Message Beep | Звуковое оповещение сообщений | Гудок сообщения
UT2K4Tab_AudioSettings.EnableVoiceChat.Caption | GUI2K4.rut | Voice Chat | Голосовой чат | -
UT2K4Tab_AudioSettings.VoiceOptions.Caption | GUI2K4.rut | Voice Options | Изменение голоса | -
UT2K4Tab_AudioSettings.AudioModes[0..3] | GUI2K4.rut | Safe Mode / 3D Audio / H/W 3D Audio / H/W 3D + EAX | Безопасный режим / 3D Аудио / H/W 3D Аудио / H/W 3D + EAX | Программный 3D-звук / Аппаратный 3D-звук / Аппаратный 3D-звук + EAX / Безопасный Режим
UT2K4Tab_AudioSettings.VoiceModes[0..3] | GUI2K4.rut | All / No auto-taunts / No taunts / None | Все / Отключить автонасмешки / Без насмешек / Ничего | Все / Без автонасмешек / Без насмешек / Ничего
UT2K4Tab_AudioSettings.AnnounceModes[0..2] | GUI2K4.rut | None / Minimal / All | Ничего / Минимально / Все | Отключены / Основные сообщения / Все сообщения

---

## Player settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_PlayerSettings.PlayerBK1.Caption | GUI2K4.rut | 3D View | Просмотр в 3D | -
UT2K4Tab_PlayerSettings.PlayerBK2.Caption | GUI2K4.rut | Misc. | Прочее | -
UT2K4Tab_PlayerSettings.PlayerBK3.Caption | GUI2K4.rut | Biography | Биография | -
UT2K4Tab_PlayerSettings.PlayerName.Caption | GUI2K4.rut | Name | Имя игрока | Имя
UT2K4Tab_PlayerSettings.PlayerTeam.Caption | GUI2K4.rut | Preferred Team | Предпочитаемая команда | Желаемая команда
UT2K4Tab_PlayerSettings.PlayerHand.Caption | GUI2K4.rut | Weapon Hand | Отображение оружия | Отображение оружия
UT2K4Tab_PlayerSettings.PlayerFOV.Caption | GUI2K4.rut | Default FOV | Угол обзора (FOV) по умолчанию | Угол обзора
UT2K4Tab_PlayerSettings.Player3DView.Caption | GUI2K4.rut | 3D View | Просмотр в 3D | 3-хмерный вид
UT2K4Tab_PlayerSettings.PlayerSmallWeap.Caption | GUI2K4.rut | Small Weapons | Компактное оружие | Маленькое оружие
UT2K4Tab_PlayerSettings.VoiceType.Caption | GUI2K4.rut | Voice Type | Голос персонажа | -
UT2K4Tab_PlayerSettings.bPickModel.Caption | GUI2K4.rut | Change Character | Смена персонажа | -
UT2K4Tab_PlayerSettings.HandNames[0..3] | GUI2K4.rut | Left / Center / Right / Hidden | Справа / По центру / Слева / Скрыто | Справа / Скрыт / Слева / По центру
UT2K4Tab_PlayerSettings.TeamNames[0..2] | GUI2K4.rut | Red / Blue / None | Красный / Синий / Не выбрано | Красная / Синяя / -

---

## Game settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_GameSettings.GameBK1.Caption | GUI2K4.rut | Gameplay | Игровой процесс | -
UT2K4Tab_GameSettings.GameBK2.Caption | GUI2K4.rut | Network | Сеть | -
UT2K4Tab_GameSettings.GameBK3.Caption | GUI2K4.rut | Stats | Статистика | -
UT2K4Tab_GameSettings.GameBK4.Caption | GUI2K4.rut | Misc | Прочее | -
UT2K4Tab_GameSettings.GameBK5.Caption | GUI2K4.rut | Unique ID / Messages | Уникальный ID / Сообщения | -
UT2K4Tab_GameSettings.GameAutoAim.Caption | GUI2K4.rut | Auto Aim | Помощь в прицеливании | Автоприцеливание
UT2K4Tab_GameSettings.GameDodging.Caption | GUI2K4.rut | Dodging | Уклонение | Уклонение
UT2K4Tab_GameSettings.GameGoreLevel.Caption | GUI2K4.rut | Gore Level | Уровень жестокости | Уменьшить уровень крови
UT2K4Tab_GameSettings.GameWeaponBob.Caption | GUI2K4.rut | Weapon Bob | Покачивание оружия | Балансировка оружия
UT2K4Tab_GameSettings.GameClassicTrans.Caption | GUI2K4.rut | High Beacon Trajectory | Траектория транслокатора (высокая) | -
UT2K4Tab_GameSettings.LandShaking.Caption | GUI2K4.rut | Landing Viewshake | Тряска камеры при приземлении | -
UT2K4Tab_GameSettings.WeaponAutoSwitch.Caption | GUI2K4.rut | Weapon Switch On Pickup | Смена оружия при подборе | -
UT2K4Tab_GameSettings.OnlineNetSpeed.Caption | GUI2K4.rut | Connection | Скорость сети | Связь
UT2K4Tab_GameSettings.NetworkDynamicNetspeed.Caption | GUI2K4.rut | Dynamic Netspeed | Адаптивная пропускная способность | Переменная сетевая скорость
UT2K4Tab_GameSettings.OnlineStatsName.Caption | GUI2K4.rut | UserName | Имя пользователя | Имя пользователя
UT2K4Tab_GameSettings.OnlineStatsPW.Caption | GUI2K4.rut | Password | Пароль | Пароль
UT2K4Tab_GameSettings.OnlineTrackStats.Caption | GUI2K4.rut | Track Stats | Отслеживание статистики | Статистика
UT2K4Tab_GameSettings.ViewOnlineStats.Caption | GUI2K4.rut | View Stats | Просмотр статистики | Смотреть статистику
UT2K4Tab_GameSettings.EpicID.Caption | GUI2K4.rut | Your Unique id is: | Ваш уникальный ID: | Ваш уникальный id:
UT2K4Tab_GameSettings.PrecacheSkins.Caption | GUI2K4.rut | Preload all player skins | Предзагрузка скинов | -
UT2K4Tab_GameSettings.SpeechRecognition.Caption | GUI2K4.rut | Speech Recognition | Распознавание речи | -
UT2K4Tab_GameSettingsWS.GameBK0.Caption | GUI2K4.rut | Terms Of Service | Пользовательское соглашение | -
UT2K4Tab_GameSettingsWS.CopyGUID.Caption | GUI2K4.rut | Copy GUID | Копировать GUID | -
UT2K4Tab_GameSettingsWS.ViewTOS.Caption | GUI2K4.rut | View Terms Of Service | Посмотреть пользовательское соглашение | -
UT2K4Tab_GameSettings.NetSpeedText[0..3] | GUI2K4.rut | Modem / ISDN / Cable/ADSL / LAN/T1 | Модем / ISDN / Кабель/ADSL / LAN/T1 | Модем / ISDN / Cable/ADSL / LAN/T1

---

## Input settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_IForceSettings.InputBK1.Caption | GUI2K4.rut | Options | Опции | -
UT2K4Tab_IForceSettings.InputBK2.Caption | GUI2K4.rut | TouchSense Force Feedback | Виброотдача (TouchSense) | Обратная связь TouchSense
UT2K4Tab_IForceSettings.InputBK3.Caption | GUI2K4.rut | Fine Tuning | Тонкая настройка | -
UT2K4Tab_IForceSettings.ControlBindButton.Caption | GUI2K4.rut | Configure Controls | Настройки управления | -
UT2K4Tab_IForceSettings.SpeechBindButton.Caption | GUI2K4.rut | Speech Binder | Голосовые команды | -
UT2K4Tab_IForceSettings.InputMouseSensitivity.Caption | GUI2K4.rut | Mouse Sensitivity (Game) | Чувствительность мыши (Игра) | Чувствительность мыши (игра)
UT2K4Tab_IForceSettings.InputMenuSensitivity.Caption | GUI2K4.rut | Mouse Sensitivity (Menus) | Чувствительность мыши (Меню) | Чувствительность мыши (меню)
UT2K4Tab_IForceSettings.InputInvertMouse.Caption | GUI2K4.rut | Invert Mouse | Инверсия мышь | Инвертировать мышь
UT2K4Tab_IForceSettings.InputAutoSlope.Caption | GUI2K4.rut | Auto Slope | Автонаклон | Автонаклон
UT2K4Tab_IForceSettings.InputDodgeTime.Caption | GUI2K4.rut | Dodge Double-Click Time | Задержка двойного нажатия для уклонения | Время двойного щелчка
UT2K4Tab_IForceSettings.InputMouseSmoothing.Caption | GUI2K4.rut | Mouse Smoothing | Сглаживание мыши | Сглаживание мыши
UT2K4Tab_IForceSettings.InputMouseSmoothStr.Caption | GUI2K4.rut | Mouse Smoothing Strength | Интенсивность сглаживания мыши | Сглаживание
UT2K4Tab_IForceSettings.InputMouseAccel.Caption | GUI2K4.rut | Mouse Accel. Threshold | Порог ускорения мыши | Порог ускорения мыши
UT2K4Tab_IForceSettings.InputMouseLag.Caption | GUI2K4.rut | Reduce Mouse Lag | Снижение задержки ввода мыши | Уменьшить сглаживание мыши
UT2K4Tab_IForceSettings.InputUseJoystick.Caption | GUI2K4.rut | Enable Joystick | Включить геймпад | Джойстик
UT2K4Tab_IForceSettings.InputIFWeaponEffects.Caption | GUI2K4.rut | Weapon Effects | Эффекты оружия | Эффекты оружия
UT2K4Tab_IForceSettings.InputIFPickupEffects.Caption | GUI2K4.rut | Pickup Effects | Эффекты подбора | Эффекты боеприпасов
UT2K4Tab_IForceSettings.InputIFDamageEffects.Caption | GUI2K4.rut | Damage Effects | Эффекты повреждений | Эффекты повреждения
UT2K4Tab_IForceSettings.InputIFGUIEffects.Caption | GUI2K4.rut | Vehicle Effects | Эффекты транспорта | Эффекты машины
UT2K4Tab_IForceSettingsWS.ComboInputMouseSmoothing.Caption | GUI2K4.rut | Mouse Smoothing | Сглаживание мыши | Сглаживание мыши
UT2K4Tab_IForceSettingsWS.InputMouseEPP.Caption | GUI2K4.rut | Direct Enhanced Pointer Precision | Прямая точность мыши | -

---

## Weapon settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_WeaponPref.WeaponBK.Caption | GUI2K4.rut | Weapon | Оружие | -
UT2K4Tab_WeaponPref.WeaponOptionBK.Caption | GUI2K4.rut | Crosshairs | Прицелы | -
UT2K4Tab_WeaponPref.WeaponPriorityBK.Caption | GUI2K4.rut | Weapon Priorities | Приоритет оружия | Приоритет оружия
UT2K4Tab_WeaponPref.GameCrossHair.Caption | GUI2K4.rut | Crosshair | Прицел | Прицел
UT2K4Tab_WeaponPref.CustomWeaponCrosshair.Caption | GUI2K4.rut | Custom Weapon Crosshairs | Пользовательские прицелы | -
UT2K4Tab_WeaponPref.GameHudCrossHairA.Caption | GUI2K4.rut | Opacity: | Непрозрачность: | Прозрачность:
UT2K4Tab_WeaponPref.GameHudCrossHairR.Caption | GUI2K4.rut | Red: | Красный: | Красный:
UT2K4Tab_WeaponPref.GameHudCrossHairG.Caption | GUI2K4.rut | Green: | Зелёный: | Зеленый:
UT2K4Tab_WeaponPref.GameHudCrossHairB.Caption | GUI2K4.rut | Blue: | Синий: | Синий:
UT2K4Tab_WeaponPref.GameHudCrosshairScale.Caption | GUI2K4.rut | Scale: | Размер: | -
UT2K4Tab_WeaponPref.WeaponMesh.Caption | GUI2K4.rut | Classic Model | Классическая модель | -
UT2K4Tab_WeaponPref.WeaponSwap.Caption | GUI2K4.rut | Swap Fire Mode | Инвертировать режим стрельбы | Режим огня

---

## HUD settings

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
UT2K4Tab_HudSettings.GameBK.Caption | GUI2K4.rut | Options | Опции | -
UT2K4Tab_HudSettings.GameBK1.Caption | GUI2K4.rut | Visuals | Оформление | -
UT2K4Tab_HudSettings.CustomHUDButton.Caption | GUI2K4.rut | Configure | Настройка | -
UT2K4Tab_HudSettings.CustomHUDColor.Caption | GUI2K4.rut | Custom HUD Color | Пользовательский цвет интерфейса (HUD) | -
UT2K4Tab_HudSettings.GameHudOpacity.Caption | GUI2K4.rut | HUD Opacity | Непрозрачность интерфейса (HUD) | Затененность МФД
UT2K4Tab_HudSettings.GameHudScale.Caption | GUI2K4.rut | HUD Scaling | Размер пользовательского интерфейса (HUD) | Масштаб МФД
UT2K4Tab_HudSettings.GameHudVisible.Caption | GUI2K4.rut | Hide HUD | Скрыть интерфейс (HUD) | Спрятать МФД
UT2K4Tab_HudSettings.GameHudShowPersonalInfo.Caption | GUI2K4.rut | Show Personal Info | Отображение статистики состояния | Отображение персональной информации
UT2K4Tab_HudSettings.GameHudShowScore.Caption | GUI2K4.rut | Show Score | Показывать счёт | Показать очки
UT2K4Tab_HudSettings.GameHudShowWeaponBar.Caption | GUI2K4.rut | Weapon Bar | Панель оружия | Показать полосу оружия
UT2K4Tab_HudSettings.GameHudShowWeaponInfo.Caption | GUI2K4.rut | Show Weapon Info | Показывать боезапас | Отобразить боеприпасы
UT2K4Tab_HudSettings.GameHudShowEnemyNames.Caption | GUI2K4.rut | Show Enemy Names | Отображать имена противников | Отображение имен неприятеля
UT2K4Tab_HudSettings.GameHudShowPortraits.Caption | GUI2K4.rut | Show Portraits | Отображение портретов | Отображение портретов
UT2K4Tab_HudSettings.GameHUDShowVCPortraits.Caption | GUI2K4.rut | Show VoIP Portraits | Отображать портрет говорящего | -
UT2K4Tab_HudSettings.GameHudMessageCount.Caption | GUI2K4.rut | Max. Chat Count | Максимальное число символов в чате | Число строк чата
UT2K4Tab_HudSettings.GameHudMessageOffset.Caption | GUI2K4.rut | Message Font Offset | Масштаб текста уведомлений | Размер шрифта сообщений
UT2K4Tab_HudSettings.GameHudMessageScale.Caption | GUI2K4.rut | Chat Font Size | Размер шрифта текстового чата | Размер шрифта чата
UT2K4Tab_HudSettings.GameDeathMsgs.Caption | GUI2K4.rut | No Console Death Messages | Скрыть лог смертей в консоли | Без консольных сообщений
UT2K4Tab_HudSettings.HudColorR.Caption | GUI2K4.rut | Red: | Красный | -
UT2K4Tab_HudSettings.HudColorG.Caption | GUI2K4.rut | Green: | Зелёный: | -
UT2K4Tab_HudSettings.HudColorB.Caption | GUI2K4.rut | Blue: | Синий: | -

---

## Voting / server options (XVoting.int, Engine.int)

### Server preference group names (Engine)

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
Info.MapVoteGroup | Map Voting | Голосование за карту | Голосование по картам
Info.KickVoteGroup | Kick Voting | Исключить голосованием | Голосование по игрокам

### Map / kick voting options (xVotingHandler PropsDisplayText / PropDescription)

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
xVotingHandler.PropsDisplayText[0] | XVoting.rut | Enable Map Voting | - | Разрешить голосование за карты
xVotingHandler.PropsDisplayText[1] | XVoting.rut | Auto Open GUI | - | Автооткрытие графического интерфейса
xVotingHandler.PropsDisplayText[2] | XVoting.rut | ScoreBoard Delay | - | Задержка таблицы очков
xVotingHandler.PropsDisplayText[3] | XVoting.rut | Score Mode | - | Режим очков
xVotingHandler.PropsDisplayText[4] | XVoting.rut | Accumulation Mode | - | Режим накопления
xVotingHandler.PropsDisplayText[5] | XVoting.rut | Elimination Mode | - | Режим отсеивания
xVotingHandler.PropsDisplayText[6] | XVoting.rut | Minimum Maps | - | Минимум карт
xVotingHandler.PropsDisplayText[7] | XVoting.rut | Repeat Limit | - | Ограничение повтора
xVotingHandler.PropsDisplayText[8] | XVoting.rut | Voting Time Limit | - | Ограничение времени
xVotingHandler.PropsDisplayText[9] | XVoting.rut | Mid-Game Vote Percent | - | Процент голосов
xVotingHandler.PropsDisplayText[10] | XVoting.rut | Default Current GameType | - | Текущий режим игры по умолчанию
xVotingHandler.PropsDisplayText[11] | XVoting.rut | Enable Kick Voting | - | Разрешить голосование за вылет
xVotingHandler.PropsDisplayText[12] | XVoting.rut | Kick Vote Percent | - | Процент голосов за вылет
xVotingHandler.PropsDisplayText[13] | XVoting.rut | Anonymous Kick Voting | - | Анонимное голосование за вылет
xVotingHandler.PropsDisplayText[14] | XVoting.rut | Allow Match Setup | - | Разрешить настройки матча
xVotingHandler.PropsDisplayText[15] | XVoting.rut | Game Configuration | - | Конфигурация игры
xVotingHandler.PropsDisplayText[16] | XVoting.rut | Map List Configuration | - | Конфигурация списка карт

### Map / kick voting option descriptions (PropDescription)

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
xVotingHandler.PropDescription[0] | XVoting.rut | If enabled players can vote for maps. | - | Если включено, игроки могут голосовать за карты.
xVotingHandler.PropDescription[1] | XVoting.rut | If enabled the Map voting interface will automatically open at the end of each game. | - | Если включено, интерфейс голосования за карты будет автоматически открываться в конце каждой игры.
xVotingHandler.PropDescription[2] | XVoting.rut | Sets the number of seconds to delay after the end of each game before opening the voting interface. | - | Задает количество секунд задержки после конца каждой игры до открытия интерфейса голосования.
xVotingHandler.PropDescription[3] | XVoting.rut | If enabled, each player gets his or her score worth of votes. | - | Если включено, голоса игроков взвешиваются пропорционально их очкам.
xVotingHandler.PropDescription[4] | XVoting.rut | If enabled, each player will accumulate votes each game until they win. | - | Если включено, игроки будут накапливать свои голоса каждую игру, пока они не выиграют.
xVotingHandler.PropDescription[5] | XVoting.rut | If enabled, available maps are disabled as they are played until there are X maps left. | - | Если включено, доступные карты деактивируются после игры на них, пока не останется X карт.
xVotingHandler.PropDescription[6] | XVoting.rut | The number of enabled maps that remain in the map list (in Elimination mode) before the map list is reset. | - | Количество разрешенных карт, которые остаются в списке карт (в режиме отсеивания), прежде чем список карт будет сброшен.
xVotingHandler.PropDescription[7] | XVoting.rut | Number of previously played maps that should not be votable. | - | Количество отыгранных карт, которые не должны быть доступны для голосования.
xVotingHandler.PropDescription[8] | XVoting.rut | Limits how much time (in seconds) to allow for voting. | - | Ограничивает время, отведенное на голосование, сек.
xVotingHandler.PropDescription[9] | XVoting.rut | Percentage of players that must vote to trigger a Mid-Game vote. | - | Процент игроков, которые должны проголосовать чтобы включить голосование в процессе игры.
xVotingHandler.PropDescription[10] | XVoting.rut | If enabled, and there are no players on the server then the server will stay on the current game type. | - | Если включено и на сервере нет игроков, сервер оставит текущий тип игры.
xVotingHandler.PropDescription[11] | XVoting.rut | If enable players can vote to kick other players. | - | Если включено, игроки могут голосовать за изгнание других игроков.
xVotingHandler.PropDescription[12] | XVoting.rut | The percentage of players that must vote against an individual player to have them kicked from the server. | - | Процент игроков, которые должны проголосовать против отдельного игрока, чтобы тот вылетел с сервера.
xVotingHandler.PropDescription[13] | XVoting.rut | If enabled players can place Kick votes without anyone knowing who placed the vote. | - | Если включено, игроки могут подавать голоса за вылет, оставаясь неизвестными.
xVotingHandler.PropDescription[14] | XVoting.rut | Enables match setup on the server - valid admin username & password is required in order to use this feature | - | Разрешает доступ к настройкам матча на сервере - требуется правильное имя и пароль администратора, чтобы использовать эту функцию
xVotingHandler.PropDescription[15] | XVoting.rut | Opens the map voting game configuration screen | - | Открывает экран конфигурации голосования за карты
xVotingHandler.PropDescription[16] | XVoting.rut | Opens the map voting list configuration screen | - | Открывает экран конфигурации списка голосования за карты

### Voting list and footer labels (XVoting)

Technical name | .rut file   | English name | Current Russian | Old Russian
---------------|-------------|--------------|-----------------|------------
KickVoteMultiColumnList.ColumnHeadings | Player Name, Team, ID, Votes | - | Имя игрока, Команда, ID, Голоса
KickVoteMultiColumnListBox.RCMenu.ContextItems | Vote to Kick this Player, View Player Details, [Admin] Kick from Server, [Admin] Ban from Server | - | Голосовать за выброс, Просмотр деталей, [Admin] Выброс с сервера, [Admin] Запретить доступ
MapVoteCountMultiColumnList.ColumnHeadings | GameType, MapName, Votes | - | Тип игры, Название карты, Число голосов
MapVoteCountMultiColumnListBox.RCMenu.ContextItems | Vote for this Map, View Screenshot and Description | - | Проголосовать за карту, Скриншот и описание
MapVoteMultiColumnList.ColumnHeadings | Map Name, Played, Seq | - | Имя карты, Сыграна, После
MapVoteMultiColumnListBox.RCMenu.ContextItems | Vote for this Map, View Screenshot and Description | - | Голосовать за карту, Просмотр описания
MapVoteFooter.AcceptButton.Caption | GUI2K4.rut | Accept | - | Ввод
MapVoteFooter.CloseButton.Caption | GUI2K4.rut | Close | - | Закрыть
MapVoteFooter.ChatEditbox.Caption | GUI2K4.rut | Say | - | Сказать
MapVoteFooter.MapvoteFooterBackground.Caption | GUI2K4.rut | Chat | - | Чат
MapVoteFooter.SubmitButton.Caption | GUI2K4.rut | Submit | - | ОТОСЛАТЬ
KickVotingPage.KickButton.Caption | GUI2K4.rut | Kick | - | Удалить
KickVotingPage.InfoButton.Caption | GUI2K4.rut | Info | - | Информация
MapVotingPage.GameTypeCombo.Caption | GUI2K4.rut | Filter Game Type: | - | Фильтр типа игры:

