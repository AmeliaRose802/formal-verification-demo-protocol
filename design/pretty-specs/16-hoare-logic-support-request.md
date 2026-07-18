# One-pager: request Hoare logic support in saw-spec-gen

**Status:** open feature request  
**Audience:** saw-spec-gen maintainers  
**Scope:** C++ verification pipeline (`verify-cpp`) with variable-length loops

## Problem statement

For parser and string-processing functions with variable-length scans, bounded
model checking is useful for bug finding but is not a robust closure strategy.
As bounds rise, solver cost grows quickly, and finite unrolling does not give a
general proof over all input lengths.

Current examples in this repo include JSON-key scans and route/canonicalization
walks in:

- `cpp/src/auth.cpp`
- `cpp/src/canonical.cpp`
- `cpp/src/controller.cpp`

The repo can model bounded slices, but cannot currently express or discharge
loop invariants through generated specs.

## Requested capability

Add a Hoare-style path in saw-spec-gen for loop reasoning, including:

1. User-declared loop invariants in generator configuration.
2. Emission path to SAW fixpoint-style obligations (for example CHC/fixpoint
   backends where applicable).
3. Verification-script scaffolding that proves:
   - invariant initialization,
   - invariant preservation across loop bodies,
   - postcondition derivation from invariant + exit condition.

## Why this matters

- Enables unbounded proof obligations for parser/string loops that are currently
  stuck in bounded-only mode.
- Reduces pressure to force very high bounds that are expensive and fragile.
- Aligns generated proofs with how these code paths are actually reasoned about
  (state progression + invariant preservation).

## Proposed user surface

Allow per-function invariant declarations in config, for example (shape only):

- invariant over index range and consumed-prefix relation,
- frame conditions for untouched memory regions,
- monotonicity and well-formedness predicates for parser state.

The key requirement is that this is first-class in `verify-cpp`, not a manual
post-edit flow.

## Acceptance criteria

1. `verify-cpp` can generate and run invariant-based obligations for at least
   one variable-length loop in this repo without manual SAW edits.
2. Result artifact clearly marks invariant-based proof mode vs bounded mode.
3. Documentation includes a minimal loop-invariant example and config shape.
4. Existing bounded-model path remains available as the default fallback.
