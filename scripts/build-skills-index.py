#!/usr/bin/env python3
"""Build skills/CATALOG.json from all SKILL.md frontmatter for Jev-ready discovery."""
from __future__ import annotations
import json, re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SKILLS = ROOT / "skills"
OUT = SKILLS / "CATALOG.json"

fm_re = re.compile(r"^---\s*\n(.*?)\n---\s*\n", re.S)

def parse_fm(text: str) -> dict:
    m = fm_re.match(text)
    if not m:
        return {}
    data = {}
    for line in m.group(1).splitlines():
        if ":" not in line:
            continue
        k, v = line.split(":", 1)
        data[k.strip()] = v.strip().strip('"').strip("'")
    return data

entries = []
for path in sorted(SKILLS.rglob("SKILL.md")):
    fm = parse_fm(path.read_text(encoding="utf-8", errors="replace"))
    rel = str(path.parent.relative_to(SKILLS))
    entries.append({
        "id": fm.get("name") or path.parent.name,
        "description": fm.get("description") or "",
        "path": rel,
        "source": (
            "ctv-zevari" if rel.startswith("ctv-zevari") else
            "john-peslar" if "john-peslar" in rel else
            "typesafe" if "typesafe" in rel else
            "zevari-legacy" if rel.startswith("zevari") else
            "meta" if rel.startswith("meta") else
            "other"
        ),
    })

OUT.write_text(json.dumps({"version": 1, "count": len(entries), "skills": entries}, indent=2) + "\n")
print(f"Wrote {OUT} ({len(entries)} skills)\n")
