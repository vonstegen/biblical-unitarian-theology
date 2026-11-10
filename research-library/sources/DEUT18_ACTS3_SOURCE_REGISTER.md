# Deuteronomy 18 / Acts 3 — Source and Rights Register v0.1

**Issue:** [#7](https://github.com/vonstegen/biblical-unitarian-theology/issues/7)  
**Status:** Source discovery / initial Greek text inspection; not a completed manuscript collation  
**Checked:** 2026-11-10

## Source candidates and access status

| ID | Corpus | Primary source / repository | Text role | Rights / attribution | Inspection status |
|---|---|---|---|---|---|
| SRC-OSHB | Hebrew Deuteronomy | [Open Scriptures Hebrew Bible](https://github.com/openscriptures/morphhb), [Deut.xml](https://github.com/openscriptures/morphhb/blob/master/wlc/Deut.xml) | Westminster Leningrad Codex-based Hebrew diplomatic transcription with morphology | Underlying WLC text public domain; OSHB lemma/morphology CC BY 4.0, attribute Open Scriptures | Upstream project, license, and Deut file path inspected; **verses not yet transcribed or collated** |
| SRC-SBLGNT | Greek Acts | [Society of Biblical Literature SBLGNT](https://www.sbl-site.org/resources/digital-texts/sbl-greek-new-testament/), [Faithlife source files](https://github.com/Faithlife/SBLGNT/blob/master/data/sblgnt/text/Acts.txt) | Critically edited Greek NT text | CC BY 4.0; attribute Society of Biblical Literature and Logos Bible Software | Upstream source and Acts 3:22–23 text directly inspected; **no manuscript apparatus collation or philological review** |
| SRC-LXX | Greek Deuteronomy | Rahlfs–Hanhart / Göttingen Deuteronomy critical editions (candidate) | Ancient Greek translation | **Edition-specific license/access pending** | **Not acquired or inspected** |
| SRC-SP | Samaritan Pentateuch | Critical edition / accessible transcription to be selected | Alternate Hebrew Pentateuchal tradition | **Pending** | **Not acquired or inspected** |
| SRC-DSS | Deuteronomy Dead Sea Scrolls | Individual scroll transcriptions/images and editions to be identified | Surviving Hebrew manuscript witnesses | **Pending** | **Coverage of Deut 18:15–19 not yet established** |
| SRC-LXX-PARALLELS | Greek Lev 23:29 / Num 15:30–31 | Licensed or openly accessible LXX edition to be selected | Candidate scriptural source for Acts 3:23 | **Pending** | **Not acquired or inspected** |

## Confirmed source-level observations (not theological conclusions)

1. **OSHB:** The Open Scriptures project states that its Hebrew text is based on the Westminster Leningrad Codex, with morphological and lexical annotations; the source repository lists `wlc/Deut.xml`. The project's [license](https://github.com/openscriptures/morphhb/blob/master/LICENSE.md) distinguishes the public-domain underlying Hebrew text from its CC BY 4.0 contribution. This verifies a **source candidate**, not any particular Deut 18 reading.
2. **SBLGNT:** The SBL publishes Michael W. Holmes' critically edited Greek New Testament. The [source repository](https://github.com/Faithlife/SBLGNT) identifies its CC BY 4.0 license. `data/sblgnt/text/Acts.txt` was directly inspected and contains Acts 3:22–23.
3. **Text-critical limitation:** The [SBL digital-texts page](https://www.sbl-site.org/resources/digital-texts/) explains that SBLGNT's apparatus compares **published editions**, rather than directly cataloguing manuscript variants. Its Greek text therefore cannot by itself establish what individual ancient manuscripts read.

## Greek Acts 3:22–23 — first source inspection

**Edition:** SBLGNT, Michael W. Holmes; repository path `data/sblgnt/text/Acts.txt`.  
**Source inspected:** GitHub upstream content (2026-11-10).  
**Research state:** Direct edition-text retrieval; linguistic and textual-critical interpretation pending.

Key phrases recorded for later alignment:

| Verse | Greek phrase in inspected SBLGNT text | Provisional observation |
|---|---|---|
| Acts 3:22 | `Προφήτην ὑμῖν ἀναστήσει` | Phrase refers to raising up a prophet; compare with Hebrew and LXX Deuteronomy before interpreting |
| Acts 3:22 | `αὐτοῦ ἀκούσεσθε` | Command/future form about listening to him; verify syntax and source-language parallel |
| Acts 3:23 | `ἐξολεθρευθήσεται ἐκ τοῦ λαοῦ` | Describes removal/destruction from the people; test proposed parallels against Greek Lev 23 and Num 15 |

These are **short extracts** of the directly inspected, CC BY 4.0 SBLGNT source, not a claim of manuscript unanimity. Editorial marks such as `⸀` in the full edition are not silently interpreted as manuscript variants.

## Next work

1. Obtain and parse the exact Hebrew Deut 18:15–19 from the identified OSHB file, preserving the source revision.
2. Obtain a licensed or appropriately reusable LXX Greek Deuteronomy text and record its edition/version.
3. Align Hebrew Deut, LXX Deut, and Greek Acts 3, marking each difference as translation, quotation adaptation, or unresolved.
4. Check Samaritan and DSS evidence only after extant passage coverage and edition access are established.
5. Have consequential language claims reviewed before marking shared evidence records `verified`.

**Status rule:** No `research-library/examples/` record is promoted to verified by this register. Source discovery and primary-text retrieval are not equivalent to scholarly witness verification.
