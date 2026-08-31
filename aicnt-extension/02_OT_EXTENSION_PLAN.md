# Applying the AICNT Format to the Old Testament (and Apocrypha)

**Status check (verified 2026-08-28):** The AICNT covers all 28 NT books. No OT edition exists or is announced by Integrity Syndicate. CoreBible's OT section (39 books: GEN–MAL) currently hosts the **Lexham English Bible** as placeholder content; its Apocrypha section (14 books: 1ES, 2ES, TOB, JDT, ESG, WIS, SIR, BAR, S3Y, SUS, BEL, MAN, 1MA, 2MA) exists as navigation only. The platform structure is ready; the content is not.

## 1. What transfers unchanged

The entire format specification (`01_FORMAT_SPEC.md`) is corpus-independent: the 10 objectives, the three-bracket notation, footnote grammar with `‖`, clarifying-footnote types, AI protocol (temperature 0, segmentation, lexicon-only system message, scholar review without editing), formatting rules (no deity-pronoun caps, no headings, italics only for added words, frequent paragraphing), book structure, and pipeline all apply as-is.

## 2. What must change: the substrate

The NT pipeline's decisive advantage was **a unified critical text + a digitized exhaustive apparatus**:

- Base text: NA28/UBS5/SBLGNT/THGNT agree on nearly everything; disagreements are footnoted.
- Apparatus: CNTTS database covers every manuscript reading; the AICNT mined it for hundreds of extra variants beyond NA28.

**The OT has neither analogue:**

| NT substrate | OT equivalent | Status |
|---|---|---|
| NA28/UBS5 consensus text | BHS/BHQ diplomatic text (Leningradensis B19a) | BHS complete; BHQ 9 of ~20 fascicles (Megilloth 2004; Ezra–Neh 2006; Deut 2007; Prov 2008; Minor Prophets 2010; Judg 2011; Gen 2016; Lev 2020; Job 2024; Num & Ezek ~2026; Exodus, Josh, Sam, Kgs, Isa, Jer, Chr, Pss, Dan pending) |
| — | HBCE eclectic editions | 1 of ~21 volumes (Proverbs 2015) |
| — | Hebrew University Bible Project | Isa, Jer, Ezek only |
| CNTTS exhaustive apparatus | No OT analogue | Per-book apparatus must be curated from BHQ + Göttingen LXX + HUBP + DSS editions |
| Logos Text Comparison tool | Works for OT too (BHS/BHQ/LXX/SP) | Available |

Consequence: the AI rendering is the *easy* part. The apparatus is the real cost center — for the OT it must be built per book, by a qualified editor, from sources that are themselves incomplete and inconsistently licensed.

## 3. Base text policy (recommended)

**Diplomatic, not eclectic.** Use the Masoretic Text (BHS, upgrading to the BHQ fascicle text where published) as the base — the same policy every modern translation uses, and the only defensible one while HBCE covers one book. The AICNT tiebreakers then apply to variants *against* the MT:

- `{}` — alternate wording attested by major witnesses (LXX, SP, DSS, Syriac): braced = MT reading (benchmark default), alternatives in footnotes. Where the critical tradition strongly prefers a non-MT reading (e.g., via HBCE), footnote the disagreement with editions, per the NT model.
- `[ ]` — text in MT but absent from one or more significant early witnesses (LXX/DSS minuses; e.g., MT pluses against the LXX).
- `[[ ]]` — text absent from the earliest major witnesses and judged a later addition within the tradition (redefined for OT: "later addition" = later *within the Hebrew tradition*, not "later than the 5th century" as in NT).

**Special case — literary editions:** Jeremiah (MT long vs LXX short) and Samuel (MT vs 4QSamᵃ) are not variant-pairs but parallel literary editions. Recommendation: follow the HBCE model with parallel columns, rendered as labeled blocks — the Mark-endings precedent ("The Shorter Ending of Mark") already licenses named textual blocks in AICNT. `[[ ]]` is the wrong tool here; parallel labeled blocks are the right one.

**Ketiv/Qere:** a Hebrew-specific phenomenon with no NT analogue. Recommendation: print the ketiv (written text) as base — it is what the manuscript tradition writes — and footnote the qere reading with a standard template: `[letter] [verse] K reads X; Q reads Y — MT prints X; the reading tradition vocalizes Y (LXX/Vulgate/… support …).` Keep the three-bracket system untouched.

## 4. Witness roster (OT)

| Class | Sigla (following NT template: no corrector hands, no vid) |
|---|---|
| Base | MT (Leningradensis B19a; BHS/BHQ) |
| Dead Sea Scrolls | biblical scrolls by standard sigla: 1QIsaᵃ, 1QIsaᵇ, 4QSamᵃ, 4QJerᵇ, 4QJerᵈ, 4QDeutⁿ, … (date-banded like the NT papyri) |
| Samaritan | SP (Pentateuch) |
| Greek | LXX (Rahlfs–Hanhart; Göttingen where published); per-book recensions noted (e.g., "LXX (B-text)") |
| Syriac | Peshitta (syp) |
| Aramaic | Targum Onqelos (Tg. Onq.), Targum Jonathan (Tg. Jon.), Targum Neofiti (Tg. Neof.) — cited only for interpretive tradition where they reflect a different Vorlage |
| Latin | Vulgate (Vg) |

## 5. Benchmark editions and lexicon

- **Benchmarks:** BHS (apparatus), BHQ fascicles where published, HUBP (Isa/Jer/Ezek), HBCE (Prov), Rahlfs–Hanhart and Göttingen LXX. The preface's "Benchmark Critical Editions" chapter becomes per-book: each book states which editions governed it.
- **Lexicon:** HALOT (Koehler–Baumgartner, *The Hebrew and Aramaic Lexicon of the Old Testament*) is the BDAG analogue — same "primary lexical authority" role, same abridged-definition footnote type. BDB and DCH as secondary references. The Aramaic sections (Dan 2:4b–7:28; Ezra 4:8–6:18, 7:12–26; Jer 10:11) render under the same protocol — HALOT covers both languages.
- **Corpus-specific criticism chapter:** replaces "Western Non-Interpolations" with the OT's own controversy set: LXX priority debates, the MT-plus/LXX-minus pattern, vocalization vs consonantal text, and the ketiv/qere question.

## 6. Variant mining sources (the CNTTS gap)

Ranked by coverage and accessibility:

1. **BHQ apparatus** — richest modern apparatus, but 9/20 books and copyright of Deutsche Bibelgesellschaft (licensed, not open).
2. **Göttingen LXX** — full apparatus for major books, per-volume licensing.
3. **HUBP** — Isaiah, Jeremiah, Ezekiel; the deepest apparatus for those three.
4. **CATSS / STEPBible** — LXX↔MT word-alignment data, openly accessible; ideal for systematic LXX-divergence mining.
5. **DSS editions (DJD)** — transcriptions of biblical scrolls; substantial portions openly available (e.g., Leon Levy DSS Digital Library images; transcriptions via Accordance/Logos modules).
6. **BHS apparatus** — limited but universal; the fallback where BHQ is absent.
7. **OSHB (Open Scriptures Hebrew Bible, WLC 4.20)** — CC-BY, morphologically tagged: the recommended *digitized base text* for the pipeline (avoids BHS licensing entirely for the text itself).

Practical consequence: expect the OT apparatus to document a *different shape* of variation than the NT — many more LXX/MT divergences, fewer isolated scribal variants; per-book counts will vary widely (Genesis, Samuel, Jeremiah, Psalms are rich; Ruth, Obadiah are thin).

## 7. Scale and phasing

- Word counts: NT ≈ 138k Greek; Hebrew OT ≈ 419k — roughly **3×** the rendering and apparatus workload, plus 14 Greek apocryphal books.
- Recommended rollout:

| Phase | Books | Rationale |
|---|---|---|
| **A — pipeline validation** | Apocrypha pilot (recommend Tobit: short, two LXX recensions GII/GI = real text-critical richness; then 1 Maccabees) | Greek in, English out — byte-identical pipeline to the NT; proves the system before any Hebrew work |
| **B — BHQ tier** | Gen, Lev, Deut, Judg, Minor Prophets, Job, Prov, Megilloth, Ezra–Neh | Best modern apparatus exists |
| **C — BHS-base tier** | Exod, Josh, 1–2 Sam, 1–2 Kgs, Isa (HUBP), Jer (HUBP), Ezek (HUBP), Chr, Pss, Dan | Base on BHS; HUBP/Göttingen where available |
| **D — BHQ catch-up** | Num, Ezek | When fascicles land (~2026) |

## 8. Neutrality protocol in the OT

The neutrality objective is *more* load-bearing in the OT, not less. The charged rendering set includes: Gen 3:15 (*šûp* bruise/crush), Isa 7:14 (*almah* young woman/virgin — and the LXX *parthenos* becomes a footnote-variant case), Ps 110:1, Isa 52:13–53:12 (*ʾāšām*, *ḥālal*), Dan 7:13, the Tetragrammaton.

Open design decisions to settle in the front matter:

- **Tetragrammaton:** recommend rendering YHWH as "LORD" (consistent with the existing capitalization policy where God/Lord/Holy Spirit are capitalized as customary) with a first-occurrence footnote and a stated policy — no pronoun capitalization, no "Jehovah/Yahweh" editorializing.
- **Theological-neutrality footnotes (§19 type 5 of the spec)** will carry more weight in the OT volumes.
- **No poetry formatting** per the spec — this is the single biggest departure from every existing OT translation and must be stated boldly in the front matter (the NT precedent holds: the early manuscripts carried none).

## 9. Risks

1. **Apparatus licensing** — BHQ/Göttingen apparatus data is not open. Mitigation: negotiate with DBG/Göttingen (they license to Bible software), or curate an independent apparatus from open sources (CATSS, DSS transcriptions, HUBP summaries). Either way: per-book scholarly editors are required; this is a multi-year, funded project, not a script run.
2. **Hebrew AI quality** — LLM Hebrew→English is less mature than Koine Greek; the segmentation protocol (§7 of the spec) compensates, but expect a heavier human-review pass. Aramaic sections add a third language.
3. **No unified benchmark** — per-book methodology statements become mandatory; eclecticism must be resisted to keep the series coherent.
4. **Literary editions** (Jer/Sam) — parallel-column feature is new; spec it before Phase C.
5. **Scope** — 53 books at 3× NT cost. The per-book volume model (John/Luke/Rev precedent) fits: ship books, not the whole corpus.

## 10. Recommendation

The format transfers cleanly; the OT is a viable new project with three prerequisites: (1) an apparatus strategy per book (licensed BHQ/Göttingen or open-data curation), (2) one per-book scholarly editor, (3) the Apocrypha pilot first, since it reuses the NT pipeline without modification. Start with Tobit.
