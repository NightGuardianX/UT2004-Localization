# UI_Startup glossary

## Entity Glossary Rules (UI_Startup)

- **Sources:** `Startup.int`, `UT2004.int` (launcher-related strings). Matching `.rut` in `/rut/` and `/rut_old/`.
- **Structure:** Sections by dialog/flow: general startup state, first-time configuration, safe-mode prompts and options. Rows ordered by technical key as in source.
- **Exclusions:** In-game menus, settings, dialogs, notifications, loading → corresponding `UI_*.md`. Low-level engine/driver messages (`Engine.int`, `Core.int`, etc.) are localized without a glossary entity.
- **Table:** 5 columns. Technical name | .rut file | English name | Current Russian | Old Russian.

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

---

## General startup state

| Technical name       | .rut file    | English name                              | Current Russian | Old Russian |
| -------------------- | ------------ | ----------------------------------------- | --------------- | ----------- |
| UT2004.Start         | UT2004.rut   | Unreal Tournament 2004 (Starting)         | -               | -           |
| UT2004.Exit          | UT2004.rut   | Unreal Tournament 2004 (Exiting)          | -               | -           |
| UT2004.Run           | UT2004.rut   | Unreal Tournament 2004 (Running)           | -               | -           |
| Startup.Run          | Startup.rut  | Run!                                      | -               | -           |
| Startup.FirstTime    | Startup.rut  | Unreal Tournament 2004 First-Time Configuration | -         | -           |
| Startup.SafeMode     | Startup.rut  | Unreal Tournament 2004 Safe Mode           | -               | -           |
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
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_Res         | Startup.rut | Run in standard 640x480 resolution                        | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_ResetConfig  | Startup.rut | Reset all configuration options to defaults               | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_NoProcessor  | Startup.rut | Disable Pentium III/3DNow processor extensions            | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_NoJoy        | Startup.rut | Disable joystick support                                  | - | - |
| Startup.IDDIALOG_ConfigPageSafeOptions.IDC_SoftwareRenderer | Startup.rut | Use software rendering                                | - | - |

Keep launcher-only strings here; if a string is used in normal in-game UI as well, document it in the relevant `UI_*.md` and cross-reference if needed.
