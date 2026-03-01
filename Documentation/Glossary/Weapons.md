# Weapons glossary

## Entity Glossary Rules (Weapons)

These rules apply only to the Weapons entity and override the general Glossary Rules where they differ.

- **Categories:** Weapons are grouped into three categories — **Основное (Primary)**, **Против техники (Against vehicles)**, **Особое (Special)** — in line with common game documentation (e.g. iGrowiki).
- **Sources:** Terms from XWeapons.int, Onslaught.int, OnslaughtFull.int (English).
  Current Russian: /rut.
  Old Russian: Documentation/rut_old.
- **Sniper rifles:** One in-game class is treated as two entries for localization: **SniperRifle (Lightning)** — Lightning Gun; **SniperRifle (Classic)** — Sniper Rifle.
  Both stay in Primary.
- **Ammo / pickups:** Not listed here; they belong in a separate entity (e.g. Pickups).
- **Table format:** Tables use pipe-separated columns.
  First row is the header; second row is a separator line (dashes and pipes).
  Column order: Technical name | English name | Current Russian | Old Russian.
  If no translation, use `-`.
- **Alignment:** All tables use the same column widths; columns are aligned across the document.

---

Source: XWeapons.int, Onslaught.int, OnslaughtFull.int (English).
Current Russian: /rut.
Old Russian: Documentation/rut_old.

Format: Technical name | English name | Current Russian | Old Russian.
If no translation: - .

Notes:

- **SniperRifle** и **Lightning Gun** — один класс оружия, для игрока две пушки с разными названиями и локализацией; в глоссарии даны как подтипы.

---

## Основное (Primary)

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
ShieldGun                | Shield Gun         | -               | Ударная винтовка
AssaultRifle             | Assault Rifle      | -               | Автомат
BioRifle                 | Bio-Rifle          | -               | Био-Ружье
ShockRifle               | Shock Rifle        | -               | Фотонная винтовка
LinkGun                  | Link Gun           | -               | Плазменная винтовка
Minigun                  | Minigun            | -               | Пулемет
FlakCannon               | Flak Cannon        | -               | Зенитная пушка
RocketLauncher           | Rocket Launcher    | -               | Ракетница
SniperRifle (Lightning)  | Lightning Gun      | -               | Световая пушка
SniperRifle (Classic)    | Sniper Rifle       | -               | -
```

---

## Против техники (Against vehicles)

Source: Onslaught.int.

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
ONSAVRiL                 | AVRiL              | -               | АВРиЛ
ONSGrenadeLauncher       | Grenade Launcher   | -               | Гранатомет
ONSMineLayer             | Mine Layer         | -               | Миноукладчик
ONSPainter               | Target Painter     | -               | Маркер целеуказания
```

---

## Особое (Special)

```text
Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
Translauncher            | Translocator       | -               | Транслокатор
Redeemer                 | Redeemer           | -               | Искупитель
Painter                  | Ion Painter        | -               | Ионный разрушитель
BallLauncher             | Ball Launcher      | -               | Метатель шаров
SuperShockRifle          | Super Shock Rifle  | -               | Фотонная супервинтовка
```
