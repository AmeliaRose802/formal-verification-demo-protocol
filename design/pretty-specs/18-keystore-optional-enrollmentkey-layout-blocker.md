# One-pager: KeyStore optional layout/type-alias blocker

**Status:** open blocker  
**Audience:** saw-spec-gen maintainers  
**Target area:** `std::optional<EnrollmentKey>` handling in `cpp/src/key_store.cpp`

## Summary

Under native `verify-cpp`, two KeyStore methods fail before functional proof
obligations because the optional aggregate type is unsupported in generated
typing/layout handling:

- `current` (`UNKNOWN`)
- `provision` (`UNKNOWN`)

Observed error:

- `unsupported type: %"std::optional<EnrollmentKey>"`
- `Unknown type alias Ident "std::optional<EnrollmentKey>"`

## Evidence

Logs:

- `cpp/saw/_ks_probe_vcpp/current_verifycpp.log`
- `cpp/saw/_ks_probe_vcpp/provision_verifycpp.log`

Result artifacts:

- `cpp/saw/_ks_probe_vcpp/out_current_verifycpp/result.json`
- `cpp/saw/_ks_probe_vcpp/out_provision_verifycpp/result.json`

Generated script context (for `current`):

- `cpp/saw/_ks_probe_vcpp/out_current_verifycpp/verify.saw`

## Why this blocks verification

Both methods expose or return optional key state. If the generator cannot
resolve the optional alias/layout, the script cannot type-check or encode the
target return/state obligations, so verification cannot proceed.

## Requested saw-spec-gen behavior

1. Resolve and model `std::optional<EnrollmentKey>` alias/layout consistently
   in generated C++ verify scripts.
2. Support aggregate return modeling for this optional shape in both:
   - read accessor return (`current`),
   - state transition return (`provision`).
3. Keep this in native `verify-cpp` flow, without manual SAW patching.

## Acceptance criteria

1. `current` and `provision` no longer exit as `UNKNOWN` due to unsupported
   optional type alias/layout.
2. Generated scripts type-check and run to proof obligations.
3. Result artifacts for both functions are `PROVED` or `DISPROVED` (not
   layout/typing `UNKNOWN`).
