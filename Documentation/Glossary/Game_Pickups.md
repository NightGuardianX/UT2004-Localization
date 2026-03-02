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
  Column order: Technical name | English name | Current Russian | Old Russian.
  If no translation, use `-`.
- **Alignment:** All tables use the same column widths; columns are aligned across the document.

---

Source: XPickups.int, XWeapons.int, OnslaughtFull.int (English).
Current Russian: /rut.
Old Russian: /rut_old.

Format: Technical name | English name | Current Russian | Old Russian.
If no translation: - .

Notes:

- **Ammo** display names come from `ItemName` in XWeapons.int. Assault and Minigun both use "Bullets"; listed once under AssaultAmmo.
- **Health/Shield** names are derived from PickupMessage in XPickups.int (e.g. "Health Vial", "Shield Pack").

---

## Health & Armor

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
MiniHealthPack           | Health Vial        | -               | Ампула здоровья
TournamentHealth         | Health Pack        | -               | Комплект здоровья
SuperHealthPack          | Big Keg O' Health  | -               | Большая бочка здоровья
ShieldPickup             | Shield Pack        | -               | Защитный комплект
SuperShieldPack          | Super Shield Pack  | -               | Суперзащитный комплект

---

## Power-ups

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
AdrenalinePickup         | Adrenaline         | -               | Адреналин
UDamagePack              | Double Damage      | -               | Двойной урон

---

## Ammo

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
AssaultAmmo              | Bullets            | -               | Патроны
MinigunAmmo              | Bullets            | -               | Патроны
BioAmmo                  | Bio-Rifle Goop     | -               | Боеприпасы био-ружья
FlakAmmo                 | Flak Shells        | -               | Зенитные снаряды
GrenadeAmmo              | Grenades           | -               | Гранаты
LinkAmmo                 | Link Ammo          | -               | Плазменные боеприпасы
RocketAmmo               | Rockets            | -               | Ракеты
ShieldAmmo               | Shield             | -               | Щитовой заряд
ShockAmmo                | Shock Core         | -               | Фотонные заряды
SniperAmmo               | Lightning Charges  | -               | Световые заряды
RedeemerAmmo             | Redeemer Ammo      | -               | Ядерная боеголовка
TransAmmo                | Translocator       | -               | Транслокатор
BallAmmo                 | BallAmmo           | -               | Шаровые боеприпасы
ClassicSniperAmmo        | Sniper Bullets     | -               | Снайперские патроны

---

## Other

Technical name           | English name       | Current Russian | Old Russian
-------------------------|--------------------|-----------------|--------------------------
WeaponLocker             | Weapon Locker      | -               | Оружейный стояк
ONSPainterPickup         | Target Painter     | -               | Маркер целеуказания

