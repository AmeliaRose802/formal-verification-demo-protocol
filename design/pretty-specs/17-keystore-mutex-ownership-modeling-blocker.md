# One-pager: KeyStore mutex ownership-level modeling blocker

**Status:** open blocker  
**Audience:** saw-spec-gen maintainers  
**Target area:** lock-guarded methods in `cpp/src/key_store.cpp`

## Summary

Native `verify-cpp` runs confirm that exception lowering is active and not the
first blocker. Three methods fail at mutex ownership-level internals:

- `activate` (`DISPROVED`)
- `hasKey` (`DISPROVED`)
- `isActive` (`DISPROVED`)

Common failing surface:

- `_Verify_ownership_levels`
- `Error during memory load`

## Evidence

Logs:

- `cpp/saw/_ks_probe_vcpp/verifycpp_activate.log`
- `cpp/saw/_ks_probe_vcpp/hasKey_verifycpp.log`
- `cpp/saw/_ks_probe_vcpp/isActive_verifycpp.log`

Result artifacts:

- `cpp/saw/_ks_probe_vcpp/out_activate_verifycpp/result.json`
- `cpp/saw/_ks_probe_vcpp/out_hasKey_verifycpp/result.json`
- `cpp/saw/_ks_probe_vcpp/out_isActive_verifycpp/result.json`

## Why this blocks verification

Generator-provided lock overrides pin `_Mtx_lock` and `_Mtx_unlock` to
successful sentinel returns, but the simulation still reaches MSVC mutex
ownership-check helper logic and fails on typed memory loads in that path.

This prevents proofs from reaching stable functional obligations for the target
method semantics.

## Requested saw-spec-gen behavior

1. Treat known mutex ownership-check internals as sequential plumbing in this
   verification mode.
2. Provide a supported abstraction path for these helpers when proving
   sequential method semantics (without manual script patching).
3. Keep lock/unlock success-sentinel behavior but avoid stepping into
   unsupported ownership-level internals.

## Acceptance criteria

1. `activate`, `hasKey`, and `isActive` no longer fail with
   `_Verify_ownership_levels` memory-load errors under `verify-cpp`.
2. No manual SAW script edits are required.
3. Generated artifacts preserve explicit statement that the claim is sequential
   behavior, not concurrency correctness.
