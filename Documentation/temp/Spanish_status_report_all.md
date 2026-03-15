# Spanish!!! status — report (all cases)

Script trigger: chars `ñáéíóúü¿¡` in translation lines (non–`; EN:`).  
One file per case below.

---

## 1. AS-Convoy.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 186 | LocationName | `Vehículo de tráiler de armas` | í, ó |

**Context:** ; EN: has Russian «Трейлер с вооружением».  
**Verdict:** **Real Spanish.** Replace with Russian.

---

## 2. AS-Mothership.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 418 | LocationName | `Pasaje izquierdo del puente al núcleo` | ú, é, ó |
| 462 | LocationName | `Pasaje izquierdo del puente al núcleo` | ú, é, ó |

**Verdict:** **Real Spanish.** Translate to Russian.

---

## 3. AS-RobotFactory.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 23 | Message | `...señal recibida` | ñ |

**Verdict:** **Real Spanish.** e.g. «…сигнал получен».

---

## 4. CTF-Grendelkeep.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 201 | LocationName | `Salón Inferior КРАСНЫХ` | ó |

**Verdict:** **Mixed.** «Salón Inferior» is Spanish; «КРАСНЫХ» is Russian. Replace Spanish part with Russian.

---

## 5. DOM-Junkyard.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 3 | Title | `El Depósito de Chatarra` | í, ó |

**Verdict:** **Real Spanish.** Translate map title to Russian.

---

## 6. Engine.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 350 | HelpDesc[1] | `Responde automáticamente 'Sí' a cualquier mensaje durante la operación.` | í, á |

**Verdict:** **Real Spanish.** Translate to Russian.

---

## 7. setuput2004full.rut

| Line | Key | Value | Chars |
|------|-----|------|-------|
| 35 | Description | `Controladores opcionales de Microsoft Direct 9.0b para conseguir compatibilidad...` | í, ó |
| 43 | Description | `Necesario para Windows 2000/XP [temporal- no para la edición]` | á, í |
| 47 | Description | `Editor de mundos de Unreal, para crear tus propios entornos 3D...` | í, ó |
| 59 | Caption | `Notas de edición` | ó |
| 62 | Caption | `Página web de UT2004` | í |

**Verdict:** **Real Spanish.** Multiple strings; file is Spanish localization. Translate to Russian.

---

## 8. XPlayers.rut

| Line | Key | Value (excerpt) | Chars |
|------|-----|-----------------|-------|
| 110 | NightMaleBA | `...Возраст:   apróx. 36|...` (rest is Russian) | ó |

**Verdict:** **One Spanish abbreviation.** «apróx.» in otherwise Russian text. Replace with Russian e.g. «прибл.» or «ок.»

---

## Summary

| File | Verdict |
|------|--------|
| AS-Convoy.rut | Real Spanish |
| AS-Mothership.rut | Real Spanish |
| AS-RobotFactory.rut | Real Spanish |
| CTF-Grendelkeep.rut | Mixed (Spanish + Russian) |
| DOM-Junkyard.rut | Real Spanish |
| Engine.rut | Real Spanish |
| setuput2004full.rut | Real Spanish (multiple) |
| XPlayers.rut | False positive (single «apróx.» in Russian) |
