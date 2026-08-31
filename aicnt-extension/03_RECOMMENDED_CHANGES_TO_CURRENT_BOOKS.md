# Recommended Changes to the Current AICNT Books

Observed issues in the published AICNT (full NT Sept 2025; web edition updated 12/28/2025; individual John/Luke/Revelation volumes), with concrete fixes. Grounded in the preface, the live apparatus (corebible.app), and the print edition (Kindle).

## A. Apparatus consistency

1. **Standardize footnote templates.** Preface §4 defines four templates ("Some manuscripts read …", "Some manuscripts include …", "Absent from some manuscripts …", `‖`). The apparatus does not follow them uniformly: Matthew 1:7-8 note `e` lists witnesses with no verb phrase at all (`𝔓1 ℵ(01) B(03) C(04) NA28 SBLGNT THGNT ‖ Some manuscripts read "Asa." W(032) BYZ`), while note `d` uses the "Included in … ‖ Absent from …" form. Both are legible, but the contract between the preface and the apparatus should hold.
   **Fix:** adopt exactly two witness-statement forms per note — support-side and variant-side — and enforce them in the machine-readable apparatus (§D); update preface §4 to match whatever the apparatus actually does.

2. **Publish the rendered-word-equivalents policy.** Preface §5 excludes "word substitution… unless it results in a different rendering", but §17 admits the AI fluctuated between equivalent pairs (heavens/heaven, Gehenna/hell, beginning/start, wealth/mammon, purchased/ransomed, …) with the more familiar word usually chosen. The reader has no way to know which choice was made where.
   **Fix:** publish the full fluctuation-pair list with the selected word as an appendix in the print volume and a filterable page on corebible.app. This turns an acknowledged inconsistency into documented policy.

3. **Footnote letter placement.** Matthew 1:16 renders `the {husband g of} h Mary` — letter `g` inside a braced span whose variant is the whole phrase, then `h` after the closing brace. The convention "letter attaches at the end of the bracketed span" is broken by the inner placement.
   **Fix:** one rule — the footnote letter follows the closing bracket of the span it annotates; multiple letters per verse are fine (they exist), but each letter must sit at a span boundary.

4. **Explain combined verse ranges.** `1:7-8 Asaph` presupposes the reader knows the variant spans a verse boundary and that the edition's verse divisions differ from the KJV-tradition numbers. Preface §5 says verse-division differences are not noted — so a range reference is unexplained.
   **Fix:** one sentence in the front matter ("Verse references spanning a hyphen indicate a variant crossing a verse boundary") — zero cost, removes a class of reader confusion.

5. **Label the footnote count.** Chapters close with `FOOTNOTES` then a bare number (`20` in Matthew 1) then the notes. The number's meaning is discoverable but not stated.
   **Fix:** render as `FOOTNOTES (20)` or add "20 textual notes in this chapter."

## B. Front matter and standalone volumes

6. **Single-book volumes are missing the reference material.** The John, Luke, and Revelation volumes are sold standalone, but the full preface (notation key, frequently cited witnesses, exclusions, tiebreakers) lives in the complete volume. A standalone buyer cannot decode `ℵ(01)` or `‖`.
   **Fix:** each single-book volume gets an abridged front matter: the notation key, the witness table, the footnote-type summary, and the exclusions list (≈4 pages, adapted from the full preface).

7. **The theologically significant variants list exists for John only** (preface §1 names it for John; no equivalent for the other 26 books).
   **Fix:** extend the consolidated list to all books as a front-matter table (book → verses → issue). It is the single most useful navigation aid for the target audience and costs one editorial pass.

8. **Kindle TOC incompleteness.** The print TOC skips entries for §7 (manuscript categories) and §13–14 (variant-identification methodology; AI-as-solution rationale) though the sections exist in the body (web preface numbering runs 1–21).
   **Fix:** TOC regeneration from section headings — mechanical.

## C. Edition hygiene

9. **Version the edition.** The preface commits to online updates before future editions, but nothing marks which text a reader is looking at. Scholarly citation needs stability.
   **Fix:** edition stamp ("AICNT 2025.9" style) on the title page, the web header, and per-book pages; a changelog page listing what changed per release.

10. **Typo fixes.** Preface §8a: "Sir Frederic Keyton" should be **Kenyon** (footnote 6 in the same section reads "Sir Frederic Kenyon" — the inconsistency is visible to the reader). Metzger–Ehrman title in the preface's recommended-reading list has stray italicization fragments ("*Text of the New Testament: … and the Theory and Practice of Modern Textual*").
    **Fix:** trivial.

11. **BDAG-note coverage policy.** Abridged BDAG definitions appear for *Christ* (Mt 1:1) and for *Holy Spirit* terms, but the criterion for when a lexeme merits one is not stated. The preface promises them "where the translated Greek word may have a wide range of meanings" — underdetermined.
    **Fix:** state the rule: BDAG abridgments for (a) all theologically significant lexemes, (b) words whose chosen English rendering departs from the most common gloss, (c) words with a rendering-fluctuation history (§A2 list). Then audit against the rule.

## D. Infrastructure (enables everything above)

12. **Release a machine-readable apparatus.** The apparatus exists as typeset text only. A structured release (USFM or JSON: book/chapter/verse/span/type/witnesses/note-text) would let errata be tracked, let the community submit corrections, and would be the single biggest enabler for the OT extension (`02_OT_EXTENSION_PLAN.md`) — its variant-mining pipeline needs exactly this data model.
    **Fix:** export from the existing production files; publish alongside the web edition.

13. **Per-book "last updated" on the web reader.** The web edition updates silently; corebible.app shows no revision date per book.
    **Fix:** stamp each book page (cheap, and makes §C9 real).

## Priority order

| # | Item | Effort | Impact |
|---|---|---|---|
| 12 | Machine-readable apparatus | medium | unlocks OT project + errata |
| 6 | Abridged front matter in standalone volumes | low | fixes real reader failure |
| 7 | Variant index for all books | medium | highest audience value |
| 1 | Footnote template standardization | medium | credibility |
| 9/13 | Versioning + updated stamps | low | citability |
| 2 | Word-equivalents appendix | low | policy transparency |
| 3–5, 8, 10, 11 | Notation/hygiene items | low | polish |
