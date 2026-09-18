# Grokbot skills — CTV Zevari VAR loop

Three skills generated from the Excalidraw board
"CTV, LLC — Zevari VAR + LinkedIn Broker + Managed BDR Loop" (2026-09-18).

```
grokbot-skills/
├── ctv-zevari-var-loop/SKILL.md   # the business model, 4-step loop, roles, how Grokbot routes work
├── bdr-ops-sheet/SKILL.md         # sheet columns, priority order, procedures, funnel reporting
└── ctv-offer-stack/SKILL.md       # offers A/B/C, approved pricing, margin math, call prep
```

Each folder follows the standard Agent Skills layout (`SKILL.md` with `name` + `description`
frontmatter, then instructions). Drop the three folders into Grokbot's skills directory as-is.

## Why three instead of one

They trigger on different work: the loop skill is context, the ops-sheet skill is for
recruiting/onboarding tasks, and the offer-stack skill is for sales and money questions.
Keeping them separate means a sheet update doesn't load pricing rules and vice versa.
If your harness prefers one skill, merge the two smaller ones into `ctv-zevari-var-loop`
as `references/ops-sheet.md` and `references/offer-stack.md`.

## What's from the board vs. added

Everything numerical (prices, BDR pay, margin ranges), every column name, the priority order,
the roles, and the tool stack are verbatim from the board.

Added as operating rules (edit if they don't match how you run it):

- Grokbot proposes sheet edits; the Chief of Staff / Joseph confirms.
- `BDR`, `Offer`, and `Cost / mo` are human-confirmed columns.
- No quotes outside the approved ranges; no VAR commission % stated; nothing sent to a client
  without Joseph.
- Upsell order A → C → B (Rental before Managed).
- "Managed" BDR pay is per rep — the board doesn't give a figure, so none is stated.
