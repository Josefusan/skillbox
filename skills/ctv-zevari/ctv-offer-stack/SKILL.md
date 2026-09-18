---
name: ctv-offer-stack
description: The three offers Joseph sells on a CTV sales call (Zevari VAR core, Managed BDR service, LinkedIn account rental) with approved pricing, BDR pay, and margin math. Use for sales-call prep, quoting, upsell suggestions, margin/revenue calculations, or any question about what CTV charges or pays.
---

# CTV Offer Stack — what Joseph sells on the call

Every sales call has one core offer and two optional add-ons. Joseph closes the core first,
then attaches add-ons. These are the **only approved prices**; do not quote anything else.

## The three offers

### A · Zevari VAR (core)
- CTV is a commission-only reseller of zevari.ai.
- The client buys Zevari seats; CTV earns a cut of the Zevari deal size.
- No CTV invoice for this piece — revenue comes from Zevari as VAR commission.
- Always sold first. Add-ons only make sense once the client is on Zevari.

### B · Managed BDR service (add-on)
- CTV runs a BDR's LinkedIn account **and** manages their Zevari for the client.
- Client pays **$2,000–3,000 / month per BDR rep**.
- CTV pays the BDR out of that; margin = fee minus BDR pay.
- Pitch when the client wants outreach done for them and has no one to operate Zevari.

### C · LinkedIn account rental (broker)
- CTV rents a BDR's LinkedIn account to the client; the client runs the outreach.
- BDR is paid **$200–400 / month**.
- Client is charged **$800–1,000 / month** for the account alone.
- Pitch when the client already has an operator and just needs more LinkedIn capacity.

## Margin math (per BDR account)

| Offer | Client pays / mo | BDR paid / mo | CTV net / mo |
|---|---|---|---|
| Rental | $800–1,000 | $200–400 | **≈ $500–700** |
| Managed | $2,000–3,000 | set per rep | **≈ $2–3K minus BDR pay** |
| VAR commission | — | — | cut of every Zevari seat sold, on top of either |

When asked to estimate revenue, compute each active BDR row from the ops sheet
(`Offer` × `Cost / mo`, see `bdr-ops-sheet`), sum the net, and note that VAR commission is
additional and depends on Zevari deal size — don't invent a commission percentage.

Worked example (for format, not a quote):
5 rental accounts at $900 with BDRs paid $300 → 5 × $600 = $3,000/mo net.
2 managed reps at $2,500 with BDRs paid $1,000 → 2 × $1,500 = $3,000/mo net.
Total ≈ $6,000/mo net + VAR commission on the Zevari seats those 7 clients bought.

## Call-prep checklist

Before a booked call, prepare a one-page brief for Joseph:

1. **Who booked it** — which BDR generated the lead, from which client/campaign.
2. **Core** — how many Zevari seats the prospect likely needs (team size, outbound volume).
3. **Add-on fit** — Managed if they have no operator; Rental if they have one but need accounts; both if they're scaling.
4. **Capacity** — how many BDR rows in the ops sheet are `Zevari Active` and not yet assigned an `Offer`. Don't let Joseph sell capacity that doesn't exist.
5. **Quote** — pull numbers from the ranges above only.

## Upsell rules

- Sell in order: **A → C → B**. Rental is the easy add-on; Managed is the bigger commitment.
- A client on Rental who starts asking "can you just run it for us?" is a Managed upsell.
- Every add-on requires a BDR account behind it. Check `bdr-ops-sheet` capacity before proposing.

## Guardrails

- Never quote outside the approved ranges. If a prospect wants a discount, the answer is "Joseph decides."
- Never state a VAR commission percentage — it depends on the Zevari deal and Joseph confirms it.
- Never discuss what a specific BDR is paid with a client.
- Never send a proposal, quote, or contract; draft it for Joseph to send.
- Pricing changes only when Joseph updates this file (and the Excalidraw board).
