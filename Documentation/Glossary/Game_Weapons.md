# Weapons glossary

## Entity Glossary Rules (Game_Weapons)

These rules apply only to the Weapons entity and override the general Glossary Rules where they differ.

- **Categories:** Weapons are grouped into three categories — **Основное (Primary)**, **Против техники (Against vehicles)**, **Особое (Special)** — in line with common game documentation (e.g. iGrowiki).
- **Sources:** Terms from XWeapons.int, Onslaught.int, OnslaughtFull.int (English).
  Current Russian: /rut.
  Old Russian: /rut_old.
- **Sniper rifles:** One in-game class is treated as two entries for localization: **SniperRifle (Lightning)** — Lightning Gun; **SniperRifle (Classic)** — Sniper Rifle.
  Both stay in Primary.
- **Ammo / pickups:** Not listed here; they belong in a separate entity (e.g. Pickups).
- **Table format:** Tables use pipe-separated columns.
  First row is the header; second row is a separator line (dashes and pipes).
  Column order: Technical name | .rut file | English name | Current Russian | Old Russian.
  If no translation, use `-`.
- **Alignment:** All tables use the same column widths; columns are aligned across the document.

---

Source: XWeapons.int, Onslaught.int, OnslaughtFull.int (English).
Current Russian: /rut.
Old Russian: /rut_old.

Format: Technical name | .rut file | English name | Current Russian | Old Russian.
If no translation: - .

Notes:

- **SniperRifle** и **Lightning Gun** — один класс оружия, для игрока две пушки с разными названиями и локализацией; в глоссарии даны как подтипы.

---

## Primary

| Technical name          | .rut file     | English name      | Current Russian | Old Russian           |
| ----------------------- | ------------- | ----------------- | --------------- | --------------------- |
| ShieldGun               | XWeapons.rut  | Shield Gun        | -               | Ударная винтовка      |
| AssaultRifle            | XWeapons.rut  | Assault Rifle     | -               | Автомат               |
| BioRifle                | XWeapons.rut  | Bio-Rifle         | -               | Био-Ружье             |
| ShockRifle              | XWeapons.rut  | Shock Rifle       | -               | Фотонная винтовка     |
| LinkGun                 | XWeapons.rut  | Link Gun          | -               | Плазменная винтовка   |
| Minigun                 | XWeapons.rut  | Minigun           | -               | Пулемет               |
| FlakCannon              | XWeapons.rut  | Flak Cannon       | -               | Зенитная пушка        |
| RocketLauncher          | XWeapons.rut  | Rocket Launcher   | -               | Ракетница             |
| SniperRifle (Lightning) | XWeapons.rut  | Lightning Gun     | -               | Световая пушка        |
| SniperRifle (Classic)   | XWeapons.rut  | Sniper Rifle      | -               | -                     |

---

## Onslaught

| Technical name     | .rut file        | English name     | Current Russian | Old Russian         |
| ------------------ | ---------------- | ---------------- | --------------- | ------------------- |
| ONSAVRiL           | Onslaught.rut    | AVRiL            | -               | АВРиЛ               |
| ONSGrenadeLauncher | Onslaught.rut    | Grenade Launcher | -               | Гранатомет          |
| ONSMineLayer       | Onslaught.rut    | Mine Layer       | -               | Миноукладчик        |
| ONSPainter         | OnslaughtFull.rut| Target Painter   | -               | Маркер целеуказания |

---

## Special

| Technical name   | .rut file    | English name      | Current Russian | Old Russian               |
| ---------------- | ------------ | ----------------- | --------------- | ------------------------- |
| Translauncher    | XWeapons.rut | Translocator      | -               | Транслокатор              |
| Redeemer         | XWeapons.rut | Redeemer          | -               | Искупитель                |
| Painter          | XWeapons.rut | Ion Painter       | -               | Ионный разрушитель        |
| BallLauncher     | XWeapons.rut | Ball Launcher     | -               | Метатель шаров            |
| SuperShockRifle  | XWeapons.rut | Super Shock Rifle | -               | Фотонная супервинтовка    |
