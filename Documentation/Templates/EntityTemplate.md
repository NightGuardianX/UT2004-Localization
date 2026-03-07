# {EntityName} glossary

## Entity Glossary Rules ({EntityName})

*(Optional.
Remove this section if the entity has no specific rules.
Otherwise list rules that override or extend the general [Glossary Rules](../Rules/Glossary%20Rules.md) for this entity.)*

- **Sources:** Terms from … (.int files). Current Russian: /rut. Old Russian: /rut_old.
- **Structure / categories:** *(e.g. how terms are grouped, any subcategories)*
- **Exclusions:** *(e.g. what is not included and why)*
- **Table format:** *(if different from general: column order, separator line, alignment)*

---

Source: *(list .int or other source files)*
Current Russian: /rut.
Old Russian: /rut_old.

Format (Markdown table, GitHub-style as in `Game_Pickups.md`):

| Technical name   | English name   | Current Russian | Old Russian        |
| ---------------- | -------------- | --------------- | ------------------ |
| *(TechnicalKey)* | (English label)| -               | (Old Russian or -) |

If no translation: `-`.

Notes:

- *(Optional entity-specific notes.)*
- When filling glossary, always check both the current `/rut` files and `/rut_old/` to populate Russian columns where possible.
- After creating a new entity glossary file from this template, always add a linked entry for it to `Documentation/_СПИСОК_ГЛОССАРИЕВ.md` (see [Glossary Rules](../Rules/Glossary%20Rules.md)).

---

## *(Category or section name)*

| Technical name   | English name   | Current Russian | Old Russian        |
| ---------------- | -------------- | --------------- | ------------------ |
| *(TechnicalKey)* | (English label)| -               | (Old Russian or -) |

Add more sections and rows as needed. Keep column order and meaning the same across all tables. Prefer GitHub-style tables (with leading and trailing `|`) and align columns similar to `Game_Pickups.md` so that they stay readable both in rendered form and in a monospaced editor.
