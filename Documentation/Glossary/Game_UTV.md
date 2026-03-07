# Game_UTV glossary

## Entity Glossary Rules (Game_UTV)

- **Sources:** Strings related to UTV (Unreal TV) spectator / broadcast functionality, taken from `UTV2004c.int`, `UTV2004s.int`, and any other UTV-specific `.int` files. This includes menu labels, button captions, field names, tooltips, and mutator names/descriptions that are specific to UTV. Current Russian: matching `.rut` files in `/rut/` (`UTV2004c.rut`, `UTV2004s.rut`, etc.). Old Russian: matching `.rut` files in `/rut_old/`.
- **Structure / categories:** Sections are grouped by UTV area: primary settings, watcher settings, and UTV-related mutators or game options. Within each section, rows are ordered by technical key.
- **Exclusions:** General server admin and WebAdmin strings belong to `Tech_WebAdmin.md` and are not duplicated here. Generic mutators that are not UTV-specific belong to `Game_Mutators.md`. Low-level engine/network errors are localized directly without a dedicated glossary entity.
- **Table format:** Standard 5-column glossary format: Technical name | .rut file | English name | Current Russian | Old Russian.

---

Source: `UTV2004c.int`, `UTV2004s.int` (and other UTV-specific `.int` files, if any) in `/int/`.
Current Russian: `/rut/*.rut` (same basenames as the UTV sources).
Old Russian: `/rut_old/*.rut` (same basenames as the UTV sources).

Format (Markdown table, GitHub-style as in `Game_Pickups.md`):


| Technical name                  | .rut file   | English name                            | Current Russian | Old Russian        |
| ------------------------------- | ----------- | --------------------------------------- | --------------- | ------------------ |
| *(TechnicalKey or Section.Key)* | (*.rut*)    | (English label from the UTV UI/mutator) | -               | (Old Russian or -) |


If no translation: `-`.

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- Keep UTV-only concepts grouped here so that spectator / broadcast terminology stays consistent across mutators and menus.

---

## UTV primary settings menu


| Technical name                      | .rut file     | English name             | Current Russian | Old Russian |
| ----------------------------------- | ------------- | ------------------------ | --------------- | ----------- |
| UTV2004c.utvPrimaryMenu.Label1      | UTV2004c.rut  | Total clients            | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelD      | UTV2004c.rut  | Delay                    | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelJP     | UTV2004c.rut  | Join password            | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelLP     | UTV2004c.rut  | Listen port              | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelMC     | UTV2004c.rut  | Max clients              | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelMute   | UTV2004c.rut  | Show UTV Chat            | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelNP     | UTV2004c.rut  | Normal password          | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelPP     | UTV2004c.rut  | Primary password         | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelSA     | UTV2004c.rut  | Server address           | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelSP     | UTV2004c.rut  | Server port              | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelTC     | UTV2004c.rut  | tc                       | -               | -           |
| UTV2004c.utvPrimaryMenu.LabelVP     | UTV2004c.rut  | VIP password             | -               | -           |
| UTV2004c.utvPrimaryMenu.OkButton    | UTV2004c.rut  | OK                       | -               | -           |
| UTV2004c.utvPrimaryMenu.ResetButton | UTV2004c.rut  | Reset                    | -               | -           |
| UTV2004c.utvPrimaryMenu.TitleText   | UTV2004c.rut  | UTV2004 Primary settings | -               | -           |


## UTV watcher settings menu


| Technical name                    | .rut file    | English name             | Current Russian | Old Russian |
| --------------------------------- | ------------ | ------------------------ | --------------- | ----------- |
| UTV2004c.utvWatcherMenu.Label1    | UTV2004c.rut | View rotation            | -               | -           |
| UTV2004c.utvWatcherMenu.Label2    | UTV2004c.rut | Follow primary           | -               | -           |
| UTV2004c.utvWatcherMenu.Label3    | UTV2004c.rut | Show UTV Chat            | -               | -           |
| UTV2004c.utvWatcherMenu.OkButton  | UTV2004c.rut | OK                       | -               | -           |
| UTV2004c.utvWatcherMenu.TitleText | UTV2004c.rut | UTV2004 Watcher settings | -               | -           |


## UTV mutator


| Technical name           | .rut file    | English name                            | Current Russian | Old Russian |
| ------------------------ | ------------ | --------------------------------------- | --------------- | ----------- |
| UTV2004s.utvMutator.Name | UTV2004s.rut | UTV2004S                                | -               | -           |
| UTV2004s.utvMutator.Desc | UTV2004s.rut | Required to support UTV2004 SeeAll mode | -               | -           |


