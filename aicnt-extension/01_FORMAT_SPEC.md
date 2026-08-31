# AICNT Book Format Specification

Reproducible production format for AICNT-style critical editions of biblical books not yet published. Extracted from the published AICNT (full NT, Sept 2025) — preface methodology (aicnt.org/preface, updated 12/28/2025), live text samples (Matthew 1, Mark 16 on corebible.app), and the print edition's table of contents (Kindle, ASIN B0FPDTZ658). Applies unchanged to any language where a base text + witness set + benchmark lexicon can be defined.

---

## 1. Objectives (invariant across all books)

Every AICNT book commits to these 10 objectives (preface, "About this Edition"):

1. Base text attested by one or more benchmark critical editions relied on by modern translations.
2. Translation incorporates, yet distinguishes, differences between early manuscripts and later textual traditions.
3. Braces `{}`, brackets `[ ]`, double brackets `[[ ]]` identify and differentiate textual variants in the body text.
4. Critical apparatus: extensive footnotes documenting variants, additions, early-manuscript differences, and disagreements between critical editions.
5. Conventional notation for frequently cited witnesses: early manuscripts, later text-types, benchmark editions.
6. Authoritative lexicon is the primary foundation for English vocabulary.
7. AI LLM used under specific instructions: accurate, readable, transparent, unbiased rendering.
8. No suggestive section headings or editorializing formatting.
9. Frequent paragraph breaks for readability.
10. Additional clarifying footnotes: abridged lexicon definitions, cross-references, neutrality notes.

## 2. Base text selection rule

- Base = reading attested by the earliest witnesses as reflected in the benchmark critical editions.
- Where benchmarks disagree, two tiebreakers (preface §11):
  a. **Brevity:** the shorter, less embellished reading is base; the longer reading goes to footnotes.
  b. **Neutrality:** where a variant has theological import, the more neutral reading is base; the charged reading is documented.
- Critical-edition disagreements are themselves footnoted with the editions that attest each reading.

## 3. Notation system (body text)

| Notation | Meaning | Footnote pattern |
|---|---|---|
| `{ text }` | Variant with alternate wording; braced reading is the most likely original | "Some manuscripts read …" |
| `[ text ]` | In ≥1 benchmark edition but absent from one or more early manuscripts (uncertain) | "Absent from some manuscripts …" |
| `[[ text ]]` | Later additions / interpolations; not accepted as original by benchmark editions | "Some manuscripts include …" |

Mechanics:

- A superscript footnote letter attaches to each bracketed span. Letters restart per chapter: `a, b, c, …` (Matthew 1 carries a–t = 20 notes).
- Notation nests: `{And [when the Sabbath had passed,] a Mary … and came and anoint him}. b` (Mark 16:1) — inner brackets take their own letters; the outer span takes the closing letter.
- Verse numbers appear inside long bracketed blocks (the Longer Ending of Mark keeps its verse numbers 9–20 inside `[[ ]]`).
- Special named textual blocks get minimal structural labels — the only headings allowed: "The Shorter Ending of Mark", "The Longer Ending of Mark" (Mark 16). These labels are textual facts, not editorial interpretation.

## 4. Footnote grammar

Chapter's footnotes follow the text under the heading `FOOTNOTES`, one note per letter, format:

```
[letter] [verse-ref] [quoted phrase] — [statement] [witnesses] ‖ [contrasting statement] [witnesses]
```

- `‖` separates contrasting witness statements (preface §4).
- Witness order within a note: early manuscripts → Latin/Syriac versions → later text-types (BYZ, TR) → benchmark editions (preface §8d).
- `[ ]` around a witness siglum = the edition brackets that word (e.g., `NA28[ ]`).

Observed templates (Matthew 1):

```
a 1:0 Title ("Matthew") — Absent from ℵ(01) B(03) ‖ Latin(a b h) BYZ reads "According to Matthew." ‖ C(04) W(032) BYZ reads "Gospel according to Matthew." ‖ TR reads "The Holy Gospel according to Matthew."
c 1:3 and Zerah by Tamar — Absent from Latin(k).
d 1:6 the king — Included in C(04) W(032) Latin(h) BYZ TR ‖ Absent from 𝔓1 ℵ(01) B(03) NA28 SBLGNT THGNT.
e 1:7-8 Asaph — 𝔓1 ℵ(01) B(03) C(04) NA28 SBLGNT THGNT ‖ Some manuscripts read "Asa." W(032) BYZ …
```

Clarifying (non-variant) footnotes — five types (preface §19):

1. Scriptural cross-references; `LXX` marks Septuagint-specific references.
2. Abridged lexicon definitions: `b 1:1 Christ — The Greek word is defined by BDAG as: (1) fulfiller of Israelite expectation of a deliverer, the Anointed One, the Messiah, the Christ, (2) the personal name ascribed to Jesus, Christ. (BDAG, Χριστός).`
3. Alternative readings of words/phrases (idioms, cryptic expressions).
4. Alternate renderings where the AI output fluctuated between two significantly different readings.
5. Theological-neutrality explanations for particular verses.

## 5. Variant inclusion/exclusion

Documented: variants that produce a significantly different rendering.

Excluded (preface §5): orthographic differences; abbreviations (incl. nomina sacra); transpositions with equivalent rendering (exception: "Christ Jesus" ↔ "Jesus Christ"); articular variation without interpretive impact; conjunctional variation ("and/but/for"); tense variation with equivalent rendering; synonym substitution with identical rendering; verse-division differences.

## 6. Witness roster

Defined per corpus in the front matter ("Frequently Cited Witnesses"). The NT roster, as the template:

- **Early manuscripts (≤500 CE)** — papyri 𝔓 by century bands; uncials ℵ(01), A(02), B(03), C(04), D(05), W(032). Corrector hands and NA28 superscripts (*, vid) omitted for simplicity.
- **Early versions** — Old Latin (a, k; b, e, d, ff2, h, i; `it` = majority), Old Syriac (sys, syc), Peshitta (syp), Philoxenian (syph), `sy` = whole tradition.
- **Later text-types** — BYZ (Robinson–Pierpont 2005), TR (Oxford 1873, per CNTTS usage).
- **Benchmark editions** — NA27 (noted only where differing from NA28 in Catholic Epistles), NA28 (= UBS5 text), SBLGNT, THGNT.

Citation rules: only original-hand readings; corrections by later hands omitted; "manuscripts" in notes = multiple witnesses even if one is cited; later/less relevant witnesses omitted to avoid overwhelming the reader.

## 7. AI rendering protocol

- **API, not web UI:** Chat Completions API with custom Python; `temperature = 0` for determinism (preface §15).
- **System message:** translate the supplied text; use only the benchmark lexicon; render theologically neutrally, minimizing interpretive bias.
- **Input granularity:** paragraph or sentence at a time (best accuracy/readability balance); single verse/phrase/word for complex or abstract text; smaller segments resolve inaccuracies (preface §18).
- **Human review:** a qualified scholar reviews the full rendered text but does not edit it; issues are fixed by re-rendering shorter segments, or a clarifying footnote is added (preface §18).
- **Consistency QA:** software-based checks for punctuation/capitalization/grammar; consistency pass across parallel passages; apparatus construction doubles as a review of every variant rendering.
- **No human-translated text** in the edition, including footnote variant renderings (preface §14).

## 8. Formatting rules

- **No capitalized pronouns** for God (interpretive bias). `God`, `Lord`, `Holy Spirit` capitalized as customary.
- **No section headings**, no red-letter, no poetry formatting, no quotation-mark conventions — only the special textual-block labels (§3).
- **Italics** only for English helper words the AI added that have no counterpart in the source text.
- **Frequent paragraphing** — balance between large blocks and verse-per-line; frequent breaks aid navigation without headings (preface §20).
- **Punctuation** follows the benchmark editions, minimally modified to accommodate bracketed apparatus.
- **Verse divisions** follow the benchmark editions; combined ranges (Mt 1:7-8) explained in front matter.

## 9. Book structure

Front matter (Kindle TOC, full volume):

1. Title and Copyright
2. About this Edition (the 10 objectives)
3. 1. Understanding Textual Changes
4. 2. What is a Critical Edition?
5. 3. Braces and Brackets
6. 4. Types of Variant Footnotes
7. 5. Exclusions to Documented Variants
8. 6. Manuscript Text-Types
9. 7. Categories of Manuscripts (Aland categories I–V; NT-specific, adapt or drop per corpus)
10. 8. Frequently Cited Witnesses (subsections a–d per witness class)
11. 9. Corpus-specific criticism section ("Western Non-Interpolations" for NT; per-corpus analogue)
12. 10. Benchmark Critical Editions
13. 11. Deciding Between Critical Editions
14. 12. Software Resources
15. 13. Methodology for Identifying Textual Variants
16. 15. AI Rendering Methodology
17. 16. [Lexicon] Lexicon (BDAG analogue)
18. 17. Rendered Word Equivalents (the fluctuation pairs and the chosen word)
19. 18. Quality Assurance
20. 19. Clarifying Footnotes
21. 20. Formatting
22. 21. Punctuation

Then books → chapters. Chapter layout:

```
Matthew                                ← running book name
Chapter 1                              ← chapter heading
[body text: verse numbers + footnote letters, frequent paragraphs]
FOOTNOTES
20                                     ← count of notes in chapter
a … (one line per note, format §4)
```

## 10. Production pipeline (per book)

1. **Text comparison** of digital editions (benchmarks + later text-types + key early manuscripts) via Bible software; every difference AI-rendered to determine if it changes the English.
2. **Apparatus review** of the benchmark editions' apparatuses.
3. **Exhaustive apparatus review** against the deepest available database (CNTTS for NT; per-corpus analogue elsewhere — see 02_OT_EXTENSION_PLAN.md for the OT gap).
4. **AI render** per §7.
5. **Scholarly review** — full accuracy/readability pass, no editing; fixes by re-render.
6. **Consistency QA** + apparatus construction (each variant rendered and witnessed).
7. **Publication**: per-book volume + cumulative collection; free digital edition for at least one flagship book (Revelation precedent: PDF + EPUB); web edition with per-chapter apparatus (corebible.app structure: collection → book → chapter, route `/{BOOK}/{chapter}`).

## 11. Versioning and errata

- Preface commits to corrections before future editions; online editions update quickly (preface, "Online Viewing").
- Recommended (see 03_RECOMMENDED_CHANGES_TO_CURRENT_BOOKS.md): explicit edition version on every page, public changelog, machine-readable apparatus.

---

**Parameters to fix per corpus:** base text edition(s), benchmark critical editions, witness roster + sigla, lexicon, corpus-specific criticism section, manuscript classification scheme, special textual blocks, software resources. The OT parameterization follows in `02_OT_EXTENSION_PLAN.md`.
