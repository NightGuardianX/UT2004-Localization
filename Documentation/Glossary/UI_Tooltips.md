# UI Tooltips glossary

## Entity Glossary Rules (UI_Tooltips)

These rules apply only to the `UI_Tooltips` entity and override the general Glossary Rules where they differ.

- **Sources:** Tooltip text (usually `.Hint` properties) from:
  - `XInterface.int` (settings tabs such as `Tab_AudioSettings`, `Tab_DetailSettings`, `Tab_GameSettings`, `Tab_IForceSettings`, Instant Action tabs, admin pages, etc.),
  - `Setup.int` (if any tooltip‑style hints are present).
- **Current Russian:** `/rut/XInterface.rut`, `/rut/Setup.rut` (matching sections and keys).  
  At the current stage many tooltip entries in `/rut` are still Spanish; such values are **ignored** and the **Current Russian** column remains `-` until proper Russian text is added.
- **Old Russian:** `/rut_old/XInterface.rut`, `/rut_old/Setup.rut`.
- **Scope:** Short explanatory strings that appear as mouse‑over tooltips or help hints for controls (sliders, checkboxes, buttons) in menus and settings screens.
- **Exclusions:** The visible captions of controls and their option values belong to `UI_Settings`. Generic popup messages belong to `UI_Popups`, and HUD/in‑game messages belong to `UI_Notifications`.
- **Table format:** Standard 5‑column glossary tables: **Technical name | .rut file | English name | Current Russian | Old Russian**.  
  Technical names use `Section.Key` form with the `.Hint` suffix where applicable (e.g. `Tab_AudioSettings.AudioMessageBeep.Hint`).

---

Source: `XInterface.int`, `Setup.int`.

Current Russian: `/rut/XInterface.rut`, `/rut/Setup.rut`.

Old Russian: `/rut_old/XInterface.rut`, `/rut_old/Setup.rut`.

Format (Markdown table):

Technical name | .rut file     | English name | Current Russian | Old Russian
-------------- | ------------- | ------------ | --------------- | -----------

If no translation: `-`.

Notes:

- When filling or updating this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- If a value in `/rut` is clearly non‑Russian (e.g. Spanish), leave **Current Russian** as `-` and use `/rut_old` for **Old Russian**.

---

## Audio settings tooltips (`[Tab_AudioSettings]`)

| Technical name                                   | .rut file     | English name                                                             | Current Russian | Old Russian |
| ------------------------------------------------ | ------------- | ------------------------------------------------------------------------ | --------------- | ----------- |
| Tab_AudioSettings.AudioMessageBeep.Hint         | XInterface.rut | Enables a beep when receiving a text message from other players.        | -               | Включать сигнал при получении сообщения от других игроков. |
| Tab_AudioSettings.AudioMode.Hint                | XInterface.rut | Changes the audio system mode.                                           | -               | Изменяет режим работы звуковой системы. |
| Tab_AudioSettings.AudioMusicVolumeSlider.Hint   | XInterface.rut | Changes the volume of the background music.                              | -               | Изменяет громкость фоновой музыки. |
| Tab_AudioSettings.AudioReverseStereo.Hint       | XInterface.rut | Reverses the left and right audio channels.                              | -               | Меняет местами левый и правый звуковые каналы. |

---

## Display settings tooltips (`[Tab_DetailSettings]`)

| Technical name                                   | .rut file     | English name                                                             | Current Russian | Old Russian |
| ------------------------------------------------ | ------------- | ------------------------------------------------------------------------ | --------------- | ----------- |
| Tab_DetailSettings.DetailActorDetail.Hint       | XInterface.rut | Changes the level of detail used for optional geometry and effects.      | -               | Изменяет уровень детализации дополнительной геометрии и эффектов. |
| Tab_DetailSettings.DetailBlob.Hint              | XInterface.rut | Enable blob shadows.  Recommended for low-performance PCs.              | -               | Включает простые тени. Рекомендуется для маломощных ПК. |
| Tab_DetailSettings.DetailDecalStay.Hint         | XInterface.rut | Changes how long weapon scarring effects stay around.                    | -               | Определяет, как долго остаются следы от выстрелов. |
| Tab_DetailSettings.DetailDynamicLighting.Hint   | XInterface.rut | Enables dynamic lights.                                                  | -               | Включает динамическое освещение. |

---

## Game settings tooltips (`[Tab_GameSettings]`)

| Technical name                                   | .rut file     | English name                                                             | Current Russian | Old Russian |
| ------------------------------------------------ | ------------- | ------------------------------------------------------------------------ | --------------- | ----------- |
| Tab_GameSettings.GameAutoAim.Hint               | XInterface.rut | Turn this option on to have UT2004 help you aim (not available in Multiplayer). | -      | Оружие автоматически наводится на цель в одиночной игре (недоступно в сетевой игре). |
| Tab_GameSettings.GameDodging.Hint               | XInterface.rut | Turn this option off to disable special dodge moves.                     | -               | Отключение этой опции запрещает специальные уклонения. |
| Tab_GameSettings.GameReduceGore.Hint            | XInterface.rut | Turn this option On to reduce the amount of blood and guts you see.      | -               | При включении уменьшает количество крови и расчлененки. |
| Tab_GameSettings.GameScreenFlashes.Hint         | XInterface.rut | Turn this option off to disable screen flashes when you take damage.     | -               | При отключении экрана не будет вспыхивать при получении урона. |

---

## Input & force‑feedback tooltips (`[Tab_IForceSettings]`)

| Technical name                                   | .rut file     | English name                                                             | Current Russian | Old Russian |
| ------------------------------------------------ | ------------- | ------------------------------------------------------------------------ | --------------- | ----------- |
| Tab_IForceSettings.InputAutoAim.Hint            | XInterface.rut | Enabling this option will activate computer-assisted aiming in single player games. | -      | Включение этой опции активирует компьютерную помощь при прицеливании в одиночной игре. |
| Tab_IForceSettings.InputInvertMouse.Hint        | XInterface.rut | When enabled, the Y axis of your mouse will be inverted.                 | -               | При включении ось Y мыши инвертируется. |
| Tab_IForceSettings.InputMouseLag.Hint           | XInterface.rut | Enable this option will reduce the amount of lag in your mouse.         | -               | Включение этой опции уменьшит задержку отклика мыши. |
| Tab_IForceSettings.InputUseJoystick.Hint        | XInterface.rut | Enable this option to enable joystick support.                           | -               | Включает поддержку джойстика. |

Additional tooltip entries from `XInterface.int` and `Setup.int` should be added here following the same structure and rules.

