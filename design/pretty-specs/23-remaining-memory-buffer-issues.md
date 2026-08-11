# Remaining Memory Buffer Issues (2026-07-16)

This note isolates the still-open memory buffer failures in `verify-cpp` for KeyStore methods after recent saw-spec-gen fixes.

## Scope

In scope:

- `activate` (`keyStoreActivateRet`)
- `provision` (`keyStoreProvisionRet`)

Out of scope:

- `hasKey` / `isActive` (now `VERIFIED` on `fix/aligned-object-buffer`)
- non-buffer blockers (`canonicalizePayload` string override typing, `isValidSignature` hmac sub-callee arg mismatch)

## Repro Environment

- repo: `C:/Users/ameliapayne/demo_protocol`
- saw-spec-gen: `C:/Users/ameliapayne/saw-spec-gen`
- branch tested: `fix/aligned-object-buffer`
- binary: `target/release/saw-spec-gen.exe`

Common verify flags:

- `--cryptol-spec cpp/saw/SDEP_cpp.cry`
- `--include-dir cpp/include`
- `--cxx-standard c++20`
- `--clang-flag=-fexceptions`
- `--clang-flag=-fno-inline`

Artifacts:

- `cpp/saw/_recheck_2026_07_16_fixbranch/activate.log`
- `cpp/saw/_recheck_2026_07_16_fixbranch/provision.log`

## Current Result

| Function | Verdict | Primary signature |
| --- | --- | --- |
| `activate` | `DISPROVED` | `internal: error: in ??$equal@PEBEPEBE@std@@...` + `Error during memory load` |
| `provision` | `DISPROVED` | `internal: error: in ?provision@KeyStore...` + `Error during memory load` |

These are vacuous `DISPROVED` outcomes (internal simulator memory-load failure), not semantic mismatches between C++ and Cryptol.

## Why This Is Still a Buffer-Modeling Gap

Recent fixes improved object alignment handling enough for some paths (`hasKey`, `isActive`) to verify, but `activate` and `provision` still traverse nested STL/template paths that perform typed loads not safely supported by the current object-buffer model in generated scripts.

The failure moved from earlier `optional::has_value` sites to deeper internals (`std::equal` and provision-body path), which indicates partial progress but incomplete coverage of typed nested loads.

## Minimal Upstream Goal

`verify-cpp` should be able to symbolically execute these two methods without `Error during memory load` and reach ordinary proof obligations.

Acceptance criteria:

1. No `Error during memory load` for `activate` and `provision` under the repro configuration above.
2. Final verdict is proof-driven (`VERIFIED` or real `DISPROVED` with model-level counterexample), not simulator-internal failure.
3. Add/extend e2e coverage for this KeyStore shape so regressions are caught automatically.

## Suggested Fix Direction

Prioritize targeted handling for the nested STL/internal access patterns used by these two call paths, rather than broad script rewrites. The existing mitigation style (specific helper overrides and bounded object modeling adjustments) has already shown partial success and is the lowest-risk path to full unblock.

## Quick Repro Commands

```powershell
Set-Location 'C:\Users\ameliapayne\demo_protocol'
$ssg='C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe'

& $ssg verify-cpp --cpp-file 'cpp\src\key_store.cpp' --function 'activate' --cryptol-fn 'keyStoreActivateRet' --cryptol-spec 'cpp\saw\SDEP_cpp.cry' --include-dir 'cpp\include' --cxx-standard 'c++20' --clang-flag=-fexceptions --clang-flag=-fno-inline --output 'cpp\saw\_recheck_2026_07_16_fixbranch\out_activate'

& $ssg verify-cpp --cpp-file 'cpp\src\key_store.cpp' --function 'provision' --cryptol-fn 'keyStoreProvisionRet' --cryptol-spec 'cpp\saw\SDEP_cpp.cry' --include-dir 'cpp\include' --cxx-standard 'c++20' --clang-flag=-fexceptions --clang-flag=-fno-inline --output 'cpp\saw\_recheck_2026_07_16_fixbranch\out_provision'
```
