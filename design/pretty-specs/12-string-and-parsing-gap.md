# One-pager: unverified string, map, and parsing functions

**Status:** open · **Audience:** repo maintainers · **Group:** STL / string processing / parsing / exceptions

## Current blocker update (2026-07-09)

A direct saw-spec-gen attempt for representative functions in this gap is documented in:

- `design/pretty-specs/15-saw-spec-gen-string-parsing-blocker.md`

Summary: generated `verify.saw` files are produced, but SAW fails at module load with `TYPE_CODE_TOKEN` before proof obligations run. Gap remains open pending tooling support.

## Functions in this group

These implementation functions are currently not verified against the model:

- `sdep::canonicalizeHeaders`
- `sdep::canonicalizeQuery`
- `sdep::canonicalizePayload`
- `sdep::isValidClaims`
- `find_top_level_key` (local helper)
- `sdep::Uuid::from_string`
- `sdep::Uuid::to_string`
- `sdep::FleetController::has_metadata_header`
- `sdep::FleetController::has_provision_scheme`
- `sdep::FleetController::parse_activate_path`

Source files:

- `cpp/src/canonical.cpp`
- `cpp/src/auth.cpp`
- `cpp/src/uuid.cpp`
- `cpp/src/controller.cpp`

## Why this group is not verified today

These functions all sit on the same tooling wall:

1. heavy use of `std::string`, `std::map`, `std::vector`, and sorting,
2. parsing logic over variable-length inputs,
3. exception paths for malformed inputs,
4. normalization logic whose security value depends on exact byte behavior.

The repo already has model-level properties for some of this behavior,
especially around canonicalization injectivity and request-bound timestamps.
What it does not have is an implementation-level proof that the real C++ string
and parsing code equals those models.

## What is already covered at the model level

The spec does cover some of the intended behavior abstractly:

- bounded canonicalization and injectivity properties,
- exclusion of the auth header from the signed payload,
- request-bound timestamp handling.

That means the design intent is not missing. The missing step is tying the real
string-heavy implementation to that intent.

## Why the proof pipeline stops here

### STL containers and sorting dominate the execution surface

`canonicalizeHeaders` and `canonicalizeQuery` build normalized vectors, sort
them, then append length-prefixed records into a `std::string`. This is not a
small pure byte-buffer kernel like `canonicalize_lp`; it is a library-heavy
string/map pipeline.

### Parsers are variable-length and branch on content

`find_top_level_key`, `Uuid::from_string`, and `parse_activate_path` branch on
input content at many points and may allocate or throw exceptions. They are
still verifiable in principle, but not with the repo's current leaf-style
auto-generated equivalence harnesses.

There is also a scoping decision hidden inside the UUID helpers:

- if UUID parsing/formatting came from an external, widely trusted library,
   treating it as a trusted boundary would be reasonable;
- in this repo, `Uuid::from_string` and `Uuid::to_string` are implemented
   locally in `cpp/src/uuid.cpp`, so by default they should be treated as
   in-scope implementation code rather than silently assumed correct.

If the project later decides to trust them anyway, that should be called out as
an explicit local trusted-helper assumption, not presented as if the functions
were external primitives.

### Route and header helpers are tiny, but not independent

`has_metadata_header`, `has_provision_scheme`, and `parse_activate_path` look
small, but each depends on the same string-heavy helper layer. Treating them as
isolated leaves does not buy much unless the lower string/parsing contracts are
available.

## What would verify this group

### Option A — verify bounded cores and compose upward

Keep using bounded models for the byte-level core and prove small reusable
helpers first:

- canonical framing helper,
- UUID parser/formatter contracts,
- top-level JSON-key presence contract,
- route-shape parser contract.

Then prove the larger functions compositionally from those helpers.

For loops or scans that are not naturally discharged by a small bound, a second
route is worth keeping on the table: use Hoare-style reasoning with explicit
loop invariants. In practice that means proving the body maintains an invariant
over the parser/string state rather than forcing the entire proof through a
fully bounded unrolling. That is the right direction for variable-length scans
once the bounded model stops being a good fit.

### Option B — add stronger override / contract support for STL-heavy code

Teach the generator to work compositionally across string/map/sort boundaries
with reusable contracts rather than trying to symbolically execute all of the
library internals every time.

That is the more scalable long-term direction.

## Recommendation

Treat this as one family of "string and parsing" gaps rather than many separate
ones. The best path is to prove narrow helper contracts and reuse them:

- `canonicalizePayload` should depend on smaller canonicalization helper specs.
- `isValidClaims` should depend on a bounded JSON-key lookup contract.
- `parse_activate_path` should depend on a UUID parser contract.

For UUID specifically: if the repo wants a narrow trusted boundary, it is more
defensible to trust an external UUID library than to silently trust the local
`cpp/src/uuid.cpp` implementation. Since the current UUID code is ours, the
default recommendation is still to verify it or mark it explicitly as a local
assumption.

## Acceptance criteria

1. `canonicalizePayload` is no longer the first point where string processing
   enters the proof story.
2. UUID parsing/formatting and the JSON-key scanner each have explicit helper
   contracts, or UUID is explicitly documented as a trusted helper boundary.
3. Route/header helper functions are either proved directly or clearly marked as
   conditional on lower parser contracts.
4. The docs keep route normalization / RBAC matching distinct from HMAC payload
   canonicalization.
5. For variable-length scans that exceed the practical bounded model, the docs
   identify Hoare triples / loop invariants as the next proof technique rather
   than implying the only option is finite unrolling.
