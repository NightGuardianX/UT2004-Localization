# -*- coding: utf-8 -*-
"""List translation lines without Cyrillic (blocking Done) for each In Progress .rut file.
   Uses same DONE_IGNORE_KEY_PATTERNS as check_rut_status.py so "missing" = only keys that block Done.
"""
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RUT_DIR = ROOT / "rut"
# Same as check_rut_status.py: excluded from FILE_TRANSLATION_STATUS
STATUS_EXCLUDED = frozenset({'DemoLicense.rut', 'Editor.rut', 'SetupBonusPack.rut', 'setupbrightskinsmod.rut'})
SPANISH_CHARS = re.compile(r'[ñáéíóúü¿¡]')
CYRILLIC = re.compile(r'[\u0400-\u04FF]')

# Same as check_rut_status.py: keys that do NOT block Done when value has no Cyrillic
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
    # Keyboard key names (e.g. Engine.rut: PAGE UP, PRINT SCREEN)
    'PageUp', 'PageDown', 'End', 'Home', 'Select', 'Print', 'PrintScrn', 'Insert', 'Delete',
    'Pause', 'CapsLock', 'Tab', 'Enter', 'Shift', 'NumPad', 'Grey', 'Separator',
    'NumLock', 'Escape',
    'TeamName',  # all TeamNames
    # Game/point/announcer identifiers, template strings
    'ItemName', 'AnnouncerName', 'TauntAnimNames', 'PointName', 'KilledByTrailer',
    'MutantType', 'InvasionType', 'LMSType', 'msgBonusOverviewItem',
    # Engine: command-line help, default names, GRI props
    'HelpUsage', 'HelpParm', 'DefaultPlayerName', 'GRIPropsDisplayText',
)

# Values that do not block Done: only punctuation, whitespace, or symbols (e.g. ", ", "°")
TRIVIAL_VALUE = re.compile(r'^[\s°,.\-;:\'\"\[\]()]*$')

def _value_is_trivial(value):
    """True if value is empty or only punctuation/whitespace/symbols (e.g. ", ", "°")."""
    return not value.strip() or bool(TRIVIAL_VALUE.match(value.strip()))

def _ignore_for_done(key):
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
    # Relevant = not in ignore list and not trivial value (same as check_rut_status)
    relevant = [(k, v) for k, v in pairs if not _ignore_for_done(k) and not _value_is_trivial(v)]
    if not relevant:
        return 'Done', total, 0, []
    if all(CYRILLIC.search(v) for _, v in relevant):
        return 'Done', total, 0, []
    if has_cyrillic > 0:
        missing = [(k, v) for k, v in pairs if not CYRILLIC.search(v) and not _ignore_for_done(k) and not _value_is_trivial(v)]
        return 'In Progress', total, len(missing), missing
    return 'Untranslated', total, 0, []

def main():
    out_path = ROOT / "Documentation" / "temp" / "In_Progress_report_all.md"
    raw_path = ROOT / "Documentation" / "temp" / "in_progress_raw.txt"
    raw_lines = []
    blocks = []
    blocks.append("""# In Progress status — report (all cases)

**Why "In Progress"?** The script treats a file as **Done** when every *relevant* translation value contains Cyrillic (see FILE_TRANSLATION_STATUS_RULES).  
**Blocking:** "Missing" below = lines with **no Cyrillic** whose key is *not* in the ignore list (Title, Message, Caption, URLs, etc. are excluded and do not block Done).

---

## Summary

| File | Total | Missing | Notes |
|------|-------|--------|------|
""")
    for f in sorted(RUT_DIR.glob("*.rut")):
        if f.name in STATUS_EXCLUDED:
            continue
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
        if f.name in STATUS_EXCLUDED:
            continue
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
        raw_lines.append(f"=== {f.name} ({len(missing_pairs)} missing) ===\n")
        for k, v in missing_pairs:
            raw_lines.append(f"  {k}\n    {v.replace(chr(10), ' ')}\n")
        raw_lines.append("\n")
    out_path.write_text("".join(blocks), encoding="utf-8")
    raw_path.write_text("".join(raw_lines), encoding="utf-8")
    print("Written:", out_path, "and", raw_path)

if __name__ == '__main__':
    main()
