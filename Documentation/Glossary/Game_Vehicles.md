# Vehicles glossary

## Entity Glossary Rules (Game_Vehicles)

These rules apply only to the Vehicles entity and override the general Glossary Rules where they differ.

- **Categories:** Vehicles are grouped by source (Onslaught base, OnslaughtFull, OnslaughtBP). Only vehicle display names are listed.
- **Sources:** Terms from OnslaughtFull.int, Onslaught.int, Vehicles.int (English).  
  Current Russian: /rut.  
  Old Russian: /rut_old.
- **Scope:** Only vehicle display names that the player sees in the UI (scoreboard, HUD, vehicle selection, etc.) are listed. Technical helper messages (e.g. “Press [Use] To Enter Vehicle.”) are not included here.
- **Table format:** Tables use pipe-separated columns.  
  First row is the header; second row is a separator line (dashes and pipes).  
  Column order: Technical name | .rut file | English name | Current Russian | Old Russian.  
  If no translation, use `-`.
- **Alignment:** All tables use the same column widths; columns are aligned across the document.

---

Source: OnslaughtFull.int, Onslaught.int, Vehicles.int (English).  
Current Russian: /rut.  
Old Russian: /rut_old.

Format: Technical name | .rut file | English name | Current Russian | Old Russian.  
If no translation: - .

Notes:

- When filling this glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.

---

## Onslaught vehicles

### Base Onslaught vehicles

| Technical name                       | .rut file          | English name                   | Current Russian | Old Russian                 |
| ------------------------------------ | ------------------ | ------------------------------ | --------------- | --------------------------- |
| ONSAttackCraft                       | Onslaught.rut      | Raptor                         | -               | Раптор                      |
| ONSHoverBike                         | Onslaught.rut      | Manta                          | -               | Манта                       |
| ONSHoverTank                         | Onslaught.rut      | Goliath                        | -               | Голиаф                      |
| ONSPRV                               | Onslaught.rut      | Hellbender                     | -               | Хеллбендер                  |
| ONSPRVRearGunPawn                    | Onslaught.rut      | Hellbender Rear Gun            | -               | Задняя пушка Хеллбендера    |
| ONSPRVSideGunPawn                    | Onslaught.rut      | Hellbender Side Gun            | -               | Боковая пушка Хеллбендера   |
| ONSRV                                | Onslaught.rut      | Scorpion                       | -               | Скорпион                    |
| ONSStationaryWeaponPawn              | Onslaught.rut      | Energy Turret                  | -               | Энергопушка                 |
| ONSTankSecondaryTurretPawn           | Onslaught.rut      | Goliath Minigun Turret         | -               | Пулемет Галиафа             |
| ONSBomber                            | OnslaughtFull.rut  | DragonFly                      | -               | Драконфлай                  |
| ONSGenericSD                         | OnslaughtFull.rut  | TC-1200                        | -               | ТС-1200                     |
| ONSHoverTank_IonPlasma               | OnslaughtFull.rut  | Ion Plasma Tank                | -               | Ионный танк                 |
| ONSMASSideGunPawn                    | OnslaughtFull.rut  | Leviathan Turret               | -               | Пушка Левиафана             |
| ONSMobileAssaultStation              | OnslaughtFull.rut  | Leviathan                      | -               | Левиафан                    |
| ONSTankSecondaryTurretPawn_IonPlasma | OnslaughtFull.rut  | Ion Plasma Tank Minigun Turret | -               | Пулемет Ионного танка       |

### Bonus pack vehicles

| Technical name          | .rut file         | English name        | Current Russian | Old Russian                 |
| ----------------------- | ----------------- | ------------------- | --------------- | --------------------------- |
| ONSArtillery            | OnslaughtBP.rut   | SPMA                | -               | Самоходное орудие          |
| ONSArtillerySideGunPawn | OnslaughtBP.rut   | SPMA Side Turret    | -               | турель Самоходного орудия  |
| ONSDualAttackCraft      | OnslaughtBP.rut   | Cicada              | -               | Цикада                      |
| ONSDualACGatlingGunPawn | OnslaughtBP.rut   | Cicada Laser Turret | -               | Лазерная турель Цикады     |
| ONSShockTank            | OnslaughtBP.rut   | Paladin             | -               | Паладин                     |
