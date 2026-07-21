# 24 · Live-site regressions (Jul 2026) and source-side fixes

**Status:** applied in demo_protocol source branch `fix/pretty-specs-coverage-manifest`
**Audience:** demo_protocol maintainers and pretty-specs maintainers

## What was observed on the published site

1. The Functions table appears malformed roughly halfway down the page.
2. The site reports `⚠️ 0 unverified` despite known unverified implementation functions.
3. Several rows show a bare `—` status with no local legend, so the meaning is unclear.

## Root causes found in this repo

1. **Coverage manifest and implementation inventory were out of sync with generated docs.**
   The coverage join reads `implementation_inventory.json` at repo root. If that file only contains the decision subset, unverified implementation symbols are invisible.

2. **Pipeline wrapper was too narrow for inventory refresh.**
   `scripts/regen-docs.ps1` verified against `cpp/src/decision.cpp` (by design for stable SAW runs), but the root inventory still needs to be refreshed from the fuller sidecar (`cpp/saw/implementation_inventory.json`) before rendering coverage docs.

3. **Unclassified helper rows degrade to bare `—` in generated home table.**
   Internal model helpers such as `asciiLower`, `hostEqLit*`, `hasUserinfo`, `isImdsAlias`, `isWireServerAlias`, and `boolOfByte` were not explicitly classified in the coverage config, so the homepage status cell is ambiguous.

4. **Malformed property topic naming remains a generator-side issue.**
   The generated `docs/properties/prove).md` topic and corresponding link text (`prove).md`) indicate a pretty-specs title/slug extraction bug in property grouping metadata. This should be fixed in pretty-specs, not by hand-editing generated docs.

## Source-side fixes applied here

1. **Reintroduced and expanded `coverage.toml`** with explicit `[abstraction]` classifications for internal helper functions so they render with semantic badges/notes rather than a bare dash.

2. **Updated `scripts/regen-docs.ps1`** to copy
   `cpp/saw/implementation_inventory.json` to root `implementation_inventory.json`
   before docs regeneration, so coverage pages can include the full implementation set.

3. **Kept docs edits source-driven only.**
   No manual edits to generated markdown under `docs/` were used as the primary fix path.

## Remaining upstream fixes required in pretty-specs

1. Eliminate malformed property page/title generation (`prove)` artifact).
2. Define and render a first-class status label for internal helper rows (or map them through coverage classification consistently).
3. Ensure the homepage status legend explains `—` when present.

## Verification notes

- Regeneration is executed via `scripts/regen-docs.ps1`.
- Current environment showed transient pipeline incompatibilities around verify-cpp CLI argument forwarding in one wrapper path; source-side fixes here keep regen aligned with the native pretty-specs `--pipeline` route used in this repo.
