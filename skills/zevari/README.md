# Zevari skills (Skillbox packages)

Importable skill packages for Joseph / Clark Technology Ventures’ **zevari.ai** VAR + managed BDR operations.

## Packages

| Folder | Skill name | Use when |
| --- | --- | --- |
| [`zevari-playbook/`](zevari-playbook/) | `zevari-playbook` | Explaining or operating the full VAR → close → managed-BDR feedback loop |
| [`zevari-sheet-ops/`](zevari-sheet-ops/) | `zevari-sheet-ops` | Reading/updating the Google Sheet schema, statuses, or priority order |
| [`zevari-bdr-pipeline/`](zevari-bdr-pipeline/) | `zevari-bdr-pipeline` | Moving BDRs through recruit → Set Up → Active (incl. DQ / referrals) |
| [`zevari-cos-mandate/`](zevari-cos-mandate/) | `zevari-cos-mandate` | Clarifying CoS ownership and never-invent rules |
| [`zevari-episodic-2026-09-17/`](zevari-episodic-2026-09-17/) | `zevari-episodic-2026-09-17` | Point-in-time roster snapshot from 2026-09-17 |

## How to import into Skillbox

With a running Skillbox instance (see root README / `docs/self-hosting.md`):

1. Sign in as owner with `SKILLBOX_ADMIN_TOKEN`.
2. Import each package folder that contains a `SKILL.md` (native folder import in the UI, or CLI publish/import flows documented upstream).
3. Grant the packages to the **Zevari Chief of Staff** client profile.

Do **not** put credentials, tokens, or session data inside these skills.

## Sheet

https://docs.google.com/spreadsheets/d/1JRn-hRt9LIyFoLuwwK5sX1C95mDd2elPVSedAiIq6IE/edit
