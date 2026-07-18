# One-pager: saw-spec-gen blocker for string/parsing verification

**Status:** open blocker  
**Audience:** repo maintainers / saw-spec-gen maintainers  
**Related gap:** `12-string-and-parsing-gap.md`

## Current blocker update (2026-07-09, native path)

Re-ran the same target family through native `saw-spec-gen verify-cpp`
(which includes exception lowering). The run reaches SAW script loading and
then fails in generated override typing, for example on `canonicalizePayload`:

```text
Incompatible types for return value when verifying
?size@?$basic_string@...@std@@QEBA_KXZ
Expected: i64
but given value of type: [16 x i8]
```

Log/artifacts:

- `cpp/saw/_string_gap_probe/verifycpp_canonicalizePayload.log`
- `cpp/saw/_string_gap_probe/out_canonicalizePayload_verifycpp/`

So this remains a saw-spec-gen generation/bridge blocker even on the
recommended verify-cpp path.

## What was attempted

Tried to close the string/parsing gap strictly through generated specs (no manual SAW script edits), using `saw-spec-gen gen-verify` on representative functions from:

- `cpp/src/canonical.cpp` (`canonicalizePayload`)
- `cpp/src/auth.cpp` (`isValidClaims`)
- `cpp/src/controller.cpp` (`has_metadata_header`)

Probe outputs are under:

- `cpp/saw/_string_gap_probe/`
- `cpp/saw/_string_gap_probe/canon_gen.log`
- `cpp/saw/_string_gap_probe/hdr_gen.log`
- `cpp/saw/_string_gap_probe/claims_gen.log`
- `cpp/saw/_string_gap_probe/canon_saw.log`
- `cpp/saw/_string_gap_probe/hdr_saw.log`
- `cpp/saw/_string_gap_probe/claims_saw.log`

## Observed blocker (earlier ad hoc probe)

For all tested targets, `saw-spec-gen` successfully generated `verify.saw`, but SAW failed before proof obligations, at module load:

```text
not implemented
from:
        TYPE_CODE_TOKEN
        TYPE_BLOCK
        type symbol table
        MODULE_BLOCK
        Bitstream
```

This occurred while loading generated scripts for:

- `out_canonicalizePayload/verify.saw`
- `out_has_metadata_header/verify.saw`
- `out_isValidClaims/verify.saw`

So verification currently fails before symbolic execution starts.

## Secondary finding

The generator also warns that Cryptol signatures for these functions cannot be parsed from `cpp/saw/SDEP_cpp.cry` (expected today, since this module contains decision-surface shims, not string/map/parser ABI shims):

- `canonicalizePayload`
- `has_metadata_header`
- `isValidClaims`

This is not the first failure (SAW load fails earlier), but it is still a required follow-on gap to actually prove equivalence once module loading is unblocked.

## Why this blocks gap 12 now

The current gap-12 family depends on STL-heavy / parsing-heavy implementations.
With current tooling, even the native verify-cpp path fails before obligations
for these targets can be discharged (now at generated override type mismatch,
earlier at module-load parser limitations).

## Required tooling work

### 1) Generated STL override type correctness

Need generated override signatures/returns to match LLVM declarations for
string-heavy methods (for example `std::string::size()` expected `i64` but
generated override returned `[16 x i8]` in this repro).

### 2) Loader/parsing compatibility for this IR shape

Need an end-to-end path where SAW can load the emitted module for these targets (or a generator-supported transform that preserves target semantics while removing unsupported IR forms).

### 3) C++ string/parser ABI shim support in Cryptol bridge

Need a practical generated bridge for string/map/optional/string_view-heavy signatures, or a supported contract boundary mechanism to verify these functions compositionally instead of forcing full ABI-level equivalence in one shot.

### 4) Hoare/fixpoint path for variable-length scans

For scanners/parsers like JSON key search and route parsing, bounded unrolling is not a robust long-term strategy. We should add generator support for a Hoare-style route (loop invariants / fixpoint obligations) so proofs are not limited to finite unroll bounds.

## Recommendation

Do not mark gap 12 as closed yet. Keep it as an open tooling blocker and track it as:

- immediate: SAW load compatibility for generated modules (`TYPE_CODE_TOKEN` failure)
- immediate: generated override type correctness for STL-heavy targets on verify-cpp
- near-term: generated contracts/bridges for string/parser signatures
- strategic: Hoare/fixpoint generation support for variable-length parser loops
