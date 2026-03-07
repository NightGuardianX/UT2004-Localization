# Pickups glossary

## Entity Glossary Rules (Game_Pickups)

- **Sources:** XPickups.int, XWeapons.int (ammo, WeaponLocker), OnslaughtFull.int.
- **Categories:** Health & Armor, Power-ups, Ammo, Other (Weapon Locker, Onslaught pickups).
- **Exclusions:** Weapon pickups (Assault Rifle, etc.) → Game_Weapons. Ammo display names from `ItemName` (XWeapons); Health/Shield from PickupMessage (XPickups). Assault and Minigun "Bullets" listed once as AssaultAmmo.
- **Table:** 5 columns.

Table format and filling: [GLOSSARY_RULES — Glossary row format](../Glossary_Rules.md#glossary-row-format).

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


