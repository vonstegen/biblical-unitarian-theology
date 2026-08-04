# biblical-unitarian-theology

A biblical theology research project on the Debt-Debtor thesis of redemption,
argued from a Biblical Unitarian christological perspective.

## Status

**In progress.** This repository is a working archive, not a published manuscript.

- `00_Master_Thesis.md` — frozen constitution (currently a stub; awaiting Version 1.0 freeze)
- `01_Architecture_and_Outline.md` — proposed spine (5 parts, 16 chapters)
- `02_Biblical_Research_Map.md` — passage list grouped by biblical division
- `03_Working_Research_Notes.md` — plain research notes / hypotheses (see INTRO.md §I.5 for the `[E]/[I-band]/[H-band]` tagging convention used in chapter drafts)
- `04_Review_and_Recommendations.md` — prior workspace review (Grok, 2026-08-04)
- `source-notebook.md` — raw chat transcript (archive; not authoritative)
- `prompts/` — AI agent personas used during drafting

See `04_Review_and_Recommendations.md` for the prior review and the recommended
next steps (freeze Version 1.0, then draft Romans 5:12–21 as the first substantive
chapter).

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