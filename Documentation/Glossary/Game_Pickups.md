# Pickups glossary

## Entity Glossary Rules (Game_Pickups)

These rules apply only to the Pickups entity and override the general Glossary Rules where they differ.

- **Categories:** Pickups are grouped into **Health & Armor**, **Power-ups**, **Ammo**, and **Other** (e.g. Weapon Locker, Onslaught pickups).
- **Sources:** Terms from XPickups.int, XWeapons.int (ammo and WeaponLocker), OnslaughtFull.int (English).
Current Russian: /rut.
Old Russian: /rut_old.
- **Weapons:** Weapon pickups (e.g. Assault Rifle, Flak Cannon) are not listed here; they belong in the Weapons entity. Only ammo and non-weapon pickups are included.
- **Table format:** Tables use pipe-separated columns.
First row is the header; second row is a separator line (dashes and pipes).
Column order: Technical name | .rut file | English name | Current Russian | Old Russian.
If no translation, use `-`.
- **Alignment:** All tables use the same column widths; columns are aligned across the document.

---

Source: XPickups.int, XWeapons.int, OnslaughtFull.int (English).
Current Russian: /rut.
Old Russian: /rut_old.

Format: Technical name | .rut file | English name | Current Russian | Old Russian.
If no translation: - .

Notes:

- **Ammo** display names come from `ItemName` in XWeapons.int. Assault and Minigun both use "Bullets"; listed once under AssaultAmmo.
- **Health/Shield** names are derived from PickupMessage in XPickups.int (e.g. "Health Vial", "Shield Pack").

---

## Health & Armor


| Technical name   | .rut file     | English name      | Current Russian | Old Russian            |
| ---------------- | ------------- | ----------------- | --------------- | ---------------------- |
| MiniHealthPack   | XPickups.rut  | Health Vial       | -               | Ампула здоровья        |
| TournamentHealth | XPickups.rut  | Health Pack       | -               | Комплект здоровья      |
| SuperHealthPack  | XPickups.rut  | Big Keg O' Health | -               | Большая бочка здоровья |
| ShieldPickup     | XPickups.rut  | Shield Pack       | -               | Защитный комплект      |
| SuperShieldPack  | XPickups.rut  | Super Shield Pack | -               | Суперзащитный комплект |


---

## Power-ups


| Technical name   | .rut file    | English name  | Current Russian | Old Russian  |
| ---------------- | ------------ | ------------- | --------------- | ------------ |
| AdrenalinePickup | XPickups.rut | Adrenaline    | -               | Адреналин    |
| UDamagePack      | XPickups.rut | Double Damage | -               | Двойной урон |


---

## Ammo


| Technical name    | .rut file     | English name      | Current Russian | Old Russian           |
| ----------------- | ------------- | ----------------- | --------------- | --------------------- |
| AssaultAmmo       | XWeapons.rut  | Bullets           | -               | Патроны               |
| MinigunAmmo       | XWeapons.rut  | Bullets           | -               | Патроны               |
| BioAmmo           | XWeapons.rut  | Bio-Rifle Goop    | -               | Боеприпасы био-ружья  |
| FlakAmmo          | XWeapons.rut  | Flak Shells       | -               | Зенитные снаряды      |
| GrenadeAmmo       | XWeapons.rut  | Grenades          | -               | Гранаты               |
| LinkAmmo          | XWeapons.rut  | Link Ammo         | -               | Плазменные боеприпасы |
| RocketAmmo        | XWeapons.rut  | Rockets           | -               | Ракеты                |
| ShieldAmmo        | XWeapons.rut  | Shield            | -               | Щитовой заряд         |
| ShockAmmo         | XWeapons.rut  | Shock Core        | -               | Фотонные заряды       |
| SniperAmmo        | XWeapons.rut  | Lightning Charges | -               | Световые заряды       |
| RedeemerAmmo      | XWeapons.rut  | Redeemer Ammo     | -               | Ядерная боеголовка    |
| TransAmmo         | XWeapons.rut  | Translocator      | -               | Транслокатор          |
| BallAmmo          | XWeapons.rut  | BallAmmo          | -               | Шаровые боеприпасы    |
| ClassicSniperAmmo  | XWeapons.rut  | Sniper Bullets    | -               | Снайперские патроны   |


---

## Other


| Technical name   | .rut file        | English name   | Current Russian | Old Russian         |
| ---------------- | ---------------- | -------------- | --------------- | ------------------- |
| WeaponLocker     | XWeapons.rut     | Weapon Locker  | -               | Оружейный стояк     |
| ONSPainterPickup | OnslaughtFull.rut| Target Painter | -               | Маркер целеуказания |


