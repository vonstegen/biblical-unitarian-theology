# Shared Biblical Textual Evidence Registry

**Status:** Design v0.1, proposed in ADR-0002 / Issue #4.

This directory defines an *interface* for textual evidence reused by the existing `../aicnt-extension/` and `../messiah-reading-research/` projects. It does **not** contain an independent AI translation engine or claim a completed critical edition.

## Source of truth and ownership

- **Critical-edition methodology and proposed OT pipeline:** `../aicnt-extension/01_FORMAT_SPEC.md`, `../aicnt-extension/02_OT_EXTENSION_PLAN.md`; Tobit Greek pilot in `../aicnt-extension/pilot/`.
- **Theological research and 365-day reading:** `../messiah-reading-research/`.
- **Shared metadata contract:** `schema/textual-evidence-record.schema.json`; changes require a versioned PR.
- **Example:** `examples/deut18-acts3-unverified.json` contains *planning placeholders only*, no manuscript attestation.

## Minimum editorial safeguards

1. Do not label a record `verified` without a directly checked source, a named reviewer, and a date.
2. Separate source-language witness, ancient translation, interpretive version, and NT quotation/allusion.
3. Store exact witness IDs, edition and passage locators, licensing/redistribution rights, and a stable revision.
4. Distinguish actual variant evidence from hypothesized Hebrew Vorlage, translation technique, and later interpretation.
5. Keep the manuscript/edition record free of theological conclusions; dossier authors may link and evaluate it.
6. Do not copy copyrighted critical apparatus, lexicon entries, or Bible text into this repository without rights review.

## Languages and traditions

- Hebrew: MT, Hebrew DSS, Samaritan Pentateuch.
- Aramaic: Biblical Aramaic in Daniel, Ezra, and Jeremiah 10:11; Aramaic Qumran manuscripts; Targums distinguished as translations or interpretive traditions.
- Greek: Septuagint, NT manuscripts and editions, Greek quotation/allusion comparisons.
- Syriac: Peshitta and other Syriac traditions, explicitly classified as versional witnesses, not automatically the original Aramaic of a biblical book.

## Next implementation steps

Curate a rights/source registry, perform Deut 18 / Acts 3 witness collation, add validation tooling, and cross-link the Messiah dossier to verified evidence IDs. A qualified scholarly review is required for textual conclusions.
