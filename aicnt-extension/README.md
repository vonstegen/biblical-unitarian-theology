# AICNT Extension Project

Extending the AICNT (AI Critical New Testament) format to the books of the Bible not yet published — the Old Testament and Apocrypha — plus a recommended-changes list for the current AICNT volumes.

## Project boundary

This is a **separate project** from the Debt-Debtor Thesis of Redemption that occupies the root of this repository. The two projects share no files, no tagging conventions, and no deliverables; this folder is co-located in the repo for workspace convenience only and may be split into its own repository at any time without breaking anything. Nothing in this folder is cited by, or cites, the thesis documents.

## Contents

| File | Purpose |
|---|---|
| `01_FORMAT_SPEC.md` | The complete AICNT book format, extracted from the published edition: objectives, notation, footnote grammar, AI rendering protocol, formatting, book structure, production pipeline. The template for any new book. |
| `02_OT_EXTENSION_PLAN.md` | How the format applies to the OT + Apocrypha: base-text policy, witness roster, benchmark editions, lexicon (HALOT), the apparatus-data gap, rollout phases, risks. |
| `03_RECOMMENDED_CHANGES_TO_CURRENT_BOOKS.md` | 13 concrete fixes to the existing AICNT books, prioritized. |
| `pilot/` | **Tobit 1 pilot**: the format spec exercised end to end on a Greek text outside the NT (both recensions rendered, 31-note apparatus). `pilot/Tobit_1_AICNT_pilot.md` is the chapter; `pilot/README.md` documents sources, protocol, deviations, and QA findings. |

## Sources

- AICNT preface, complete methodology: <https://aicnt.org/preface/> (updated 2025-12-28)
- AICNT FAQ: <https://aicnt.org/aicnt-faqs/>
- Live apparatus samples: Matthew 1, Mark 16 on <https://corebible.app> (also: OT section currently hosts the Lexham English Bible; Apocrypha navigation is empty)
- Print edition structure (Kindle Cloud Reader, full NT volume ASIN B0FPDTZ658): front-matter TOC, chapter layout
- OT textual-criticism substrate: BHQ (9 of ~20 fascicles, 2004–2024), HBCE (Proverbs 2015 only), HUBP (Isa/Jer/Ezek), Göttingen LXX, CATSS/STEPBible, OSHB WLC 4.20 (CC-BY)

## Status

- Format spec: complete (grounded in published edition).
- OT plan: complete; the blocking prerequisite is an apparatus-data strategy (licensed BHQ/Göttingen vs open-data curation).
- Recommended changes: complete; none applied to the AICNT itself (they are proposals for the publisher, Integrity Syndicate — contact: info@integritysyndicate.com).
- Pilot: **done** — Tobit 1 rendered in format with a 31-note apparatus; QA findings documented.

## Suggested next steps

1. Fix the pilot's documented deviations (temperature-0 rendering, sentence-level segmentation) and decide Tobit's apparatus density: verse-level `{ }` notes (31/chapter) vs. synoptic GI‖GII columns.
2. Decide the collaboration fork: propose to Integrity Syndicate (Dr. Smith channel) vs. independent project — see the project README discussion.
3. If proceeding: rights matrix (OSHB CC-BY, Swete, BHQ/Göttingen licensing) and the first scholarly reviewer.
