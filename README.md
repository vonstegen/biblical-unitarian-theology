# biblical-unitarian-theology

A biblical theology research project on the Debt-Debtor thesis of redemption,
argued from a Biblical Unitarian christological perspective.

## Status

**In progress.** This repository is a working archive, not a published manuscript.

- `00_Master_Thesis.md` — frozen constitution (working thesis, 10 research questions)
- `01_Architecture_and_Outline.md` — outline v1.3 (17 chapters + 3 appendices)
- `02_Biblical_Research_Map.md` — passage list grouped by biblical division
- `03_Working_Research_Notes.md` — plain research notes / hypotheses (see INTRO.md §I.5 for the `[E]/[I-band]/[H-band]` tagging convention used in chapter drafts)
- `04_Review_and_Recommendations.md` — prior workspace review (Grok, 2026-08-04; historical archive)
- `INTRO.md` — manuscript Introduction (first draft)
- `06_Translation_Bias_Documentation.md` — sourced bias analysis for the citation set
- `07_PhD_Roadmap.md` — operational plan for moving the project from current draft to PhD submission, including AI-collaboration disclosure
- `chapters/` — drafted chapters (Chapters 1–17 and Appendices B–D)
- `source-notebook.md` — raw chat transcript (archive; not authoritative)
- `prompts/` — AI agent personas used during drafting

The canonical current policy and status live in `WORKFLOW_CHECKLIST.md` and
`01_Architecture_and_Outline.md`: Chapter 11 is the prior correspondence
foundation, and Chapter 15 is the gated one-for-many mechanism.

## Project thesis (working)

> Humanity incurred a debt to God through Adam's disobedience. God established
> death as the penalty for sin. Redemption required a corresponding human
> representative whose willing obedience culminated in sacrificial death.
> Jesus Christ fulfills this role as the last Adam.

## File naming convention

`NN_*.md` files are core documents (constitution, outline, research map, notes).
The numeric prefix is structural, not a chapter number.

## Regenerating `.docx` exports

If you need a Word version of any document for external review or submission,
install [pandoc](https://pandoc.org/) and run:

```sh
pandoc 00_Master_Thesis.md -o 00_Master_Thesis.docx
```

`.docx` files are intentionally not tracked in this repository; markdown is the
canonical form.