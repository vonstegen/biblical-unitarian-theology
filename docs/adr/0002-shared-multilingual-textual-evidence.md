# ADR-0002: Shared Multilingual Textual Evidence Contract

- **Status:** Accepted — owner-confirmed, recorded in follow-up PR
- **Date:** 2026-11-10
- **Parent decision:** [ADR-0001](0001-unified-biblical-theology-repository.md) (accepted)
- **Issue:** #4

## Context

The repository already has a substantial AICNT-derived edition-development track in `aicnt-extension/` (format specification, OT extension plan, and a Greek Tobit pilot). The new `messiah-reading-research/` track requires textual evidence for theological and intertextual studies. Building a second OT translation/apparatus pipeline in the Messiah track would duplicate effort, create contradictory witness records, and blur critical-text work with interpretation.

The Hebrew Scriptures also require multiple languages and *different witness functions*: biblical Hebrew and Aramaic compositions; Greek Septuagint translations (which may reflect different Hebrew source texts); Aramaic Targums (often interpretive); Syriac Peshitta translations; and Greek New Testament quotations or allusions. These cannot be flattened into interchangeable manuscript variants.

## Decision

**One shared evidence contract, separate project deliverables.**

- `aicnt-extension/` remains the canonical home of the proposed critical-edition production method, apparatus design, and pilot editions.
- `messiah-reading-research/` owns reading plans, historical exegesis, theological argument, and intertextual dossiers.
- `research-library/` holds *metadata, identifiers, schemas, source registries, and links* that both tracks can consume. It is **not** a new critical edition and does not own an independent translation engine.
- Each record identifies the **work, passage, language, textual layer, witness/edition, provenance, rights, verification state, and revision**.
- A dossier cites the evidence record ID and its version/commit, and adds interpretation in its own track. It does not overwrite the underlying witness record.

## Distinguish language from witness function

| Case | Language | Textual function |
|---|---|---|
| Masoretic Hebrew or Hebrew Qumran fragment | Hebrew | Original-language witness (with its own scribal history) |
| Aramaic Daniel/Ezra or Aramaic Qumran composition | Aramaic | Original-language witness where the work is Aramaic |
| Aramaic Targum | Aramaic | Ancient translation / often interpretive witness; do not automatically infer a different Hebrew Vorlage |
| Septuagint | Greek | Ancient translation; difference may be translator technique, different Vorlage, or later textual transmission |
| Greek NT manuscript | Greek | NT textual witness |
| Greek NT citation of Hebrew Scripture | Greek | Quotation/allusion **relationship**, not automatically a variant in either book |
| Syriac Peshitta | Syriac | Versional witness; Syriac is a form of Aramaic but has a distinct transmission tradition |
| Samaritan Pentateuch | Hebrew | Distinct Pentateuchal textual tradition, not a Greek/Aramaic translation |

Do not assume that the oldest surviving witness is always the original reading. Distinguish manuscript evidence from editorial reconstruction.

## Evidence schema v0.1

See `research-library/schema/textual-evidence-record.schema.json`. A record includes:

- Stable `record_id` and `revision`.
- `work`, `passage`, `language`, `textual_layer`, `witness_kind`.
- `witness_id` and `edition_id` where known; explicit `unknown` / `not_applicable` where appropriate.
- `source_locator`, `rights_status`, `verification_status`.
- `relationship` and `related_record_ids` for explicit comparison/quotation links.
- `reviewer` and `verified_at` only when actually verified.

**Critical rule:** A proposed or unverified record cannot be cited as verified manuscript attestation. Any published variant claim must name a witness and independently checked edition/primary evidence.

## Critical-text questions requiring explicit editorial decisions

1. **Masoretic ketiv/qere:** represent the written and read traditions distinctly; do not automatically call the qere a separate manuscript witness.
2. **Consonantal text vs vocalization:** record the evidence layer; late vocalization may inform reading without being a different consonantal manuscript.
3. **LXX vs Hebrew:** distinguish Greek translator choices from plausible different Hebrew Vorlagen; note uncertainty.
4. **Parallel literary editions:** Jeremiah's MT and Greek shorter edition cannot always be reduced to a single brace/bracket variant.
5. **AICNT notation:** keep `{}`, `[]`, `[[]]` as a publication presentation convention **only after** textual relationships are established; notation does not itself establish originality.
6. **Aramaic:** separate Biblical Aramaic composition from Aramaic interpretive translations and from Syriac versional material.
7. **Canon:** 66-book REV reading schedule remains separate from edition research on deuterocanonical works (e.g., Tobit).

## First integration pilot

`Deuteronomy 18:15–19` (Hebrew MT; Septuagint Greek; relevant other witnesses) ↔ `Acts 3:22–23` (NT Greek), with a quotation/allusion relationship. The Greek Tobit pilot remains independently documented and **does not** constitute completion of a Hebrew/Aramaic OT pipeline.

Pilot output: record inventory, provenance/rights table, phrase alignment, alternatives for Acts 3:23's source, verification log, and theological dossier referencing records. All primary textual claims remain pending until collated.

## Governance and acceptance

- PRs change schema/metadata, not accepted thesis chapters.
- Schema changes require version increments, migration notes, and review by both affected tracks.
- No copied licensed apparatus data without a rights determination.
- Owner approves architecture via PR; a qualified language reviewer must separately validate philological claims before scholarly acceptance.
- Git merge and theological acceptance are separate events.

## Consequences

This reduces duplication and makes evidence traceable across projects, but introduces shared record maintenance and explicit source-rights management. No data migration or critical edition is claimed in this ADR. A future implementation PR can add automated validation and curated witness inventories after approval.

## Alternatives

- Two independent OT pipelines: rejected (duplicated apparatus and conflicting sources).
- Put all textual evidence inside the Messiah study: rejected (conflates critical edition with interpretation).
- Move AICNT extension files now: rejected (breaks existing ownership and links without need).

## Acceptance record

On 2026-11-10, the repository owner confirmed in the Biblical Theology project conversation that PR #5 was reviewed and merged. GitHub independently confirms that [PR #5](https://github.com/vonstegen/biblical-unitarian-theology/pull/5) merged into `main` at commit `0afa0ed7f0c78705c51d240be373eecdd1bd6126`, from PR head `6214d506891a061b084d2d60e90f6b926e7b5842`. This ADR's acceptance covers **the cross-track evidence architecture only**; no Greek, Hebrew, or Aramaic manuscript claim is thereby verified. This follow-up PR records the accepted status in source control.
