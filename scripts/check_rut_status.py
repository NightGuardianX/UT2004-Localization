# -*- coding: utf-8 -*-
"""Check .rut files for status per File Translation Status Rules.
   Spanish = only in translation lines (not in ; EN: lines). Spanish chars: ñ á é í ó ú ü
   Done = all *relevant* translation values have Cyrillic; Title, Message, technical keys excluded.
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RUT_DIR = ROOT / "rut"
SPANISH_CHARS = re.compile(r'[ñáéíóúü¿¡]')
CYRILLIC = re.compile(r'[\u0400-\u04FF]')

# Keys (exact or substring) that do NOT block Done when value has no Cyrillic (per FILE_TRANSLATION_STATUS_RULES)
DONE_IGNORE_KEY_PATTERNS = (
    'Title', 'LevelEnterText', 'Message',
    'FontArrayNames', 'Font', 'MutantRangeFontName',
    'Preferences', 'Caption', 'ClassCaption',
    'Object', 'Product', 'Engine', 'Copyright',
    'HelpWebLink', 'StatsURL', 'WebPage', 'BugReportURL', 'ManualDownloadPage', 'TOSURL',
    'DefaultFolder', 'AutoplayWindowTitle', 'Developer', 'LocalProduct', 'SafeDiscTitlebar',
    'DesignModeHints', 'Spacer', 'PercentText', 'Header', 'ColumnHeadings',
    'ContextItems', 'DefaultItems', 'PanelCaption', 'ModName', 'messageslength',
    'AudioModes', 'RenderModeText', 'NetSpeedText', 'CharSet',
    'IP_Bracket_Open', 'IP_Bracket_Close', 'OptionalObjectivePrefix', 'ObjTimesString',
    'TextCutSuffix', 'SpaceSeparator', 'PrimaryObjectivePrefix', 'RoundSeparator',
    'SomeoneIsCamperMessage', 'SomeoneIsMutantMessage',
    'Abbreviation', 'FriendlyName', 'MainPrivs', 'SubPrivs',
    'VehicleNameString',
    'BrowseButton', 'lbMod.', 'RCMenu.', 'cTestMenu.', 'PlaylistRCMenu.', 'SongRCMenu.',
    'NewStatusTitle', 'Panels', 'ConnectText',
    'LabelTC.', 'myPB5.', 'MPServerMOTD', 'ServerAdminEmail', 'BotTacticsSlider', 'NOTEXT', 'NoVoiceChat',
    'LocalChannel',
)

def _ignore_for_done(key):
    """True if this key is excluded from 'must have Cyrillic' when deciding Done."""
    for pat in DONE_IGNORE_KEY_PATTERNS:
        if pat in key or key == pat:
            return True
    return False

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

def classify_file(path):
    try:
        text = read_rut(path)
    except Exception as e:
        return 'Error', str(e)
    pairs = list(get_translation_pairs(text))
    if not pairs:
        return 'Untranslated', 0, 0, 0
    has_spanish = sum(1 for _, v in pairs if SPANISH_CHARS.search(v))
    if has_spanish > 0:
        return 'Spanish!!!', len(pairs), has_spanish, sum(1 for _, v in pairs if CYRILLIC.search(v))
    # For Done: only require Cyrillic in pairs that are NOT in the ignore list
    relevant = [(k, v) for k, v in pairs if not _ignore_for_done(k)]
    if not relevant:
        return 'Done', len(pairs), 0, len(pairs)
    cyrillic_relevant = sum(1 for _, v in relevant if CYRILLIC.search(v))
    total_relevant = len(relevant)
    if cyrillic_relevant == total_relevant:
        return 'Done', len(pairs), 0, sum(1 for _, v in pairs if CYRILLIC.search(v))
    if cyrillic_relevant > 0:
        return 'In Progress', len(pairs), 0, cyrillic_relevant
    return 'Untranslated', len(pairs), 0, 0

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
