#!/bin/bash
# Build the rough-draft PDF.
# Usage: ./build.sh
set -euo pipefail
export PATH="/Library/TeX/texbin:$PATH"

PROJECT="/Users/andrewjochl/Theology/biblical-unitarian-theology"
LATEX="$PROJECT/latex"
BUILD="$LATEX/build"
SRC="$BUILD/combined.md"

# Versioned PDF filename for archiving.
# Source the revision label and date from the same place the PDF metadata uses.
REVISION_SLUG="v1.3-phd-appA"                 # v1.0 baseline; v1.1 re-grounds Ch 11/15 as a paired gate; v1.2 = full final-acceptance pass (all 17 chapters + appendices accepted); v1.3 = PhD expansion begins (Ch 0 Methodology + Appendix A added)
DATE_STAMP="$(date -u '+%Y-%m-%d')"            # date only; archives don't need second-precision; the paired-foundation v1.1 draft uses the run date
DRAFTS_DIR="$PROJECT/drafts"                   # archived PDFs go here, not in the project root
OUT_PDF="$DRAFTS_DIR/rough_draft_${REVISION_SLUG}_${DATE_STAMP}.pdf"
COMPILE_TS="$(date -u '+%Y-%m-%dT%H:%M:%SZ')"

mkdir -p "$DRAFTS_DIR"

cd "$LATEX"

# 1. Refresh combined.md from the source-of-truth markdown files.
bash "$LATEX/build_combined.sh"

# 2. Run pandoc -> LaTeX. header.tex is the preamble (cover, watermark, header/footer).
pandoc "$SRC" \
  --from markdown+yaml_metadata_block+raw_tex \
  --to latex \
  --top-level-division=chapter \
  --toc \
  --toc-depth=2 \
  -H "$LATEX/header.tex" \
  -V documentclass=book \
  -V classoption=oneside \
  -V classoption=12pt \
  -V "title=The Debt-Debtor Thesis of Redemption" \
  -V "subtitle=A Bible-Only Biblical Theology of Redemption" \
  -V "author=Andrew Jochl" \
  -V "date=$(date -u '+%Y-%m-%d %H:%M UTC')" \
  -o "$BUILD/combined.tex"

# 3. Compile with xelatex (twice for TOC + page refs). xelatex handles Unicode natively.
cd "$BUILD"
xelatex -interaction=nonstopmode -halt-on-error combined.tex > xelatex.log 2>&1 || {
  echo "First xelatex pass failed. Tail of log:"
  tail -80 xelatex.log
  exit 1
}
xelatex -interaction=nonstopmode -halt-on-error combined.tex > xelatex.log 2>&1 || {
  echo "Second xelatex pass failed. Tail of log:"
  tail -80 xelatex.log
  exit 1
}

# 4. Copy final PDF to project root with a stable name.
cp combined.pdf "$OUT_PDF"

echo ""
echo "Build complete:"
echo "  Combined markdown:  $SRC ($(wc -l < "$SRC") lines)"
echo "  Combined LaTeX:     $BUILD/combined.tex ($(wc -l < "$BUILD/combined.tex") lines)"
echo "  Rough-draft PDF:    $OUT_PDF ($(ls -lh "$OUT_PDF" | awk '{print $5}'))"
echo "  PDF pages:          $(pdfinfo "$OUT_PDF" 2>/dev/null | awk '/^Pages:/{print $2}')"
echo "  Compiled at:        $COMPILE_TS"
