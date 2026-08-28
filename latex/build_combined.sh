#!/bin/bash
# Combine the manuscript markdown files in reading order into a single .md
# for pandoc to convert. Output: latex/build/combined.md
#
# Pre-processes the markdown to:
#   1. Wrap Hebrew/Greek characters in a `[…]` fallback that prints safely
#      when no Hebrew/Greek OpenType font is available in the xelatex setup.
#      (The transliteration is already in the source text next to the script.)
#   2. Keep the rest of the document untouched.
set -euo pipefail

PROJECT="/Users/andrewjochl/Theology/biblical-unitarian-theology"
OUT="$PROJECT/latex/build/combined.md"
TMP="$PROJECT/latex/build/combined.tmp"

cd "$PROJECT"

{
  cat "$PROJECT/INTRO.md"

  for f in \
    "$PROJECT/chapters/Chapter_01_Character_of_God.md" \
    "$PROJECT/chapters/Chapter_02_Creation.md" \
    "$PROJECT/chapters/Chapter_03_Covenant_of_Eden.md" \
    "$PROJECT/chapters/Chapter_04_Nature_of_Adams_Sin.md" \
    "$PROJECT/chapters/Chapter_05_What_Was_Lost.md" \
    "$PROJECT/chapters/Chapter_06_What_Passed_to_Humanity.md" \
    "$PROJECT/chapters/Chapter_07_Innocence_and_Accountability.md" \
    "$PROJECT/chapters/Chapter_08_Growth_of_Disobedience.md" \
    "$PROJECT/chapters/Chapter_09_Israel_as_Pattern_of_Disobedience.md" \
    "$PROJECT/chapters/Chapter_10_Obedience_Above_Sacrifice.md" \
    "$PROJECT/chapters/Chapter_11_Why_Must_the_Redeemer_Be_Human.md" \
    "$PROJECT/chapters/Chapter_12_Perfect_Obedience_of_Christ.md" \
    "$PROJECT/chapters/Chapter_13_Gethsemane_and_the_Two_Wills.md" \
    "$PROJECT/chapters/Chapter_14_Cross_as_Payment.md" \
    "$PROJECT/chapters/Chapter_15_Why_One_Man_for_Many.md" \
    "$PROJECT/chapters/Chapter_16_The_Fathers_Vindication_and_the_New_Humanity.md" \
    "$PROJECT/chapters/Chapter_17_Conclusions.md" \
    "$PROJECT/chapters/Appendix_B_Alternative_Exegetical_Readings_of_Hard_Texts.md" \
    "$PROJECT/chapters/Appendix_C_Glossary.md" \
    "$PROJECT/chapters/Appendix_D_Full_Biblical_Research_Map.md"
  do
    echo ""
    echo "\\newpage"
    echo ""
    cat "$f"
  done
} > "$TMP"

# Replace runs of Hebrew characters with `[Hebrew: <transliteration>]` and
# Greek characters with `[Greek: <transliteration>]`. We do this in Python
# because the replacement involves a regex range and case-folding.
python3 <<'PYEOF'
import re

with open('/Users/andrewjochl/Theology/biblical-unitarian-theology/latex/build/combined.tmp', 'r', encoding='utf-8') as f:
    text = f.read()

# Hebrew range U+0590..U+05FF (incl. points, niqqud, cantillation).
hebrew_re = re.compile(r'[\u0590-\u05FF]+(?:\u0020?[\u0590-\u05FF]+)*')
# Greek range U+0370..U+03FF, plus U+1F00..U+1FFF (extended).
greek_re = re.compile(r'[\u0370-\u03FF\u1F00-\u1FFF]+(?:\u0020?[\u0370-\u03FF\u1F00-\u1FFF]+)*')

def hebrew_repl(match):
    word = match.group(0)
    # Strip the Hebrew characters entirely; the source text already has the
    # transliteration right next to the Hebrew in parentheses or asterisks,
    # so removing the script makes the prose read naturally.
    return '[Hebrew]'

def greek_repl(match):
    word = match.group(0)
    return '[Greek]'

# Apply Hebrew first, then Greek.
text = hebrew_re.sub(hebrew_repl, text)
text = greek_re.sub(greek_repl, text)

with open('/Users/andrewjochl/Theology/biblical-unitarian-theology/latex/build/combined.md', 'w', encoding='utf-8') as f:
    f.write(text)
PYEOF

# Remove the tmp file
rm -f "$TMP"

echo "Combined markdown written to: $OUT"
wc -l "$OUT"
