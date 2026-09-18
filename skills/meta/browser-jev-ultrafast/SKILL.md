---
name: browser-jev-ultrafast
description: Optional browser automation with browser-use/jev-ultrafast (TypeSafe Jev picks DOM actions). Use only for live browser tasks AFTER Skillbox recommend_skills has loaded the right playbook. Not a skill recommender.
---

# Browser Jev Ultrafast (optional)

Repo: https://github.com/browser-use/jev-ultrafast

## What it is
A fast browser agent: TypeSafe Jev chooses operation + element from a numbered DOM table; a small LLM only writes text for `TYPE_TEXT`.

## What it is not
It does **not** replace Skillbox `recommend_skills`. Skill retrieval stays in Skillbox (Jev recommendations setting).

## When to use
- Need to drive a real browser after the CTV/Zevari (or other) skill is loaded
- Have `TYPESAFE_API_KEY` + text-model key configured locally

## When not to use
- Picking which playbook/skill to follow
- Sheet ops, pricing, or offer logic (use Skillbox skills)
