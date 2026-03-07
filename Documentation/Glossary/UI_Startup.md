# UI_Startup glossary

## Entity Glossary Rules (UI_Startup)

- **Sources:** Launcher / startup / safe-mode dialogs and related UI strings from `Startup.int` and other startup-related `.int` files (e.g. `UT2004.int` when used for launcher state labels). Current Russian: matching `.rut` files in `/rut/` (`Startup.rut`, `UT2004.rut`, etc.). Old Russian: matching `.rut` files in `/rut_old/`.
- **Structure / categories:** Sections are grouped by dialog or flow: general startup state, first-time configuration, safe-mode prompts, and safe-mode options. Within each section, rows are ordered by technical key as they appear in the source files.
- **Exclusions:** In-game menus, settings, dialogs, notifications, and loading messages belong to the corresponding `UI_*.md` entities and are not duplicated here. Low-level engine/driver error messages from `Engine.int`, `Core.int`, `D3DDrv.int`, `ALAudio.int`, `WinDrv.int`, etc. are not part of this entity and are localized directly without a dedicated glossary entity.
- **Table format:** Standard 5-column glossary format: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: `Startup.int` (and related startup-only `.int` files) in `/int/`.
Current Russian: `/rut/*.rut` (same basenames as the startup sources).
Old Russian: `/rut_old/*.rut` (same basenames as the startup sources).

Format (Markdown table, GitHub-style as in `Game_Pickups.md`):

| Technical name                  | .rut file   | English name                                              | Current Russian | Old Russian        |
| ------------------------------- | ----------- | --------------------------------------------------------- | --------------- | ------------------ |
| *(TechnicalKey or Section.Key)* | *(e.g. Startup.rut)* | (English label from the launcher / startup UI)           | -               | (Old Russian or -) |

If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Keep launcher-only strings here; if a string is used in normal in-game UI as well, document it in the relevant `UI_*.md` entity instead and cross-reference if needed.

---

## General startup state

| Technical name       | .rut file    | English name                              | Current Russian | Old Russian |
| -------------------- | ------------ | ----------------------------------------- | --------------- | ----------- |
| UT2004.Start         | UT2004.rut   | Unreal Tournament 2004 (Starting)         | -               | -           |
| UT2004.Exit          | UT2004.rut   | Unreal Tournament 2004 (Exiting)          | -               | -           |
| UT2004.Run           | UT2004.rut   | Unreal Tournament 2004 (Running)          | -               | -           |
| Startup.Run          | Startup.rut  | Run!                                      | -               | -           |
| Startup.FirstTime    | Startup.rut  | Unreal Tournament 2004 First-Time Configuration | -         | -           |
| Startup.SafeMode     | Startup.rut  | Unreal Tournament 2004 Safe Mode          | -               | -           |
| Startup.RecoveryMode | Startup.rut  | Unreal Tournament 2004 Recovery Mode      | -               | -           |

## First-time configuration

| Technical name                | .rut file    | English name                                              | Current Russian | Old Russian |
| ----------------------------- | ------------ | --------------------------------------------------------- | --------------- | ----------- |
| Startup.IDDIALOG_ConfigPageFirstTime.IDC_Prompt | Startup.rut | Unreal Tournament 2004 is starting up for the first time.  If you experience any problems, please read the release notes in the 'Programs / Unreal Tournament 2004' section of the Windows 'Start' menu. | - | - |

## Safe-mode prompts and options

| Technical name                | .rut file   | English name                                              | Current Russian | Old Russian |
| ----------------------------- | ----------- | --------------------------------------------------------- | --------------- | ----------- |
| Startup.IDDIALOG_ConfigPageSafeMode.IDC_SafeModePrompt  | Startup.rut | The previous time Unreal Tournament 2004 was run, it was not shut down properly.  In case the shut down was caused by a problem, you may use the options below for recovery. | - | - |
| Startup.IDDIALOG_ConfigPageSafeMode.IDC_SafeModePrompt2 | Startup.rut | Unreal Tournament 2004 safe mode options: If you are experiencing problems, you may use the options below for recovery. | - | - |
| Startup.IDDIALOG_ConfigPageSafeMode.IDC_Run             | Startup.rut | Run Unreal Tournament 2004                                 | - | - |
| Startup.IDDIALOG_ConfigPageSafeMode.IDC_SafeMode        | Startup.rut | Run Unreal Tournament 2004 in safe mode - for troubleshooting | - | - |
| Startup.IDDIALOG_ConfigPageSafeMode.IDC_Web             | Startup.rut | Visit our Web site for troubleshooting tips               | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_SafeOptions  | Startup.rut | Safe mode options, for diagnosing problems                | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_NoSound      | Startup.rut | Disable all sound                                         | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_Res          | Startup.rut | Run in standard 640x480 resolution                        | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_ResetConfig  | Startup.rut | Reset all configuration options to defaults               | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_NoProcessor  | Startup.rut | Disable Pentium III/3DNow processor extensions            | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_NoJoy        | Startup.rut | Disable joystick support                                  | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_SoftwareRenderer | Startup.rut | Use software rendering                                | - | - |

