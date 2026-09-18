#!/usr/bin/env bash
# Sync john-peslar + typesafe skill packages into skills/external for Skillbox import.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VENDOR="$ROOT/vendor"
OUT_JP="$ROOT/skills/external/john-peslar"
OUT_TS="$ROOT/skills/external/typesafe-ai"
mkdir -p "$VENDOR" "$OUT_JP" "$OUT_TS"

clone_or_pull() {
  local url="$1" dir="$2"
  if [[ -d "$dir/.git" ]]; then
    git -C "$dir" pull --ff-only
  else
    git clone --depth 1 "$url" "$dir"
  fi
}

clone_or_pull https://github.com/Josefusan/john-peslar-ai-skills.git "$VENDOR/john-peslar-ai-skills"
clone_or_pull https://github.com/typesafe-ai/skills.git "$VENDOR/typesafe-ai-skills"

# john-peslar: each top-level dir with SKILL.md
find "$VENDOR/john-peslar-ai-skills" -mindepth 2 -maxdepth 2 -name SKILL.md | while read -r f; do
  name="$(basename "$(dirname "$f")")"
  case "$name" in
    .agents|.claude|.claude-plugin|.cursor|.github|docs|plugins|scripts) continue ;;
  esac
  mkdir -p "$OUT_JP/$name"
  cp "$f" "$OUT_JP/$name/SKILL.md"
done

# typesafe
cp "$VENDOR/typesafe-ai-skills/skills/typesafe-ai/SKILL.md" "$OUT_TS/SKILL.md"
[[ -f "$VENDOR/typesafe-ai-skills/skills/typesafe-ai/LICENSE" ]] && \
  cp "$VENDOR/typesafe-ai-skills/skills/typesafe-ai/LICENSE" "$OUT_TS/LICENSE"

# Rebuild catalog index
python3 "$ROOT/scripts/build-skills-index.py"

echo "Synced. Import folders under skills/ with bun scripts/import.ts <dir>"
