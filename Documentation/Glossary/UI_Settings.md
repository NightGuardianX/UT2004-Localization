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
  **Old Russian:** `Documentation/rut_old/*.rut` (matching sections), where available.
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

Old Russian: `Documentation/rut_old/*.rut`.

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

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_DetailSettings.BrightnessSlider.Caption| Brightness          | -               | -

---

## Audio settings

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_AudioSettings.AudioMusicVolume.Caption | Music Volume        | -               | -

---

## Player settings

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_PlayerSettings.PlayerName.Caption      | Name                | -               | -

---

## Game settings

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_GameSettings.GameGoreLevel.Caption     | Gore Level          | -               | -

---

## Input settings

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_IForceSettings.InputMouseSensitivity.Caption | Mouse Sensitivity (Game) | -        | -

---

## Weapon settings

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_WeaponPref.GameCrossHair.Caption       | Crosshair           | -               | -

---

## HUD settings

Technical name                                   | English name        | Current Russian | Old Russian
------------------------------------------------|---------------------|-----------------|--------------------------
UT2K4Tab_HudSettings.GameHudOpacity.Caption     | HUD Opacity         | -               | -

