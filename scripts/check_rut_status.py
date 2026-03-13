# -*- coding: utf-8 -*-
"""Check .rut files for status per File Translation Status Rules.
   Spanish = only in translation lines (not in ; EN: lines). Spanish chars: ñ á é í ó ú ü
"""
import os
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RUT_DIR = ROOT / "rut"
SPANISH_CHARS = re.compile(r'[ñáéíóúü¿¡]')
CYRILLIC = re.compile(r'[\u0400-\u04FF]')  # Cyrillic block

def get_translation_values(content):
    """Extract values from translation lines only (Key=\"value\" lines that do NOT start with ; EN:)."""
    values = []
    for line in content.splitlines():
        s = line.strip().lstrip('\ufeff')  # strip BOM so "; EN:" is recognized
        if not s or s.startswith(';') or s.startswith('['):
            continue
        # Translation line: after = we have "value" or ("v1","v2"). Match quoted strings.
        after_eq = s.split('=', 1)[-1].strip()
        for m in re.finditer(r'"([^"]*)"', after_eq):
            values.append(m.group(1))
    return values

def read_rut(path):
    """Read .rut file; support UTF-8 and UTF-16 LE (BOM)."""
    raw = path.read_bytes()
    if raw.startswith(b'\xff\xfe'):
        return raw.decode('utf-16-le', errors='replace')
    if raw.startswith(b'\xfe\xff'):
        return raw.decode('utf-16-be', errors='replace')
    return raw.decode('utf-8', errors='replace')

def classify_file(path):
    try:
        text = read_rut(path)
    except Exception as e:
        return 'Error', str(e)
    values = get_translation_values(text)
    if not values:
        return 'Untranslated', 0, 0, 0  # no translation lines
    has_spanish = 0
    has_cyrillic = 0
    for v in values:
        if SPANISH_CHARS.search(v):
            has_spanish += 1
        if CYRILLIC.search(v):
            has_cyrillic += 1
    total = len(values)
    if has_spanish > 0:
        return 'Spanish!!!', total, has_spanish, has_cyrillic
    if has_cyrillic == total:
        return 'Done', total, 0, has_cyrillic
    if has_cyrillic > 0:
        return 'In Progress', total, 0, has_cyrillic
    return 'Untranslated', total, 0, 0

def main():
    rows = []
    for f in sorted(RUT_DIR.glob("*.rut")):
        status, total, spanish, cyrillic = classify_file(f)
        rows.append((f.name, status, total, spanish, cyrillic))
    # Output table: filename -> new status
    for name, status, total, spanish, cyrillic in rows:
        print(f"{name}\t{status}\t(total={total} spanish_vals={spanish} cyrillic_vals={cyrillic})")

if __name__ == '__main__':
    main()
