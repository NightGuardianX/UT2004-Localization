# Duplicated Keys Across .rut Files

> Due to developer errors, some keys appear in **more than one .rut file**. The game’s behaviour is undefined as to which file it uses. Translators may not notice and translate the same key differently in different files. We maintain a **list** of such keys and **synchronize** the Russian translation across all listed .rut files.

## Problem

- The same key (e.g. same section + key name) can exist in several .rut (and corresponding .int) files.
- It is **unknown which of these files** the game actually loads for that key.
- If translations differ, the in-game text will be inconsistent depending on load order or package precedence.
- A translator editing one .rut file may be unaware of the duplicate in another and translate differently.

## Approach

1. **List** — maintain a list of keys that are known to be duplicated, with the list of .rut files where each key appears. See [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md).
2. **Single agreed translation** — for each duplicated key, use **one and the same** Russian string in every .rut file that contains it. Optionally record that agreed translation in the list for reference.
3. **Sync on change** — whenever a duplicated key is translated or edited in any .rut file, copy the same Russian value to all other .rut files that contain this key (and, if used, update the “Agreed Russian” in the list).
4. **Discovery** — when a new duplicate is found (e.g. during diff analysis or translation), add it to the list and sync existing translations across all listed files.

## Process integration

- **Validation:** In [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) and translation validation: if a changed key is in the duplicated-keys list, ensure the same Russian is used in every listed .rut file; if not, sync and optionally update the list.
- **Translation / review:** When editing .rut, check [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md) for the key; if present, apply the same translation everywhere and update the list if you record “Agreed Russian”.
- **New duplicates:** When you discover a key in multiple .rut files (e.g. via grep or diff), add a row to the list and sync translations.

## Key links

- [_DUPLICATED_KEYS_LIST](_DUPLICATED_KEYS_LIST.md) — duplicated keys and .rut files list
- [LOC_PROCESS](LOC_PROCESS.md) — validation rules (duplicated keys)
- [STEP_VALIDATE_AND_UPDATE_GLOSSARY](STEP_VALIDATE_AND_UPDATE_GLOSSARY.md) — validate and sync when processing changed .rut
