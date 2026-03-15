# -*- coding: utf-8 -*-
"""List translation lines without Cyrillic (blocking Done) for each In Progress .rut file."""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RUT_DIR = ROOT / "rut"
SPANISH_CHARS = re.compile(r'[ñáéíóúü¿¡]')
CYRILLIC = re.compile(r'[\u0400-\u04FF]')

def get_translation_pairs(content):
    """Yield (key, value) for each translation line value (lines not starting with ; EN:)."""
    for line in content.splitlines():
        s = line.strip().lstrip('\ufeff')
        if not s or s.startswith(';') or s.startswith('['):
            continue
        if '=' not in s or '"' not in s:
            continue
        key_part, _, rest = s.partition('=')
        key = key_part.strip()
        for m in re.finditer(r'"([^"]*)"', rest):
            yield key, m.group(1)

def read_rut(path):
    raw = path.read_bytes()
    if raw.startswith(b'\xff\xfe'):
        return raw.decode('utf-16-le', errors='replace')
    if raw.startswith(b'\xfe\xff'):
        return raw.decode('utf-16-be', errors='replace')
    return raw.decode('utf-8', errors='replace')

def classify_and_get_missing(path):
    try:
        text = read_rut(path)
    except Exception as e:
        return None, str(e)
    pairs = list(get_translation_pairs(text))
    if not pairs:
        return 'Untranslated', 0, 0, []
    has_spanish = sum(1 for _, v in pairs if SPANISH_CHARS.search(v))
    has_cyrillic = sum(1 for _, v in pairs if CYRILLIC.search(v))
    total = len(pairs)
    if has_spanish > 0:
        return 'Spanish!!!', total, 0, []
    if has_cyrillic == total:
        return 'Done', total, 0, []
    if has_cyrillic > 0:
        missing = [(k, v) for k, v in pairs if not CYRILLIC.search(v)]
        return 'In Progress', total, len(missing), missing
    return 'Untranslated', total, 0, []

def main():
    import sys
    out_path = ROOT / "Documentation" / "temp" / "In_Progress_report_all.md"
    blocks = []
    blocks.append("""# In Progress status — report (all cases)

**Why "In Progress"?** The script treats a file as **Done** only when every translation value contains Cyrillic.  
**Blocking:** Any line that is a translation (not `; EN:`) and whose value has **no Cyrillic** is counted as "missing" and keeps the file In Progress.

Typical cases: **Title** left as English (map name), technical strings (font names, URLs, captions), or Spanish/other left in place.

---

## Summary

| File | Total | Missing | Notes |
|------|-------|--------|------|
""")
    for f in sorted(RUT_DIR.glob("*.rut")):
        status, total, missing_count, missing_pairs = classify_and_get_missing(f)
        if status != 'In Progress':
            continue
        keys = set(k for k, _ in missing_pairs)
        sample = ", ".join(sorted(keys)[:5])
        if len(keys) > 5:
            sample += ", ..."
        blocks.append(f"| {f.name} | {total} | {missing_count} | {sample} |\n")
    blocks.append("\n---\n\n## Detail by file\n\n")
    for f in sorted(RUT_DIR.glob("*.rut")):
        status, total, missing_count, missing_pairs = classify_and_get_missing(f)
        if status != 'In Progress':
            continue
        blocks.append(f"### {f.name}\n\n")
        blocks.append(f"Total: {total} · Missing (no Cyrillic): {missing_count}\n\n")
        blocks.append("| Key | Value (excerpt) |\n|-----|----------------|\n")
        for key, val in missing_pairs[:30]:  # cap at 30 per file
            excerpt = val.replace("\n", " ")[:70]
            if len(val) > 70:
                excerpt += "..."
            excerpt = excerpt.replace("|", "\\|")
            blocks.append(f"| {key} | `{excerpt}` |\n")
        if len(missing_pairs) > 30:
            blocks.append(f"| ... | *+{len(missing_pairs) - 30} more (see in_progress_raw.txt)* |\n")
        blocks.append("\n")
    out_path.write_text("".join(blocks), encoding="utf-8")
    print("Written:", out_path)

if __name__ == '__main__':
    main()
