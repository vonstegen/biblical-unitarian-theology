# Pilot: Tobit 1 in AICNT Format

**Goal:** validate the AICNT book format (`../01_FORMAT_SPEC.md`) on a book outside the New Testament, end to end: Greek base text → protocol rendering → apparatus → formatted chapter. Artifact: `Tobit_1_AICNT_pilot.md`.

## Why Tobit 1

The only deuterocanonical book with two complete Greek recensions — GI (short; Vaticanus/Alexandrinus line) and GII (long; Sinaiticus line, ~1,700 words longer, closest to the Qumran Aramaic/Hebrew fragments 4QTob<sup>a–d</sup> and 4QTob<sup>e</sup>). That is real, well-documented textual variation in a Greek text: the pilot exercises the two things the format exists for — the rendering protocol and a genuine apparatus. Chapter 1 is a self-contained unit ending at Tobit's restoration.

## Sources

| Input | Source |
|---|---|
| GII Greek (base) | CCAT lxxmorph `23.TobitS.mlxx` (Sinaiticus line; follows the Göttingen text where the codex is defective) |
| GI Greek (apparatus) | CCAT lxxmorph `22.TobitBA.mlxx` (Vaticanus/Alexandrinus line) |
| Recension facts, priority argument, critical notes | A. A. Di Lella, "To the Reader" + Tobit translation, NETS (Oxford, 2009); via `nets_edition/19-tobit-nets.pdf` |
| Benchmark edition (named, not consulted directly) | R. Hanhart, *Septuaginta VIII.5: Tobit* (Göttingen, 1983) |

Witness sigla used in the apparatus: GII = S + 319 (3:6–6:16) + 910 (2:2–5) + La (Old Latin); GI = B A V 990 and most cursives; Qumran = 4QTob<sup>a–d</sup> (Aramaic), 4QTob<sup>e</sup> (Hebrew).

## Protocol (per spec §7, adapted)

System message used for every rendering:

> You are translating Koine Greek (Septuagint, book of Tobit) into English for a critical edition. Rules: (1) Render literally and accurately; do not paraphrase or smooth the Greek. (2) Use only the LEH lexicon (Lust-Eynikel-Hauspie, A Greek-English Lexicon of the Septuagint) for word meanings. (3) Do NOT capitalize pronouns referring to God. Capitalize "God", "Lord", "Most High" as customary. (4) Neutral rendering; do not favor any theological tradition. (5) Preserve wording and clause structure. (6) Output verse number in brackets, then the rendering, one verse per line.

- Lexicon: **LEH** in place of BDAG — the standard LXX lexicon, the direct BDAG analogue.
- Both recensions rendered independently, 22/22 verses each. Nothing human-translated, including apparatus renderings.

### Deviations from the spec (documented, not hidden)

1. **Segmentation:** 4-verse batches, not paragraph/sentence granularity. Spec §7 prefers smaller segments; the larger batches still completed with clean output, but spec-compliant production should use sentence-level input.
2. **Temperature:** the rendering harness did not expose a temperature parameter; spec §7 calls for 0. Determinism untested in this pilot.
3. **Human review pass:** not performed (no qualified reviewer in the loop). The QA findings below are exactly what that pass would catch.
4. **Benchmark apparatus (Göttingen/Hanhart) not consulted directly** — the pilot's apparatus is built from the two recension texts + NETS notes. Production requires the full Göttingen apparatus.
5. **GIII** (min. 106–107, 6:9–12:22) is out of scope for chapter 1 by definition.

## Editorial decisions

1. **Base text = GII.** Grounds: Qumran agreement, majority scholarly consensus (Di Lella's "To the Reader" summarizes it), Hanhart's own later judgment that GI is a reworking of GII. This mirrors the AICNT rule "base = earliest-attested readings."
2. **Notation mapping** (spec §3): `{ }` = GII wording where GI has different wording (footnote: "Some manuscripts read … GI"); `[ ]` = GII text absent from GI (footnote: "Absent from GI"); GI *pluses* documented in footnotes only (no bracket), following the AICNT treatment of additions.
3. **Exclusions applied** (spec §5): recension name-spelling differences (Tobit/Tobith, Enemessar/Enemessaros, Naphtali/Nephthalim), article presence/absence, and equivalent renderings (e.g., "came to"/"went down to" Nineveh in 1:22) are not footnoted.
4. **Clarifying footnotes** (spec §19 types): note `b` (Aram/Heb direction gloss) is a type-1/type-3 note; note `a` carries the Qumran alignment statement; note `d` documents an editorial disagreement (Hanhart vs. Sinaiticus facsimile, per NETS).

## QA findings (what the spec's review pass exists to catch)

1. **Transliteration inconsistency:** "Naphtali" (1:1, 4) vs "Nefthalim" (1:5) in the same chapter; "Ierobeam" (Jeroboam), "Mōsēs" (Moses), "Aarōn" — the renderer's vowel-length marks are inconsistent. Spec §7's consistency QA + a name-transliteration policy (front matter) fixes this.
2. **Literal-Greek stiffness at 1:21:** "Achicharos the son of Anael, the son of my brother" (τὸν τοῦ ἀδελφοῦ μου υἱόν) reads as two generations; a re-render pass would produce "the son of Anael, my brother's son." Flagged, left as-is per "render literally, don't interpret."
3. **"for the use" (1:13):** εἰς τὴν χρῆσιν rendered woodenly; footnote `r` carries the GI wording; a clarifying footnote ("everything he needed," per NETS) would be added in production.
4. **Verse-division drift (1:10–15):** GII and GI divide sentences differently; the pilot follows the GII divisions (spec §5: verse-division differences not noted, editions' divisions followed).

## Compliance check against the spec

| Spec § | Requirement | Pilot |
|---|---|---|
| §3 | `{}`, `[ ]` notation with per-span footnote letters, restarting per chapter | ✓ 31 letters a–ae, in order of appearance |
| §4 | Footnote grammar: `letter ref phrase — statement witnesses` | ✓ "Some manuscripts read"/"Absent from" templates |
| §8 | No deity-pronoun capitalization; God/Lord/Most High capitalized | ✓ verified programmatically (only sentence-initial "My" and first-person "I" capitalized) |
| §8 | No headings beyond chapter label; frequent paragraphing | ✓ (paragraph breaks every 1–3 verses) |
| §9 | `FOOTNOTES` + count + notes at chapter end | ✓ (31) |
| §19 | Clarifying footnote types | ✓ notes a, b, d |
| §10 | Everything AI-rendered, including apparatus | ✓ both recensions rendered |

## Open items for production

- Temperature-0 rendering (deviation 2) and sentence-level segmentation (deviation 1).
- Direct access to the Göttingen Tobit apparatus (Hanhart 1983) — the licensed data problem flagged in `../02_OT_EXTENSION_PLAN.md` §9 shows up concretely here.
- Name-transliteration policy statement for the front matter.
- Whether the whole book gets the `{ }` treatment verse-by-verse (dense apparatus) or the synoptic parallel-columns treatment (HBCE model; see `../02_OT_EXTENSION_PLAN.md` §3) — chapter 1's density (31 notes) suggests the book would run ~400+ notes; parallel columns may serve Tobit better.
