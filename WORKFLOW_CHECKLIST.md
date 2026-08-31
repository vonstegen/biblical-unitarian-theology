# Workflow Checklist & Prioritized Roadmap
**Project:** Debt-Debtor Thesis of Redemption — Biblical Unitarian Theology  

## Change Log

**2026-08-28 — v1.9 (final acceptance pass complete)**
- Three read-only verification scouts audited every chapter's acceptance check, cross-links, tagging, and verification logs against the actual content; five fix agents resolved all violations.
- Fixed: false Greek lexical claims in Ch 12/13 (hupakoē vs John 8:29/Gethsemane; akouō vs hupakouō in John 5:30); phantom verification-log citations in Ch 12/13; ~30 missing evidence sketches (Ch 2, 3, 4, 5, 8, 9); truncated prose (Ch 2, 3, 5); wrong verification-log section pointers in headers (Ch 2, 4, 6, 7, 8, 9, 10, 12, 14, 16, 17, App B, C); Ch 5 loss-numbering collision; Ch 9 false self-reference; Ch 10 missing A10 entry; Ch 1 A1 passage count.
- Appendix C: added Image of God entry; converted the C.8 duplicate into a cross-reference. Appendix D: added 14 missing book divisions (Leviticus, 1–2 Samuel, 1–2 Kings, 1–2 Chronicles, Job, Jonah, Joel, Malachi, Ezekiel, James, 1 Thessalonians, Revelation) and removed a misfiled Deuteronomy entry.
- Added AICNT (AI Critical New Testament) to the translation set (`INTRO.md` §I.4) and to `06_Translation_Bias_Documentation.md` (§8).
- All chapters and appendices now Accepted; the only remaining next actions are the PDF rebuild and optional PhD-roadmap items.

**2026-08-31 — v1.10 (PhD expansion: methodology chapter)**
- Added Chapter 0 (Methodology) per `07_PhD_Roadmap.md` Phase 4: the Bible-only constraint argued as a methodological commitment (warrant, disciplines, precedent, objection, parallel-passage discipline), the Appendix A relaxation charter, the translation policy, the tagging system as an epistemic standard, and the method–thesis fit. ~5,000 words including apparatus; A0 criteria met.
- Wired Chapter 0 into `latex/build_combined.sh` (after `INTRO.md`); PDF revision slug bumped to `v1.3-phd-ch0`.
- `01_Architecture_and_Outline.md` → v1.5 (Chapter 0 acceptance criteria R0.1–R0.5, W0.1, A0); `INTRO.md` §I.6 updated for the methodology chapter and the PhD-form Appendix A.
- `07_PhD_Roadmap.md` current-state section refreshed to v1.2 reality: Phases 1 and 5 complete, Phase 4 complete, Phase 2 partially complete; Appendix A (Phase 3) is the next writing target.

**2026-08-28 — v1.8 (repo hygiene and reconciliation)**
- All work committed and pushed (three weeks of uncommitted changes from 2026-08-06 to 2026-08-28 are now in history); working tree clean.
- Pulled and reconciled `07_Ch10_Review.md` (20-item fix list): citation rename (post-canonical → Jesus citation), `[I-high]` → `[I-mid]` downgrade, combination argument added to §10.10, Ch 9 cross-link added to §10.1, forward-link re-attributed, reference-only list trimmed to five, kind-of-being stragglers removed.
- Added `.gitignore` entry for `latex/build/`; removed vestigial empty `latex/chapters/` and `latex/front/`.
- Added `outreach/` (email + project summary for Dr. Dustin R. Smith) and refreshed `README.md`, `CONTINUE_PROMPT.md`.
- Word counts in the status table refreshed (2026-08-28; `wc -w` totals including the tagging apparatus).

**2026-08-07 — v1.6 (paired Chapter 11 / Chapter 15 foundation revision)**
- Re-grounded Chapter 11 with a direct debt-side subsection (Genesis 2:16–17; Genesis 3:17–19; Romans 5:12; 1 Corinthians 15:21–22), expanded evidence sketches, and explicit pressure-testing of the principal counter-texts.
- Corrected Chapter 15's dependency direction: Chapter 11 is the prior correspondence foundation; Chapter 15 is the one-for-many mechanism and cannot pass acceptance until Chapter 11 passes A11.
- Reclassified Chapter 15's explanatory sufficiency claim from `[E]` to `[I-high]`, retaining the explicit one-act / many-recipients structure as `[E]`.
- Replaced the obsolete Chapter 15-first drafting recommendation in the canonical roadmap and outline.

**2026-08-07 — v1.4**
- Efficiency and clarity pass complete for Chapters 1–15. Renamed the "Length control pass" to "Word efficiency and clarity pass" — no longer a hard blocker; clarity and readable logic > strict word cap.

**2026-08-07 — v1.1**
- Successfully read and integrated `07_Ch07_Review.md`, `07_Ch09_Review.md`, and `07_PhD_Roadmap.md`.
- Added compact status table covering **every** chapter (1–17), Introduction, and Appendices B–D as explicitly requested.
- Noted PhD aspiration from `07_PhD_Roadmap.md` (relaxed Bible-only in Appendix A, methodology chapter, 140k–165k word target).

**2026-08-07 — v1.0**
- Created as authoritative living document after advisory correction of earlier mistaken status assessment.
- Supersedes stale `05_Research_and_Writing_Checklist.md`.

---

**Version:** 1.10 (2026-08-31) — PhD expansion begun: Chapter 0 (Methodology) added and accepted; Appendix A next

## Compact Status Table (All Chapters) — Updated 2026-08-31 (word counts are `wc -w` totals incl. tagging apparatus)

| Chapter / Section | Status | Word Count | Notes | Next Action |
|-------------------|--------|------------|-------|-------------|
| **Ch 0 — Methodology** | **Accepted (A0)** | 5,001 | Added 2026-08-31 per PhD roadmap Phase 4; secondary sources named methodologically only; quotations verified against esv.org | None |

| **Introduction (INTRO.md)** | **Finalized against acceptance criteria** | 2,560 | Acceptance checklist added; I.1–I.7 met | Ready |
| **Ch 1 — Character of God** | **Accepted** | 4,455 | Bible-only audit pass complete; secondary-source citation replaced with biblical-text-based objection | None |
| **Ch 2 — Creation** | **Accepted** | 4,869 | Bible-only compliant; evidence sketches added in acceptance pass | None |
| **Ch 3 — Covenant of Eden** | **Accepted** | 5,032 | Bible-only compliant; truncated prose completed; sketches added | None |
| **Ch 4 — Nature of Adam's Sin** | **Accepted** | 4,687 | Bible-only compliant; evidence sketches added in acceptance pass | None |
| **Ch 5 — What Was Lost?** | **Accepted** | 6,348 | Loss numbering reconciled; cross-link and citation fixes; sketches added | None |
| **Ch 6 — What Passed to Humanity?** | **Accepted** | 3,178 | Bible-only compliant; genre observation is methodological, not evidence-citation | None |
| **Ch 7 — Innocence and Accountability** | **Accepted** | 2,175 | All 15 fix items from 07_Ch07_Review.md resolved; Bible-only compliant | None |
| **Ch 8 — Growth of Disobedience** | **Accepted** | 2,164 | 13 evidence sketches added in acceptance pass | None |
| **Ch 9 — Israel as Pattern of Disobedience** | **Accepted** | 3,476 | False self-reference corrected; sketches added | None |
| **Ch 10 — Obedience Above Sacrifice** | **Accepted** | 2,860 | 20-item review (07_Ch10_Review.md) reconciled; A10 entry restored | None |
| **Ch 11 — Why Must the Redeemer Be Human?** | **A11 accepted in paired revision** | 5,827 | Human debt-side foundation, same-order correspondence, counter-text pressure test pass; prior load-bearing foundation for Ch 15 | Accepted |
| **Ch 12 — Perfect Obedience of Christ** | **Accepted** | 4,008 | False lexical claim corrected; phantom verification-log citations removed; sketches added | None |
| **Ch 13 — Gethsemane and the Two Wills** | **Accepted** | 4,699 | Lexical claim corrected (akouō/hupakoē root); phantom log citations removed; sketches added | None |
| **Ch 14 — The Cross as Payment** | **Accepted** | 2,309 | Bible-only compliant; presupposes Ch 11 and Ch 15 | None |
| **Ch 15 — Why One Man for Many** | **A15 accepted after A11** | 5,382 | Inherits Ch 11's same-order foundation; explicit structure `[E]`, sufficiency inference `[I-high]`; co-equal load-bearing mechanism | Accepted after A11 |
| **Ch 16 — Father's Vindication & New Humanity** | **Accepted** | 2,194 | Acceptance criteria now carry section citations; presupposes Part IV pair | None |
| **Ch 17 — Conclusions** | **Accepted** | 1,664 | Tagging header corrected for a conclusions chapter (tags name source chapters) | None |
| **Appendix B** — Alternative Readings | **Accepted** | 3,145 | Acceptance criteria now carry section citations | None |
| **Appendix C** — Glossary | **Accepted** | 3,049 | Image of God entry added; C.8 duplicate converted to cross-reference | None |
| **Appendix D** — Research Map | **Accepted** | 4,389 | 14 missing book divisions added; misfiled Deuteronomy entry removed | None |

---

## Bible-Only Compliance Audit Findings (2026-08-07)

**Methodology:** Searched all chapters and appendices for the pattern: `Reformed|Arminian|Anselm|Augustine|Calvin|Aquinas|Nicene|Chalcedon|systematic theology|tradition has|historic(ally)? (affirm|critique|teach|argue|claim|maintain|hold|read|interpret|insist|reject|deny|accept|adopt|embrace|contend|object|dispute|contest)|creed|council|church father|patristic|Reformation|orthodox|theologian|scholar`.

**Rule applied:** Secondary sources may be mentioned ONLY to identify or dismiss competing positions, never as evidence for the project's own claims (per `INTRO.md` §I.2 and `CONTINUE_PROMPT.md`).

**Edits applied:**
1. **Ch1 line 127–128** — evidence-against point (b) "The systematic tradition has historically split between satisfaction theologies (Anselm) and substitutionary-penal-only theologies (Reformation)..." replaced with a Bible-text-based objection grounded in OT forgiveness language (Psalm 103:12; Isaiah 1:18; Isaiah 43:25). Band justification updated to match.
2. **Ch15 line 169** — evidence-against point (c) "The Reformed tradition has historically affirmed federal headship (using the term) and the Arminian tradition has historically critiqued it as unfair..." replaced with a Bible-text-based objection grounded in gospel conditionality (John 3:16; Mark 16:16; Acts 16:31; Romans 10:9) and 1 Corinthians 15:6, 22.

**Remaining mentions (all allowed under the rule):**
- Ch2 §2.4 — "Reformed and federal-theology traditions" — identification of competing position, with the chapter making its own case from Hosea 6:7.
- Ch3 §3.1 — "Reformed tradition builds on Eden" — verification that the chapter does not assume the term; allowed.
- Ch3 §3.5 — "Reformed, Roman Catholic" — verification of non-use as evidence; allowed.
- Ch6 §6.9 — "wisdom poetry, not systematic theology" — genre observation about the biblical text itself; methodological, not evidence-citation.
- Ch11 §11.3, §11.10 — "Chalcedonian formula", "Nicene or Chalcedonian" — identification of competing christology being explicitly rejected on biblical grounds; allowed.
- Ch12 §12.10 — "active obedience" / "passive obedience" from "later Reformed theology" — identification of competing vocabulary; chapter draws the substance from the text; allowed.
- Ch13 §13.1, §13.7 — "post-Chalcedonian theology", "Chalcedonian or post-Chalcedonian formulation" — identification of competing position; chapter stakes argument on textual categories; allowed.
- Ch15 §15.7 — "what systematic theology calls federal headship" — identification of competing vocabulary; explicit note on vocabulary clarifies the chapter's stance; allowed.

**Other project files audited:**
- `INTRO.md` — all secondary-source references are identification of competing positions (the church's Trinitarian reading of John 1:1, etc.) or methodological notes; allowed.
- `01_Architecture_and_Outline.md` — references to Nicene metaphysics in Appendix B scope are scope notes, not evidence; allowed.
- `04_Review_and_Recommendations.md` — methodology review, names Anselm/Socinus as background to the dialogue, does not use as evidence; allowed.
- `06_Translation_Bias_Documentation.md` — explicitly self-disclosed as secondary documentation "not used as evidence for theological claims"; allowed.
- `chapters/Chapter_00_Methodology.md` — names Vos, Childs, G. Ernest Wright, and Francis Watson methodologically (discipline-landscape identification) and cites secondary works only as locations in the conversation; no secondary source used as evidence for a theological claim; allowed.
**Conclusion:** The manuscript is Bible-only compliant in its evidence sketches. The audit is closed.

---

- The checklist is now the single source of truth and reflects the actual state on disk. `01_Architecture_and_Outline.md` v1.5 carries the canonical paired-acceptance policy; the previous v1.3 recommendation to draft Chapter 15 first is superseded. `05_Research_and_Writing_Checklist.md` remains stale and is superseded.

## Immediate Next Steps (Do in this order)
1. ~~Final acceptance of the remaining chapters and appendices~~ — **Done (v1.9):** all chapters and appendices accepted.
2. ~~Kind-of-being sweep~~ — **Done (constraint-sweep commit, 2026-08-28):** template removed across 8 chapters/appendices.
3. ~~Band the bare `[I]` vocabulary tags~~ — **Done (same commit):** banded; vocabulary-tag rule codified in `TAGGING_STYLE_GUIDE.md`.
4. ~~Cross-link consistency check~~ — **Done (v1.9):** Appendix D covers all load-bearing citations; 14 missing book divisions added.
5. **Rebuild the PDF** — run `latex/build.sh` (slug v1.3-phd-ch0) to include Chapter 0.
6. **PhD expansion (active, user-selected 2026-08-31):**
   - **Chapter 0 — Methodology: DONE** (2026-08-31; A0 accepted; wired into the build).
   - **Appendix A (Phase 3) — NEXT:** engagement with the secondary literature, bounded as conversation-mapping (never evidence). Outline A.A.1–A.A.8 in `07_PhD_Roadmap.md` §Phase 3, ~20k words.
   - **Phase 2 deepening:** expand `[I]`/`[H]` evidence sketches to 6–10 bullets (parallel passages, lexical notes, translation-variant notes, glossary cross-refs).
   - **Phase 6 polish:** third-pass copy edit, front matter (abstract; bibliography for Appendix A only), final rebuild.
   - **Phase 7 (user-driven):** program-specific adaptation.


---
