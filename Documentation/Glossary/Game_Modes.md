# Game modes glossary

## Entity Glossary Rules (Game_Modes)

These rules apply only to the Game modes entity and override the general Glossary Rules where they differ.

- **Categories:** Game modes are grouped into **Base gamemodes** (Deathmatch, Team Deathmatch, CTF, Domination, Bombing Run, Onslaught, Assault) and **Other** (variants and additional modes).
- **Sources:** Terms from XGame.int, BonusPack.int, SkaarjPack.int, UT2k4Assault.int, OnslaughtFull.int (English).
  Current Russian: /rut.
  Old Russian: /rut_old.
- **Scope:** Only base game types that appear in the standard `Game Type` selection are listed. Mutators and ladder-specific variants are excluded.
- **Table format:** Tables use pipe-separated columns. First row is the header; second row is a separator line (dashes and pipes). Column order: Technical name | .rut file | English name | Current Russian | Old Russian. If no translation, use `-`.
- **Alignment:** All tables use the same column widths; columns are aligned across the document.

---

Source: XGame.int, BonusPack.int, SkaarjPack.int, UT2k4Assault.int, OnslaughtFull.int (English).
Current Russian: /rut.
Old Russian: /rut_old.

Format: Technical name | .rut file | English name | Current Russian | Old Russian.
If no translation: - .

Notes:

- Where multiple entries share rules or descriptions (e.g. CTF variants), each distinct GameType class still gets its own row.

---

## Base gamemodes

| Technical name   | .rut file        | English name      | Current Russian                           | Old Russian                  |
| ---------------- | ---------------- | ----------------- | ----------------------------------------- | ---------------------------- |
| xDeathMatch      | XGame.rut        | DeathMatch        | Бой насмерть                              | Смертельный матч             |
| xTeamGame        | XGame.rut        | Team DeathMatch   | Командный бой насмерть                    | Командный смертельный матч   |
| xCTFGame         | XGame.rut        | Capture the Flag  | Захват флага                              | Захватите Флаг               |
| xDoubleDom       | XGame.rut        | Double Domination | Двойное доминирование                     | Двойное Доминирование        |
| xBombingRun      | XGame.rut        | Bombing Run       | Бомбовый забег                            | Бомбардирбол                 |
| ONSOnslaughtGame | Onslaught.rut     | Onslaught         | -                                         | Натиск                       |
| ASGameInfo       | UT2k4Assault.rut  | Assault           | -                                         | Штурм                        |

---

## Other

### Other gamemodes

| Technical name    | .rut file   | English name  | Current Russian                           | Old Russian              |
| ----------------- | ----------- | ------------- | ----------------------------------------- | ------------------------ |
| xVehicleCTFGame   | XGame.rut   | Vehicle CTF   | Захват флага с транспортом                | Захват Флага с Техникой |
| InstagibCTF       | XGame.rut   | Instagib CTF  | Захват флага Instagib (мгновенная смерть) | Снайперский матч ЗФ     |

### Bonus pack gamemodes

| Technical name        | .rut file      | English name      | Current Russian | Old Russian     |
| --------------------- | -------------- | ----------------- | --------------- | --------------- |
| xLastManStandingGame  | BonusPack.rut  | Last Man Standing | -               | Последний герой |
| xMutantGame           | BonusPack.rut  | Mutant            | -               | Мутант          |
| Invasion              | SkaarjPack.rut | Invasion          | Вторжение       | Вторжение       |

