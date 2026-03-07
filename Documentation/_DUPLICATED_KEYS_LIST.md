# Duplicated Keys List

> Keys that appear in **more than one .rut file** (developer duplication). Translation must be **identical** in all listed files. See [DUPLICATED_KEYS](DUPLICATED_KEYS.md) for process and sync rules.

## Format

| Key (section + key or identifier) | .rut files       | Agreed Russian (optional) |
| --------------------------------- | ---------------- | ------------------------- |
| *Example: [SectionName]KeyName*   | File1.rut, …     | —                         |

- **Key** — enough to identify the key (e.g. `[Category]KeyName` or the key name if unique).
- **.rut files** — comma-separated list of .rut files that contain this key. Translation must be synced across all.
- **Agreed Russian** — (optional) the single Russian string to use everywhere; update when syncing.

When adding a row, sync the translation in all listed files to one value and optionally fill Agreed Russian.

---

## List

*(Add rows as duplicated keys are discovered. Remove none until the key is confirmed to exist in only one file.)*

| Key | .rut files | Agreed Russian |
| --- | ---------- | -------------- |
| *(none yet)* | — | — |

---

*Discovery: e.g. `grep -r "KeyName=" rut/*.rut` or from diff when the same key appears in multiple modified files. When in doubt, add to the list and sync.*
