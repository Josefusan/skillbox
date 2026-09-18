# CTV Skillbox architecture — skills ≠ procedural memory

## Goal

Query the optimal skill for the task with **System-1** ranking (Skillbox → Jev), instead of walking procedural memory.

## Stack

| Piece | Role |
|---|---|
| [kitze/skillbox](https://github.com/kitze/skillbox) (this fork) | Versioned skills library, MCP, import/export |
| Skillbox **Jev recommendations** | TypeSafe System One or Vercel AI Gateway — `recommend_skills` |
| [typesafe-ai/skills](https://github.com/typesafe-ai/skills) | How to build TypeSafe/Jev decision workflows |
| [Josefusan/john-peslar-ai-skills](https://github.com/Josefusan/john-peslar-ai-skills) | Sales/offer/voice skill pack (vendored under `skills/external/john-peslar`) |
| CTV Zevari skills | `skills/ctv-zevari/*` — VAR loop, ops sheet, offer stack |
| [browser-use/jev-ultrafast](https://github.com/browser-use/jev-ultrafast) | Optional browser automation (not skill retrieval) |

## Runtime flow

```
task → skillbox-router
     → search_skills / recommend_skills (Jev)
     → load_skill @ revision
     → execute
     → report_skill_use
```

## Import into a running Skillbox

```sh
# After docker setup + admin login
bun scripts/import.ts ./skills/ctv-zevari/ctv-zevari-var-loop
bun scripts/import.ts ./skills/ctv-zevari/bdr-ops-sheet
bun scripts/import.ts ./skills/ctv-zevari/ctv-offer-stack
bun scripts/import.ts ./skills/meta/skillbox-router
bun scripts/import.ts ./skills/external/typesafe-ai

# Sync + import john-peslar (and optional full mirror)
bash scripts/sync-external-skills.sh
```

Enable Jev: **Settings → Jev recommendations → TypeSafe AI** (paste your TypeSafe key). Then:

```sh
node cli/skillbox.mjs recommend "onboard BDR Val and mark Zevari Active"
```

## Memory policy (agents)

Write to shared/agent memory **only**:
- Pointer: skills are in this Skillbox; query with recommend_skills
- Episodic dated facts (roster snapshot, PR URLs)
- Never full skill markdown
