#!/usr/bin/env python3
"""
Diff .rut files between two git revisions (e.g. before/after a merge).
Handles UTF-16-LE encoded blobs so we get a real text diff and can extract
changed keys and new Russian values for STEP_SYNC_AND_ANALYZE_INCOMING.

This is the canonical script for this step. Use it as-is; do not recreate
or reimplement. Update only when the process/step changes, the script fails,
or the .rut format differs. See Documentation/STEP_SYNC_AND_ANALYZE_INCOMING.md.

Usage:
  python scripts/diff_rut_merge.py [MERGE_COMMIT]
  MERGE_COMMIT defaults to the last merge into current branch (git log --merges -1 --first-parent).

Output: JSON to stdout with structure:
  { "merge": "hash", "files": { "rut/File.rut": [ {"key": "[Section]Key", "new_value": "Russian"} ] } }
Or use --markdown to print a table for _INCOMING_ANALYSIS.md.
Use -o FILE to write JSON to file (recommended on Windows to avoid console encoding issues).
Each run overwrites the output file; it is not appended (one merge = one full result).
"""

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

if sys.stdout.encoding is None or sys.stdout.encoding.lower().startswith("cp"):
    try:
        sys.stdout.reconfigure(encoding="utf-8")
    except Exception:
        pass

REPO_ROOT = Path(__file__).resolve().parent.parent


def get_merge_commit(merge_arg: str | None) -> str:
    if merge_arg:
        return merge_arg.strip()
    r = subprocess.run(
        ["git", "log", "--merges", "-1", "--first-parent", "--format=%H"],
        cwd=REPO_ROOT,
        capture_output=True,
        text=True,
    )
    if r.returncode != 0 or not r.stdout.strip():
        print("Could not get last merge commit.", file=sys.stderr)
        sys.exit(1)
    return r.stdout.strip()


def get_changed_rut_files(merge: str) -> list[str]:
    r = subprocess.run(
        ["git", "diff", "--name-only", f"{merge}^1..{merge}", "--", "rut/"],
        cwd=REPO_ROOT,
        capture_output=True,
        text=True,
    )
    if r.returncode != 0:
        return []
    return [p for p in r.stdout.strip().splitlines() if p.endswith(".rut")]


def get_blob_bytes(rev: str, path: str) -> bytes | None:
    r = subprocess.run(
        ["git", "show", f"{rev}:{path}"],
        cwd=REPO_ROOT,
        capture_output=True,
    )
    if r.returncode != 0:
        return None
    return r.stdout


def decode_rut_content(raw: bytes) -> str | None:
    if not raw:
        return ""
    # UTF-16 LE BOM
    if raw.startswith(b"\xff\xfe"):
        return raw[2:].decode("utf-16-le", errors="replace")
    # UTF-16 BE BOM
    if raw.startswith(b"\xfe\xff"):
        return raw[2:].decode("utf-16-be", errors="replace")
    # Try UTF-16 LE (common for Windows tools) then UTF-8
    try:
        return raw.decode("utf-16-le", errors="strict")
    except (UnicodeDecodeError, LookupError):
        pass
    try:
        return raw.decode("utf-8", errors="strict")
    except UnicodeDecodeError:
        return raw.decode("utf-8", errors="replace")


def parse_rut_key_values(text: str) -> dict[str, str]:
    """Parse .rut content into (full_key -> value). full_key = [Section]Key."""
    result = {}
    current_section = ""
    for line in text.splitlines():
        line = line.rstrip("\r\n")
        section_match = re.match(r"^\[([^\]]+)\]\s*$", line)
        if section_match:
            current_section = section_match.group(1)
            continue
        # Key="Value" (value may contain " if escaped or we keep simple)
        kv = re.match(r'^([A-Za-z0-9_\[\]]+)\s*=\s*"(.*)"\s*$', line)
        if kv and current_section:
            key_name = kv.group(1)
            value = kv.group(2)
            # Unescape if needed (e.g. \" in value)
            if '\\"' in value:
                value = value.replace('\\"', '"')
            full_key = f"[{current_section}]{key_name}"
            result[full_key] = value
    return result


def diff_rut_file(merge: str, path: str) -> list[dict]:
    """Return list of {key, old_value, new_value} for changed/added keys."""
    old_raw = get_blob_bytes(f"{merge}^1", path)
    new_raw = get_blob_bytes(merge, path)
    old_text = decode_rut_content(old_raw) if old_raw is not None else ""
    new_text = decode_rut_content(new_raw) if new_raw is not None else ""
    old_kv = parse_rut_key_values(old_text)
    new_kv = parse_rut_key_values(new_text)
    out = []
    for full_key, new_val in new_kv.items():
        old_val = old_kv.get(full_key)
        if old_val != new_val:
            out.append({"key": full_key, "old_value": old_val, "new_value": new_val})
    # Keys only in old (removed) — optional to report
    for full_key in old_kv:
        if full_key not in new_kv:
            out.append({"key": full_key, "old_value": old_kv[full_key], "new_value": None})
    return out


def main() -> None:
    ap = argparse.ArgumentParser(description="Diff .rut files across a merge (UTF-16 aware).")
    ap.add_argument("merge", nargs="?", help="Merge commit hash (default: last merge)")
    ap.add_argument("--markdown", action="store_true", help="Print Markdown table for _INCOMING_ANALYSIS")
    ap.add_argument("--json", action="store_true", help="Print JSON (default if no --markdown)")
    ap.add_argument("-o", "--output", metavar="FILE", help="Write JSON to file (UTF-8) instead of stdout")
    args = ap.parse_args()

    merge = get_merge_commit(args.merge)
    files = get_changed_rut_files(merge)
    if not files:
        if args.markdown:
            print("No .rut files changed in this merge.")
        else:
            print(json.dumps({"merge": merge, "files": {}}, indent=2))
        return

    result = {"merge": merge, "files": {}}
    for path in sorted(files):
        changes = diff_rut_file(merge, path)
        result["files"][path] = [
            {"key": c["key"], "new_value": c["new_value"]} for c in changes
        ]
        if args.markdown:
            if changes:
                print(f"\n### {path}\n")
                print("| Key | New Russian |")
                print("| --- | --- |")
                for c in changes:
                    russian = (c.get("new_value") or "").replace("|", "\\|")
                    print(f"| {c['key']} | {russian} |")
            else:
                print(f"\n### {path}\n*(no key-level changes)*\n")

    json_str = json.dumps(result, ensure_ascii=False, indent=2)
    if args.output:
        Path(args.output).write_text(json_str, encoding="utf-8")
        print(f"Wrote {len(files)} files, {sum(len(v) for v in result['files'].values())} changes to {args.output}", file=sys.stderr)
    elif args.markdown:
        print("\n---")
        print(f"Merge: {merge} | Changed files: {len(files)}")
    else:
        print(json_str)


if __name__ == "__main__":
    main()
