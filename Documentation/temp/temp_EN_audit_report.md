# Результаты проверки: русский текст в строках `; EN:`

Проверены все `.rut` файлы. Найдены **строки с ключами `; EN:`, содержащие кириллицу** — их нужно заменить на корректный английский оригинал.

---

## 1. **rut/AS-Mothership.rut** (4 вхождения)
- Строки 301, 305, 313, 413: `; EN: LocationName="Core Снаружи"`
- **Исправить на:** `"Core Outside"` (или `"Core Exterior"`).

---

## 2. **rut/XPlayers.rut** (2 вхождения)
- Строка 11: `compАтриумt` → должно быть **`companion`** (вкралась часть слова «Атриум»).
- Строка 34: `an Снаружи of cold metal` → **`an exterior of cold metal`** (или `a shell of`).

---

## 3. **rut/Onslaught.rut** (1 вхождение)
- Строка 124: `; EN: DeathString="%o попал в аварию."`
- **Исправить на:** `; EN: DeathString="%o had an accident."`

---

## 4. **rut/XInterface.rut** (1 вхождение)
- Строка 745: `; EN: GameHudCrossHairR.Hint="Настройка интенсивности красного цвета вашего прицела."`
- **Исправить на:** `; EN: GameHudCrossHairR.Hint="Adjust the red intensity of your crosshair."` (или аналог из других EN-строк).

---

## 5. **rut/DM-HyperBlast2.rut** (1 вхождение)
- Строка 28: `; EN: LocationName="Снаружи"`
- **Исправить на:** `; EN: LocationName="Outside"` (или `"Exterior"`).

---

## 6. **rut/ONS-FrostBite.rut** (2 вхождения)
- Строки 96, 112: `Southeast долинаy` и `Northeast долинаy`
- **Исправить на:** `Southeast Valley` и `Northeast Valley`.

---

## 7. **rut/DM-DE-Ironic.rut** (2 вхождения)
- Строки 28, 32: `; EN: LocationName="Биовинтовка"`
- **Исправить на:** `; EN: LocationName="Bio Rifle"`.

---

## 8. **rut/DM-Metallurgy.rut** (6 вхождений)
- Строки 60, 64, 68, 72, 76, 80: `Southern Снаружи`, `Western Снаружи`, `Northern Снаружи`
- **Исправить на:** `Southern Outside`, `Western Outside`, `Northern Outside` (или `Exterior`).

---

## 9. **rut/DM-BP2-Calandras.rut** (1 вхождение)
- Строка 8: `...found for the Снаружиs.`
- **Исправить на:** `...found for the exterior.` (или `...for the grounds.`).

---

## 10. **rut/GUI2K4.rut** (2 вхождения)
- Строка 2840: `; EN: NOTEXT.Caption="Заблокировать текст"` → **`"Block Text"`** (или как в оригинале EN).
- Строка 2844: `; EN: NoVoiceChat.Caption="Заблокировать голосовой чат"` → **`"Block Voice Chat"`** (или как в оригинале EN).

---

**Итого:** 10 файлов, 22 строки с русским текстом в комментариях `; EN:`.
