# Deuteronomy 18:15–19 — Direct OSHB source comparison

**Date:** 2026-11-12  
**Status:** Digital-source inspection complete; interpretation and manuscript-level verification remain in review.  
**Tracking:** Issue #7; follows merged PR #10.

## Source and extraction

Shared evidence record **EV-DEUT18-OSHB-001 revision 1** preserves the five complete verse XML elements from Open Scriptures Hebrew Bible (OSHB), `wlc/Deut.xml`.

- Source commit: `d4265dfa93b78d82765a557e12d965528c17c1a9`.
- File blob: `6966deedd88043fbef5a124d50e346711f652efa`.
- [Pinned source](https://github.com/openscriptures/morphhb/blob/d4265dfa93b78d82765a557e12d965528c17c1a9/wlc/Deut.xml).
- Original work of the Open Scriptures Hebrew Bible available at https://github.com/openscriptures/morphhb.
- WLC text is public domain; OSHB lemma/morphology metadata is CC BY 4.0 according to its README and LICENSE at that revision.

This is direct inspection of a digital transcription, not direct examination of the Leningrad Codex image or a critical apparatus. The evidence record remains `in_review`.

## Comparison procedure

Extract the text inside OSHB word elements in verse order. Compare it with the BTB Hebrew frontmatter field for the corresponding verse, using the BTB blob revisions documented in [the previous alignment](DEUT18_PRELIMINARY_LANGUAGE_ALIGNMENT.md).

For the comparison only, remove OSHB slash segmentation, whitespace, maqqef (U+05BE), and sof pasuq (U+05C3). Do not apply Unicode normalization or alter the stored source XML. For an additional consonantal comparison, remove Hebrew combining marks U+0591–U+05BD, U+05BF–U+05C2 and U+05C4–U+05C7. These are explicitly limited comparison views, not replacement transcriptions.

| Verse | Pointed/ accented sequence after boundary removal | Consonantal sequence |
|---|---|---|
| 18:15 | Different accent mark | Agrees |
| 18:16 | Different accent mark | Agrees |
| 18:17 | Agrees | Agrees |
| 18:18 | Agrees | Agrees |
| 18:19 | Agrees | Agrees |

Differences observed:

- 18:15, the word “from your brothers”: OSHB has U+05A8 at the compared position; BTB has U+0599.
- 18:16, the word “your God”: OSHB has U+05A8 at the compared position; BTB has U+0599.

These are differences between the inspected digital files. Their upstream origin and manuscript significance have not been determined. Consonantal agreement does not establish that these sources are independent witnesses.

## Limited findings

**[T]** The inspected Hebrew sources agree on the words in verse 19's accountability clause. OSHB's final word elements, exactly as stored, are `אָנֹכִ֖י`, `אֶדְרֹ֥שׁ`, `מֵ/עִמּֽ/וֹ`.

**[L, provisional]** An idiomatic English proposal is “I myself will hold him accountable.” This is a proposed contextual rendering, not a newly verified lexical conclusion.

**[I]** This strengthens the Hebrew basis of the earlier comparison with Acts 3:23; it does not decide which Torah warning Acts draws upon. See [the Leviticus–Numbers comparison](ACTS3_TORAH_WARNING_COMPARISON.md) and shared Acts record **EV-ACTS3-SBLGNT-001 revision 1**.

## Remaining work

The extraction and digital comparison portion of gate 1 in the earlier note is now documented. Critical-edition LXX comparison, manuscript and DSS/Samaritan coverage, independent original-language review, and the origin of the quotation adaptation remain outstanding. A focused Aramaic Targum comparison follows the Hebrew–Greek foundation; Targums must retain their interpretive-version classification and individual dating qualifications.

No shared record is promoted to `verified`, and no theological conclusion is accepted by this source check alone.
