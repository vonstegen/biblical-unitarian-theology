# ADR-0001: Unified Biblical Theology Research Repository

- **Status:** Accepted — owner-confirmed; acceptance record update pending merge
- **Date:** 2026-11-10
- **Decision owner:** Repository owner (`vonstegen`)
- **Scope:** Repository-level research organization and change governance
- **Tracking:** Issue #1; PR #2

## Context

The existing repository contains (1) the Debt–Debtor thesis, with accepted chapters and its own canonical `WORKFLOW_CHECKLIST.md` and `01_Architecture_and_Outline.md`; (2) `aicnt-extension/`, explicitly defined in its README as a separate edition-development project; and (3) the proposed Messiah-centered REV reading and research track in `messiah-reading-research/`.

These tracks address related biblical-theological questions but have different products, evidence conventions, scholarly acceptance processes, and publication rights. Separate repositories would duplicate bibliography, references, governance, and links between studies. Folding everything into the dissertation would silently change its boundaries and acceptance record.

## Decision

**Use the existing `vonstegen/biblical-unitarian-theology` repository as the umbrella for a Biblical Theology research program.** Maintain distinct project tracks within it. No repository rename or migration is required to approve this ADR.

### Project boundaries

| Track | Current canonical location | Product | Boundary |
|---|---|---|---|
| Debt–Debtor thesis | Root documents, `chapters/`, `latex/` | Dissertation/manuscript | Preserve established constitution, accepted chapter status, thesis-specific evidence labels and build pipeline |
| AICNT extension | `aicnt-extension/` | Critical-edition format, OT/Apocrypha extension plans and pilots | Remains a **separate project** with independent licensing, methods, and deliverables; no automatic integration into thesis |
| Messiah reading and research | `messiah-reading-research/` | 365-day REV schedule, textual dossiers, thematic studies | Independent methodology and versioning; cites rather than edits other tracks |
| Shared program governance | `BIBLICAL_THEOLOGY_PROGRAM.md` and `docs/adr/` | Index, ADRs, cross-track policies | Governance only; not a substitute for each track's source of truth |

### Future shared resources (not created or migrated by this PR)

A `research-library/` may eventually contain bibliographies, source metadata, witness inventories, and reusable cross-reference indexes. Sharing must be **by explicit reference**, with provenance and licensing. Existing documents are not automatically canonical shared evidence and should not be moved without a separate migration ADR/PR.

### Theological and scholarly standards

- Scripture-first reading, with historical and literary context.
- Hebrew, Aramaic, and Greek source verification for claims that depend on original-language detail.
- Distinguish textual observations, variants, lexical claims, historical hypotheses, and theological inference.
- Present serious Biblical Unitarian, Trinitarian, and relevant Jewish scholarly readings fairly; do not hard-code a preferred outcome.
- Keep source text, translation, commentary, and AI-assisted conjecture separate.
- Do not change the accepted thesis' internal tagging system through this ADR.

### Versioning and status

- Git commits and PRs provide a full audit trail; release tags are optional program milestones.
- Each track maintains its own research/document version and changelog.
- **Proposed / Draft / Reviewed / Accepted / Superseded** are *research status labels*, distinct from Git branch/PR status.
- A merged PR is **not** proof that a theological or textual claim has scholarly acceptance.
- Do not retroactively rewrite accepted research status without a dedicated review.

### Human approval gates

1. A scoped GitHub issue states the goal, files, risks, and acceptance checks.
2. Work is committed to a feature branch; a PR links the issue and documents sources, validation, and affected tracks.
3. The owner reviews the **exact PR head commit** and records a clear decision (approval/sign-off or requested changes).
4. Only after sign-off may the PR be merged; subsequent commits require renewed review of the changed head.
5. A substantive research finding also requires its own evidence/reviewer acceptance, even if the PR merges.

**Enforcement caveat:** This ADR establishes policy, not an automatically configured GitHub ruleset. A sole owner may not be able to submit a GitHub PR approval review on their own PR. In that case, the owner should record explicit sign-off in a PR comment referencing the reviewed commit SHA and perform the merge personally. Branch protection/rulesets and independent required reviewers should be evaluated in a later administrative change; do not claim technical enforcement until verified.

### Rights and publication

External translation and critical-edition material remains under its own licenses. Reference or link to sources by default; reproduce only material permitted by license and copyright. Public repository visibility does not imply redistribution permission.

## Alternatives considered

1. **New repository per track:** stronger isolation, but unnecessary duplication and cross-repository friction now.
2. **Put all work under the Debt–Debtor thesis:** simpler directory layout, but conflates a finished/accepted thesis with exploratory work and edition production.
3. **Unified repository with separate tracks (chosen):** shared discovery and governance, preserved autonomy and clear scope boundaries.

## Consequences and migration plan

**PR #2 (merged):** added the ADR, program index, links, and initial Messiah track. No files were moved, no accepted chapters were changed, and no files inside `aicnt-extension/` were edited.

**Later, separately approved PRs:** evaluate root README navigation, shared source registry, issue templates, validation automation, branch rulesets, and any physical relocation of dissertation files. Each migration needs a compatibility map and checks for links, LaTeX build paths, and external citations.

## Approval record

**Owner decision confirmed:** On 2026-11-10, the repository owner stated in the Biblical Theology project conversation that PR #2 had been reviewed and approved. GitHub independently confirms PR #2 merged into `main` at commit `10e2021961dbfc4e92eef6dbfd03d24fe05787c2` (PR head `e8c1d9d8ba67036d518c4e60e2a53753934febf0`). At verification time, the GitHub review and issue-comment APIs showed no formal submitted review/comment. This record distinguishes owner confirmation in conversation from a GitHub-native review. The ADR's accepted status concerns the **repository architecture only**, not scholarly acceptance of any textual or theological findings. The present follow-up PR records the decision in the version-controlled source.
