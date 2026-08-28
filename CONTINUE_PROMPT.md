# Project Continuation Prompt — Debt-Debtor Thesis of Redemption

## Project Path
`/Users/andrewjochl/Theology/biblical-unitarian-theology/`

## Project Context
A Bible-only biblical theology of redemption through the willing, obedient human representative (the last Adam). The manuscript has 17 chapters and 3 appendices, all drafted. The Introduction is finalized. The efficiency and clarity pass is complete for Chapters 1–15. The uniform tagging audit is complete. The Bible-only compliance audit is **closed** (2026-08-07, re-verified by independent grep 2026-08-28). The Chapter 10 review (`07_Ch10_Review.md`, 20-item fix list) is **reconciled** (2026-08-28): citation rename, band downgrades, combination argument, cross-links, reference-list trim. All work is committed and pushed; the working tree is clean.

## Current State (Honest)
- **Completed**: Introduction finalized; tagging audit complete; efficiency and clarity pass complete for Chapters 1–15; Chapters 16–17 and Appendices B–D drafted with acceptance checks, cross-links, and verification logs; Bible-only audit closed and re-verified; Ch 10 review reconciled; paired A11/A15 acceptance gates passed; `PRESENTATION.md`, `TAGGING_STYLE_GUIDE.md`, and the LaTeX build pipeline in place; outreach email + project summary drafted for Dr. Dustin R. Smith (`outreach/`).
- **Open (do next, in order)**:
  1. **Final acceptance of remaining chapters and appendices**: Ch 1–10, Ch 12–14, Ch 16–17, Appendices B–D are marked "Ready for acceptance" in `WORKFLOW_CHECKLIST.md`; run the final acceptance pass against each chapter's acceptance criteria and flip the status table.
  2. **Resolve the "kind of being" stragglers**: Ch 6 (8), Ch 10 (0 remaining after reconciliation — verify), Ch 11 (3, introduced in uncommitted edits), Ch 2/5/7/17/App C/D (1–2 each). The template is banned by policy; sweep or amend the rule in the style guide.
  3. **Band the bare `[I]` vocabulary tags** in Ch 15 §15.7, Ch 17, Appendix C (or codify a vocabulary-term exception in `TAGGING_STYLE_GUIDE.md`).
  4. **Cross-link consistency check**: verify Appendix D covers every load-bearing citation across all chapters (known gap: 1 Samuel and Ezekiel sections may be missing).
  5. **Rebuild the PDF** (`latex/build.sh`) after final acceptance so the draft reflects the current text.

## Where to Find Things
- **Workflow checklist (source of truth)**: `WORKFLOW_CHECKLIST.md` (project root, v1.7)
- **Outline and acceptance criteria**: `01_Architecture_and_Outline.md` (v1.4)
- **Front matter**: `00_Master_Thesis.md`, `INTRO.md`, `02_Biblical_Research_Map.md`, `03_Working_Research_Notes.md`, `04_Review_and_Recommendations.md`, `05_Research_and_Writing_Checklist.md` (stale, archival), `06_Translation_Bias_Documentation.md`, `07_Ch07_Review.md`, `07_Ch09_Review.md`, `07_Ch10_Review.md`, `07_PhD_Roadmap.md`
- **Chapters 1–17**: `chapters/Chapter_01_Character_of_God.md` through `chapters/Chapter_17_Conclusions.md`
- **Appendices B–D**: `chapters/Appendix_B_Alternative_Exegetical_Readings_of_Hard_Texts.md`, `chapters/Appendix_C_Glossary.md`, `chapters/Appendix_D_Full_Biblical_Research_Map.md`
- **Presentation version**: `PRESENTATION.md` (keep in sync after final acceptance)
- **Tagging rules**: `TAGGING_STYLE_GUIDE.md`
- **Outreach**: `outreach/Email_To_Dr_Dustin_Smith.md`, `outreach/Project_Summary_For_Dr_Smith.md`
- **Build pipeline**: `latex/build.sh` (outputs versioned PDFs to `drafts/`, gitignored)

## Key Constraints (Non-Negotiable)
- **Bible-only**: No secondary sources (commentaries, creeds, church fathers, modern scholarship) may be used as evidence for the project's theological claims. Secondary sources may be mentioned ONLY to identify or dismiss competing positions, never as evidence for the project's own claims.
- **Tone**: Clear, readable, plain prose. No "kind of being" template. No excessive italics or repetition. Tags: `[E]` for explicit text; `[I-band]` for strong implications; `[H-band]` for hypotheses. Every `[I]`/`[H]` claim must have an evidence sketch with both "for" and "against" points and a band justification.
- **Priority**: Clear readable logic and prose > strict word count. Word count is secondary.

## Project Values
- **Verify tool calls actually landed** before claiming completion. Do not declare work complete that was not performed. The WORKFLOW_CHECKLIST.md is the single source of truth for project status; if the file on disk does not match your summary, your summary is wrong.
- **When stuck in an edit loop** (e.g., the WORKFLOW_CHECKLIST.md stale-hash loop), read the file fresh with a `read` tool call to get the current tag, then retry the edit with the new tag.
- **Commit early and push.** The project lost three weeks of work to an uncommitted working tree once (2026-08-06 to 2026-08-28). Do not let the tree accumulate uncommitted edits across sessions.

## First Action on Session Start
1. Read `WORKFLOW_CHECKLIST.md` to get the current state of the project (this is the single source of truth).
2. Check what is still open in the todo list and what was completed in the previous session.
3. Continue from the next open task in priority order: final acceptance of the remaining chapters and appendices, then the kind-of-being sweep, then the cross-link consistency check, then the PDF rebuild.
