---
name: ctv-zevari-var-loop
description: Operating model for CTV, LLC's Zevari VAR + LinkedIn broker + managed BDR business. Use whenever a task touches Zevari, BDR recruiting/onboarding, LinkedIn outreach for CTV, the sales-call flow, or the feedback loop between clients and BDRs. Read this first; it links to the ops-sheet and offer-stack skills.
---

# CTV, LLC — Zevari VAR + LinkedIn Broker + Managed BDR Loop

CTV, LLC (Clark Technology Ventures) is a commission-only reseller (VAR) of zevari.ai.
Joseph is the closer. BDRs run LinkedIn outreach through Zevari; the leads they generate
book calls with Joseph; Joseph closes them on Zevari and attaches CTV's own add-ons.
More clients funds more BDRs, which produces more activity, which produces more clients.

Source of truth: the Excalidraw board "CTV, LLC — Zevari VAR + LinkedIn Broker + Managed BDR Loop".
If this file and the board disagree, the board wins — tell Joseph so it can be reconciled.

## The four-step loop

| Step | What happens | Owner | Output |
|---|---|---|---|
| 1. Recruit BDRs | Find and sign BDRs (the current recruiting pool is largely female) | Joseph | New row in the ops sheet, `BDR = Pending` |
| 2. Set Up | Collect LinkedIn URL → mark Verified → activate Zevari → confirm LinkedIn Premium | Zevari Chief of Staff | `Set Up`, `Verified`, `Zevari Active` all checked |
| 3. Outreach | BDR runs LinkedIn outreach via Zevari + turnwards.com + LinkedIn Premium | BDR | Leads → call booked with Joseph |
| 4. Close | Joseph closes the Zevari deal (VAR cut) and attaches add-ons | Joseph | Signed client; `Offer` column set (Rental / Managed) |

Step 4 feeds back into step 1: every close funds and justifies recruiting more BDRs.

Feedback loop, verbatim from the board:
more clients → more managed BDRs + rented accounts → more Zevari activity → more closes → more BDRs recruited.

## Roles

- **Joseph / CTV, LLC** — closer, VAR, LinkedIn broker. Takes every sales call. Approves anything that touches a client or a BDR's pay.
- **BDRs** — do LinkedIn outreach via Zevari. Each BDR either rents out their account (Rental) or has CTV run it for a client (Managed).
- **Zevari Chief of Staff** — owns the ops sheet and Set Up throughput. Route sheet questions and onboarding-status questions here.
- **Tool stack** — Zevari (outbound), turnwards.com, LinkedIn Premium. No other tools are part of this loop unless Joseph adds them.

## How Grokbot should behave inside this loop

1. **Identify which step a request belongs to** (Recruit / Set Up / Outreach / Close) and use the matching skill:
   - Sheet edits, onboarding status, "who's verified?" → `bdr-ops-sheet`
   - Pricing, what to pitch, margin, call prep → `ctv-offer-stack`
2. **Never promise pricing or pay that isn't in `ctv-offer-stack`.** Those ranges are the only approved numbers.
3. **Never contact a client, prospect, or BDR about money, account access, or contract terms without Joseph's approval.** Draft it; don't send it.
4. **Protect the bottleneck.** Set Up throughput (step 2) is the constraint the Chief of Staff owns. When asked "what should we work on," check the sheet for BDRs stuck between `BDR = Yes` and `Zevari Active` before suggesting anything else.
5. **Keep the loop honest.** When reporting status, always report the funnel in order: BDRs recruited → set up → active → leads → calls booked → closes. Don't skip stages.

## Quick reference

- Company: CTV, LLC (Clark Technology Ventures)
- Product resold: zevari.ai (commission-only VAR)
- Outreach stack: Zevari + turnwards.com + LinkedIn Premium
- Ops sheet: "CTV BDR Zevari BDR girlies" (owned by the Zevari Chief of Staff)
- Related skills: `bdr-ops-sheet`, `ctv-offer-stack`
