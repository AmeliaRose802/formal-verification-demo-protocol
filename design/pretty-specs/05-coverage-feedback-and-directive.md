# 05 · Live-site coverage feedback + the in-spec `@coverage` directive

**Status:** feedback consolidated · directive **implemented** (crystal-cryptal
PR [#36](https://github.com/AmeliaRose802/crystal-cryptal/pull/36))
**Audience:** pretty-specs maintainers · demo_protocol owner
**Companions:** [01-coverage-clarity.md](01-coverage-clarity.md) · [02-coverage-ledger.md](02-coverage-ledger.md) · [04-publishing.md](04-publishing.md)

This one-pager captures the concrete feedback from the published site
(`https://ameliarose802.github.io/formal-verification-demo-protocol/`), the
root cause of each symptom, and the fix that has now shipped on the
pretty-specs side.

---

## 1. What the live site actually shows (the symptoms)

1. **"📄 Spec-only" is everywhere and reads as noise.** The headline table
   stamps 📄 on every modeling helper, so a reader skimming the home page sees
   a wall of "spec-only" and can't tell the *deliberate* trust boundaries
   (HMAC) apart from ordinary ABI-width predicates. There is no legend or
   tooltip next to the badge, and no way to collapse/filter the modeling
   helpers out of the headline.

2. **Deliberate overrides render as a bare "—".** `hmacSha256` and
   `isValidSignature` are *intentional* trust boundaries (an assumed HMAC
   contract — see [01](01-coverage-clarity.md) §🔒). On the live site they show
   up in the home table with an empty dash in the badge cell, which looks like
   a rendering bug, not a designed assumption.

3. **The counts on the live site disagree with a local render.** Live shows
   🧩 0 / 🔒 0 / 📄 38; a local render shows 🧩 11. Same source, different
   numbers — which erodes trust in the whole matrix.

## 2. Root cause

Two independent causes, one per surface:

| Symptom | Root cause |
|---------|-----------|
| Live 🧩 0 vs local 🧩 11 | **`coverage.toml` was untracked.** CI (`regen-and-publish.yml`) rebuilds docs from source with the pinned published binary; with no `coverage.toml` in the tree it classifies every model helper as 📄. The local render had the file in cwd. |
| `hmacSha256` / `isValidSignature` render as "—" | **`private` model functions are listed in the home table but skipped from the coverage ledger.** They fall through to the legacy "no badge" cell. `coverage.toml` cannot reach them: the ledger drops `private` names *before* classification, so a `[assumption]` entry never applies. |

So the dash is not a one-off bug — it is structural: anything `private` that
the home table still lists has no ledger row to draw a badge from.

## 3. Fixes

### 3a. Committed now (effective with the pinned v0.2.0 binary)

- **Track `coverage.toml`.** Committed to `main`
  (`74221d1`). This alone fixes symptom (3) and classifies the 11 ABI-adapter
  helpers as 🧩 on the next publish — no binary change required, because
  `[abstraction]` entries are *public* functions the current binary already
  honors.

### 3b. Implemented in pretty-specs (gated on a release + version bump)

The `private`-helper dash (symptoms 1 & 2 for `hmacSha256` /
`isValidSignature`) cannot be fixed from `coverage.toml` — the trust boundary
has to be declared **next to the definition**, and the function has to be
opted back into the ledger. crystal-cryptal PR
[#36](https://github.com/AmeliaRose802/crystal-cryptal/pull/36) adds an in-spec
doc-comment directive:

```cryptol
private

  // Specs only use equality of HMAC outputs; the body is opaque to the solver.
  // @coverage trusted: deliberate override — the real HMAC-SHA256 is an
  //                     assumed contract, not proven equal to this placeholder.
  hmacSha256 : HmacKey -> Request -> HmacTag
  hmacSha256 k r = k ^ r ^ (r <<< 1)
```

| Directive | Resulting badge |
|-----------|-----------------|
| `@coverage trusted: <note>` | 🔒 Trusted assumption |
| `@coverage abstraction: <note>` | 🧩 ABI adapter / stand-in |
| `@coverage spec-only` | 📄 Spec-only |
| `@coverage exclude` | dropped from the matrix |

Behavior:

- A `private` function carrying a directive is **opted back into the ledger**
  with its declared badge (otherwise `private` stays hidden — unchanged).
- The directive line is **stripped from rendered prose**, so it never becomes
  the function's description; the note is surfaced in the per-page banner and
  the matrix Notes column instead.
- Unknown kinds degrade to "no directive" — never a wrong badge.
- Fully backward-compatible; mirrors the existing `EXPECTED VERDICT:` doc-comment
  precedent.

**Validated** locally against `cpp/saw/SDEP_cpp.cry` with the freshly built
binary: home table, function pages, and the coverage matrix all moved
`hmacSha256` / `isValidSignature` from "—" to **🔒 Trusted assumption**, with
the directive text correctly absent from all prose.

## 4. Why the spec tags are not committed yet (rollout ordering)

CI renders with the **pinned published** `PRETTY_SPECS_VERSION` (`v0.2.0`),
which predates the directive. If the `@coverage` tags landed in
`SDEP_cpp.cry` today, the published site would (a) still skip the `private`
functions, and (b) leak the raw `@coverage trusted: …` line as prose on their
pages. The tags must land **together with** the version bump:

1. Merge crystal-cryptal PR #36.
2. Cut a new pretty-specs release; record its tag + SHA256.
3. In demo_protocol: bump `PRETTY_SPECS_VERSION` + `PRETTY_SPECS_SHA256` in
   `.github/workflows/regen-and-publish.yml`, re-vendor
   `scripts/vendor/pipeline.ps1`'s banner.
4. **In the same PR/commit**, add the `@coverage trusted:` tags to
   `hmacSha256` / `isValidSignature` in `cpp/saw/SDEP_cpp.cry`.
5. Regenerate + verify the home table / matrix show 🔒, no dashes, no leaked
   directive text.

## 5. Still open (not addressed by the directive)

These are presentation asks from symptom (1) that the directive does **not**
solve:

- **A legend / tooltip for the badges on the home table.** 📄 in particular
  needs a one-line gloss inline, not only on the Coverage Matrix page.
- **A way to collapse or filter modeling helpers** out of the headline table
  so the proven decision functions aren't visually drowned by 📄/🧩 helpers.
- **Never render a bare "—" when a ledger is active.** Even an untagged
  `private` function that the home table lists should get an explicit
  "internal helper / not classified" badge rather than an empty cell, so a
  dash never reads as a rendering bug.

Tracked here for the maintainers; (1) and (3) are small renderer changes, (2)
is a larger UX decision.
