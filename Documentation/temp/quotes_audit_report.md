# Audit: Mismatched or Missing Quotes in Translation Strings

All `.rut` files were checked for translation lines where the value has **incorrect quoting** (opening quote without closing, closing quote without opening, or missing quotes around the value).

**Correct format:** `Key="Translated text"` — both quotes around the value.

**Incorrect:**
- `Key="Text` — opening quote, no closing quote
- `Key=Text"` — closing quote, no opening quote
- `Key=Text` — no quotes (when the value is a literal string that should be quoted)

---

## 1. **rut/XInterface.rut** (1 occurrence)

- **Line 413:** `PingText=ПИНГ:"` — closing quote only (missing opening quote).
- **Fix:** `PingText="ПИНГ:"`

---

## 2. **rut/Onslaught.rut** (1 occurrence)

- **Line 49:** `DeathString=%k напичкал %o плазмой из Раптора."` — closing quote only (missing opening quote).
- **Fix:** `DeathString="%k напичкал %o плазмой из Раптора."`

---

## 3. **rut/GUI2K4.rut** (2 occurrences)

- **Line 531:** `MutatorModeStrings[3]="Без мутаторов` — opening quote, no closing quote.
- **Fix:** `MutatorModeStrings[3]="Без мутаторов"` (add closing `"`).

- **Line 1897:** `PanelCaption=("Профиль","Новый профиль","Обучение","Квалификация","Командная квалификация,"Турнирная таблица","Управление командой","Дополнительно")` — the segment `"Командная квалификация,` has no closing quote before the next element.
- **Fix:** `"Командная квалификация","Турнирная таблица"` (add `"` after `квалификация,`).

---

## 4. **rut/Engine.rut** (1 occurrence)

- **Line 276:** `OutdatedDrivers="Вы используете устаревшие драйвера для видеокарты, которые могут работать некорректно.` — opening quote, no closing quote.
- **Fix:** Add closing `"` at end of line (after the period).

---

## 5. **rut/AS-Mothership.rut** (4 occurrences)

- **Lines 302, 306, 314, 414:** `LocationName="Ядро (снаружи)` — opening quote, no closing quote.
- **Fix:** `LocationName="Ядро (снаружи)"` (add closing `"`).

---

## 6. **rut/UnrealGame.rut** (2 occurrences)

- **Line 115:** `FlagTouches="Касаний флага` — opening quote, no closing quote.
- **Fix:** `FlagTouches="Касаний флага"`

- **Line 480:** `MPBotText="Мин. игроков` — opening quote, no closing quote.
- **Fix:** `MPBotText="Мин. игроков"`

---

## 7. **rut/BonusPack.rut** (1 occurrence)

- **Line 134:** `LMSPropDescText[5]="Если активно, можно собирать предметы по карте.` — opening quote, no closing quote.
- **Fix:** Add closing `"` at end of line.

---

## 8. **rut/AS-BP2-Outback.rut** (3 occurrences)

- **Lines 105, 117, 137:** `Objective_Info_Attacker=Сверните рекламную кампанию Zero Beer."` — closing quote only (missing opening quote).
- **Fix:** `Objective_Info_Attacker="Сверните рекламную кампанию Zero Beer."`

---

## 9. **rut/AS-BP2-Acatana.rut** (2 occurrences)

- **Line 121:** `Objective_Info_Defender="Защищайте корабельные двигатели.` — opening quote, no closing quote (next line is `[HoldObjective1]`).
- **Fix:** `Objective_Info_Defender="Защищайте корабельные двигатели."`

- **Line 129:** `ObjectiveDescription="Установите взрывчатку, чтобы уничтожить двери.` — opening quote, no closing quote.
- **Fix:** `ObjectiveDescription="Установите взрывчатку, чтобы уничтожить двери."`

---

**Summary:** 9 files, 17 lines with quote issues (11 with opening quote only, 5 with closing quote only, 1 with missing quote inside an array literal).
