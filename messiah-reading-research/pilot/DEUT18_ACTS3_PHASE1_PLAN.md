# Deuteronomy 18 ↔ Acts 3 — Phase 1 Evidence Acquisition and Verification Plan

**Status:** Draft, source acquisition and primary-language collation pending  
**Track:** `messiah-reading-research/`  
**Shared evidence contract:** [ADR-0002](../../docs/adr/0002-shared-multilingual-textual-evidence.md)  
**Parent issue:** [#4](https://github.com/vonstegen/biblical-unitarian-theology/issues/4)

## Objective

Investigate how the prophet-like-Moses promise in Deuteronomy 18:15–19 is worded and interpreted in its Hebrew context, in the ancient Greek translation, and in Acts 3:22–23. Avoid collapsing **translation differences**, **textual variants**, and **apostolic quotation/allusion** into one category. This is a research plan, **not** a completed critical collation.

## Primary evidence inventory — planned, not verified

| Evidence ID | Passage | Language / role | Candidate edition or witness family | Required checks | Status |
|---|---|---|---|---|---|
| EV-DEUT18-MT-PLANNED | Deut 18:15–19 | Hebrew source-language | Masoretic tradition; Leningrad Codex transcription, BHS/BHQ as licensed | Consonantal wording, vocalization, ketiv/qere, editorial apparatus and license | Not acquired / not collated |
| EV-DEUT18-LXX-PLANNED | Deut 18:15–19 | Greek ancient translation | Rahlfs–Hanhart LXX; Göttingen Deuteronomy where available/licensed | Greek wording, translation technique, potential Vorlage hypotheses | Not acquired / not collated |
| — | Deut 18:15–19 | Hebrew alternate Pentateuchal tradition | Samaritan Pentateuch | Passage availability, specific reading, edition and source rights | Not acquired / not collated |
| — | Deut 18:15–19 | Hebrew DSS evidence | Relevant surviving Deuteronomy scrolls, only where the specific verses survive | Extant coverage; lacunae; manuscript date; transcription/photo provenance | Coverage not established |
| EV-ACTS3-GREEK-PLANNED | Acts 3:22–23 | Greek NT quotation/allusion | NA28/UBS5, SBLGNT/THGNT where accessible, AICNT notes | Greek text, variant apparatus, exact phrase alignment | Not acquired / not collated |
| — | Lev 23:29; Num 15:30–31 | Greek OT possible quotation sources | LXX critical editions | Test competing explanations of Acts 3:23 wording, not assume a conflation | Not acquired / not collated |

**No row above establishes an attested reading.** Edition names are acquisition targets, not assertions that a particular edition has been consulted. If no DSS witness preserves the target verses, record *no extant coverage*, not *agreement with MT*.

## Research workflow

### Step 1 — Provenance and rights
For each candidate source, record its bibliographic identity, edition/version, passage locator, access method, license, and whether quotation/reproduction is permitted. Distinguish free-to-view from free-to-republish.

### Step 2 — Hebrew transcription and analysis
Check the exact consonants and vocalization for Deut 18:15–19. Record the lexical and syntactic force of the prophet's origin, divine raising-up, placing words in the prophet's mouth, and Israel's obligation to listen. Keep literal gloss, idiomatic translation, and theological inference in separate columns.

### Step 3 — Greek Deuteronomy and Greek Acts
Independently record the Greek Deuteronomy and Acts wording from identified editions. Identify whether differences are due to translation, authorial adaptation, textual variants, or still unresolved. Avoid reconstructing a lost Hebrew Vorlage without evidence.

### Step 4 — Alternate textual witnesses
Check whether surviving DSS fragments and the Samaritan Pentateuch preserve a materially relevant reading. Distinguish absence of data from textual agreement.

### Step 5 — Quotation/allusion comparison
Build a phrase-level alignment for Deut 18:15–19, Acts 3:22–23, and candidate parallels Lev 23:29 and Num 15:30–31. Evaluate whether Acts combines sources or uses another established scriptural formula. Mark hypotheses and contrary evidence.

### Step 6 — Interpretive review
Study Deut 18 in its immediate context (18:9–22), relevant first-century Jewish expectations, and Peter's argument in Acts 3:12–26. Compare the strongest plausible Biblical Unitarian, Trinitarian, and Jewish scholarly interpretations without treating a source quotation as a complete Christological argument.

## Minimum evidence-record requirements

Each verified record must provide: stable ID and revision; book/passage; source language and witness role; witness or edition; precise locator; rights status; date of verification; named reviewer; explicit relationship to other records; and a commit SHA identifying the evidence state. Pending example records in `research-library/examples/` must not be relabeled verified without actual source checks.

## Phase 1 exit criteria

- [ ] Each source used in a conclusion has a complete bibliographic and rights record.
- [ ] Hebrew Deuteronomy, Greek Deuteronomy, and Greek Acts have independently verified transcriptions or documented authorized quotations.
- [ ] Extant coverage (or absence) for relevant DSS evidence is established.
- [ ] Samaritan Pentateuch evidence is checked and its significance documented.
- [ ] Phrase-by-phrase Greek alignment and alternate source hypotheses are recorded.
- [ ] Language specialist reviews consequential Hebrew/Greek claims.
- [ ] Interpretive dossier separates direct observations, inferences, objections, and unresolved issues.
- [ ] Owner signs off on the completed study PR.

## Next-language pilot

Daniel 7:13–14 is a suitable **Biblical Aramaic** pilot. It must use the Aramaic source text, not a Targum as a substitute, while examining Greek versions separately. This is a subsequent milestone, not an accomplished part of this phase.

## Prior work reused

- `../../aicnt-extension/01_FORMAT_SPEC.md` — publication format and apparatus notation.
- `../../aicnt-extension/02_OT_EXTENSION_PLAN.md` — Hebrew OT witness/edition strategy and known licensing gap.
- `../../aicnt-extension/pilot/` — Greek Tobit pilot; not a Hebrew OT witness collation.
- `../../research-library/schema/textual-evidence-record.schema.json` — shared record contract.
- `../../research-library/examples/deut18-acts3-unverified.json` — planning stubs, not evidence.
