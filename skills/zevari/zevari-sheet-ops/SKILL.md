---
name: zevari-sheet-ops
description: Use when reading or updating the CTV BDR Zevari Google Sheet — schema, status vocabulary, update rules, and ops priority order.
---

# Zevari sheet ops

## Sheet

- Title: `CTV BDR Zevari BDR girlies`
- Tab: Sheet1
- URL: https://docs.google.com/spreadsheets/d/1JRn-hRt9LIyFoLuwwK5sX1C95mDd2elPVSedAiIq6IE/edit
- ID: `1JRn-hRt9LIyFoLuwwK5sX1C95mDd2elPVSedAiIq6IE`

## Columns (A–J)

| Col | Header |
| --- | --- |
| A | Name |
| B | BDR |
| C | Set Up |
| D | Verified |
| E | Linkedin URL |
| F | Zevari Active |
| G | BDR Cost Per Week |
| H | BDR Cost Per Month |
| I | Zevari Seat Cost |
| J | Total |

## Status vocabulary

- **BDR**: `Yes` | `Pending` | `DQ`
- **Set Up**: default `Not Yet` until fully connected
- **Verified**: `Yes` when verification is done
- Empty LinkedIn / cost / Active fields mean **not filled yet** — do not invent values

## Priority order

1. Rows with **BDR = Yes**
2. Drive them through **Set Up → Verified → Linkedin URL → Zevari Active**
3. Then fill cost columns (week, month, seat, Total)
4. Only after Yes-trio throughput, triage **Pending** and **DQ** (watch DQ with upside, e.g. referrals)

## Write rules

- Only write statuses/costs Joseph or the sheet confirms.
- If Drive/MCP cannot edit cells, use the box browser on the share link or ask Joseph.
