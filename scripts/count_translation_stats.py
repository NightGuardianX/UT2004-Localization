# -*- coding: utf-8 -*-
"""Count translated-to-Russian strings in .rut vs translatable strings in base (.int/.est)."""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
INT_DIR = ROOT / "int"
EST_DIR = ROOT / "est"
RUT_DIR = ROOT / "rut"

CYRILLIC = re.compile(r'[\u0400-\u04FF]')

def read_file(path):
    raw = path.read_bytes()
    if raw.startswith(b'\xff\xfe'):
        return raw.decode('utf-16-le', errors='replace')
    if raw.startswith(b'\xfe\xff'):
        return raw.decode('utf-16-be', errors='replace')
    return raw.decode('utf-8', errors='replace')

def count_base_translatable(content):
    """Count lines in .int/.est that are Key=\"value\" or Key=(\"...\", ...) (translatable)."""
    n = 0
    for line in content.splitlines():
        s = line.strip().lstrip('\ufeff')
        if not s or s.startswith(';') or s.startswith('['):
            continue
        if '=' in s and '"' in s:
            after_eq = s.split('=', 1)[-1].strip()
            # Key="value" или Key=("v1", "v2", ...) — считаем все кавычки со содержимым
            n += len(re.findall(r'"([^"]*)"', after_eq))
    return n

def get_rut_translation_values(content):
    """Translation values only (lines not starting with ; EN:)."""
    values = []
    for line in content.splitlines():
        s = line.strip().lstrip('\ufeff')
        if not s or s.startswith(';') or s.startswith('['):
            continue
        after_eq = s.split('=', 1)[-1].strip()
        for m in re.finditer(r'"([^"]*)"', after_eq):
            values.append(m.group(1))
    return values

def main():
    total_base = 0
    total_rut_values = 0
    total_rut_cyrillic = 0
    files_with_base = 0
    files_no_base = []

    for rut_path in sorted(RUT_DIR.glob("*.rut")):
        base_name = rut_path.stem
        base_path = INT_DIR / f"{base_name}.int"
        if not base_path.exists():
            base_path = EST_DIR / f"{base_name}.est"
        if not base_path.exists():
            files_no_base.append(rut_path.name)
            # Still count rut side
            try:
                text = read_file(rut_path)
                vals = get_rut_translation_values(text)
                total_rut_values += len(vals)
                total_rut_cyrillic += sum(1 for v in vals if CYRILLIC.search(v))
            except Exception:
                pass
            continue

        files_with_base += 1
        try:
            base_text = read_file(base_path)
            rut_text = read_file(rut_path)
        except Exception as e:
            print(f"Read error {rut_path.name}: {e}", flush=True)
            continue

        base_count = count_base_translatable(base_text)
        vals = get_rut_translation_values(rut_text)
        cyrillic_count = sum(1 for v in vals if CYRILLIC.search(v))

        total_base += base_count
        total_rut_values += len(vals)
        total_rut_cyrillic += cyrillic_count

    lines = [
        "=== Строки перевода: base (.int/.est) vs .rut (русский) ===",
        "",
        f"Файлов .rut с базой (.int или .est): {files_with_base}",
        f"Файлов .rut без базы в репозитории:   {len(files_no_base)}",
    ]
    if files_no_base:
        lines.append(f"  (без базы: {', '.join(files_no_base[:5])}{'...' if len(files_no_base) > 5 else ''})")
    lines.extend([
        "",
        f"Всего строк для перевода в base:     {total_base}",
        f"Всего строк перевода в .rut:         {total_rut_values}",
        f"Из них переведено на русский:       {total_rut_cyrillic}",
        "",
    ])
    if total_base > 0:
        pct = 100.0 * total_rut_cyrillic / total_base
        lines.append(f"Доля от базы (русский / base):     {pct:.1f}%")
    if total_rut_values > 0:
        pct_rut = 100.0 * total_rut_cyrillic / total_rut_values
        lines.append(f"Доля в .rut (русский / все строки): {pct_rut:.1f}%")

    report = "\n".join(lines)
    (ROOT / "Documentation" / "Translation Stats.txt").write_text(report, encoding="utf-8")
    print(report)

if __name__ == "__main__":
    import sys
    if hasattr(sys.stdout, 'reconfigure'):
        sys.stdout.reconfigure(encoding='utf-8')
    main()
