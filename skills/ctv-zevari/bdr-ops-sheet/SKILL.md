---
name: bdr-ops-sheet
description: How to read, update, and report on the CTV BDR ops sheet ("CTV BDR Zevari BDR girlies") — columns, allowed values, the priority order for filling them in, and status/bottleneck reporting. Use when adding a BDR, updating onboarding status, checking who is verified or active on Zevari, or answering "where are we with the BDRs".
---

# CTV BDR Ops Sheet

The ops sheet is the single record of every BDR in the CTV loop. It is **owned by the Zevari
Chief of Staff**; Grokbot reads it freely and proposes edits, but the Chief of Staff (or Joseph)
confirms anything that changes a BDR's status or cost.

Sheet name on the board: **"Ops sheet — CTV BDR Zevari BDR girlies"**.

## Columns (in sheet order)

| Column | Type | Allowed values | Meaning |
|---|---|---|---|
| Name | text | — | BDR's name |
| BDR | enum | `Yes` / `Pending` / `DQ` | Recruiting decision. `Pending` = in conversation, `Yes` = signed on, `DQ` = disqualified |
| Set Up | checkbox | ☐ / ☑ | Onboarding started and account details collected |
| Verified | checkbox | ☐ / ☑ | Identity / account verified by the Chief of Staff |
| LinkedIn | URL | linkedin.com/in/… | The BDR's LinkedIn profile URL |
| Zevari Active | checkbox | ☐ / ☑ | BDR is live on Zevari and running outreach |
| Offer | enum | `Rental` / `Managed` | Which CTV offer this BDR's account is used for (see `ctv-offer-stack`) |
| Cost / mo | currency | USD | What CTV pays this BDR per month |

## Priority order (fill columns in this sequence)

From the board: **BDR=Yes → Set Up → Verified → LinkedIn URL → Zevari Active → Offer (rental / managed) → costs**

Do not fill a later column before the earlier ones are done. Concretely:

1. Nobody gets `Set Up` until `BDR = Yes`.
2. Nobody gets `Verified` until `Set Up` is checked.
3. `LinkedIn` URL is captured during verification.
4. `Zevari Active` only after Verified + LinkedIn URL are present.
5. `Offer` is assigned when the BDR is matched to a client deal (Rental or Managed).
6. `Cost / mo` is set last, once the Offer type is known (Rental pays $200–400/mo; Managed pay is set per rep — see `ctv-offer-stack`).

## Lifecycle of a row

```
Recruited ──► BDR=Pending ──► BDR=Yes ──► Set Up ☑ ──► Verified ☑ + LinkedIn URL
          └─► BDR=DQ (stop)                                     │
                                                                ▼
                              Cost/mo set ◄── Offer set ◄── Zevari Active ☑
```

A row is "fully onboarded" when BDR=Yes, Set Up, Verified, LinkedIn, and Zevari Active are all filled.
A row is "monetized" when Offer and Cost / mo are also filled.

## Procedures

### Add a new BDR
1. Confirm the person isn't already in the sheet (match on Name or LinkedIn URL).
2. Create the row with `Name` and `BDR = Pending`. Leave every other column empty.
3. If Joseph has already said yes, set `BDR = Yes`.
4. Tell the Chief of Staff a new row is waiting for Set Up.

### Update onboarding status
1. Read the row and find the first empty column in priority order.
2. Only advance that column. If asked to skip ahead (e.g., mark Zevari Active while Verified is empty), stop and flag it.
3. Never set `Offer` or `Cost / mo` without Joseph's explicit approval — these are money decisions.

### Disqualify a BDR
1. Set `BDR = DQ`. Do not delete the row.
2. Leave other columns as they were (history matters).

### Status report ("where are we with the BDRs?")
Report as a funnel, in this order, with counts:

- Recruited (all rows, excluding DQ)
- BDR = Yes
- Set Up ☑
- Verified ☑
- Zevari Active ☑
- Offer assigned (split Rental vs Managed)
- Total Cost / mo across active rows

Then name the **bottleneck**: the stage with the largest drop-off. Set Up throughput is the
expected constraint; if that's where rows are piling up, say so and tag the Chief of Staff.

### Find who needs attention
List rows where `BDR = Yes` but `Zevari Active` is unchecked, sorted by how long they've been
waiting (oldest first). These are the BDRs blocking revenue.

## Guardrails

- Grokbot does not own the sheet. Propose edits; the Chief of Staff confirms.
- Never change `BDR`, `Offer`, or `Cost / mo` without a human confirming.
- Never share a BDR's LinkedIn URL, cost, or status outside CTV.
- Keep the column set exactly as above — don't add columns without Joseph's sign-off.
