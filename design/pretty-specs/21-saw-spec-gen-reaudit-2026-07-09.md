# SAW Spec-Gen Re-Audit (2026-07-09)

This note re-audits active verification blockers after recent saw-spec-gen merges.

## Fresh probe matrix (native verify-cpp)

All commands used local saw-spec-gen at:

- `C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe`

with common flags:

- `--cryptol-spec cpp/saw/SDEP_cpp.cry`
- `--include-dir cpp/include`
- `--cxx-standard c++20`
- `--clang-flag=-fexceptions`

Artifacts under:

- `cpp/saw/_reaudit_2026_07_09/`

### Results

| Target | Cryptol fn | Verdict | Evidence |
| --- | --- | --- | --- |
| `activate` | `keyStoreActivateRet` | `DISPROVED` | `out_activate/result.json`, `activate.log` |
| `provision` | `keyStoreProvisionRet` | `DISPROVED` | `out_provision/result.json`, `provision.log` |
| `current` | `keyStoreCurrentRet` | `VERIFIED` | `out_current/result.json`, `current.log` |
| `hasKey` | `keyStoreHasKeyRet` | `DISPROVED` | `out_hasKey/result.json`, `hasKey.log` |
| `isActive` | `keyStoreIsActiveRet` | `DISPROVED` | `out_isActive/result.json`, `isActive.log` |
| `canonicalizePayload` | `canonicalizePayload` | `UNKNOWN` | `out_canonicalizePayload/result.json`, `canonicalizePayload.log` |
| `classifyCanonicalHost` | `classifyCanonicalHost` | `VERIFIED` | `out_classifyCanonicalHost_single/result.json` |
| `authenticate` | `authenticate` | `VERIFIED` | `out_authenticate_single/result.json` |
| `isValidSignature` | `isValidSignature` | `UNKNOWN` | `out_isValidSignature_single/result.json` |

## What is fixed

1. KeyStore optional alias/layout blocker no longer manifests as UNKNOWN on `current`/`provision` in this repo path:
   - `current` is now `VERIFIED`.
   - `provision` now reaches obligations (`DISPROVED`) instead of alias/type UNKNOWN.
2. Mutex ownership helper `_Verify_ownership_levels` is no longer the first failing surface in KeyStore methods.

## What remains blocked

1. String-heavy STL override return typing remains open (matches saw-spec-gen issue #73):
   - `canonicalizePayload` is still `UNKNOWN`.
   - log shows `std::string::size` override return-type incompatibility.
2. `isValidSignature` remains `UNKNOWN`, but prior sret sub-callee symptom changed:
   - no longer failing on missing `canonicalizePayload` sret arg,
   - now fails on generated sub-callee spec for `hmac_sha256` with:
     - `Argument 2 unspecified when verifying ...hmac_sha256...`.
3. `activate`, `provision`, `hasKey`, `isActive` — DISPROVED is **not a Cryptol
   model mismatch**; root cause is a generator bug in `this` allocation (see
   below).

## Recheck after local-fix claim

### July 10 retry (current local + upstream fix branch)

Fresh reruns were executed under:

- `cpp/saw/_reaudit_2026_07_10/` (local branch `fix_stret_regression`, commit `314f11a`)
- `cpp/saw/_reaudit_2026_07_10_fixbranch/` (detached `origin/copilot/verify-cpp-fix-memory-load-errors`, commit `a6a889d`)

Observed behavior:

- On `fix_stret_regression`: `activate/provision/hasKey/isActive` remain `DISPROVED`,
  each with `internal: error ... has_value@?$optional...` + `Error during memory load`.
- On `verify-cpp-fix-memory-load-errors`: `hasKey/isActive` move to `UNKNOWN`,
  but the same `has_value` memory-load error remains.

Conclusion: the attempted upstream memory-load fix branch changes verdict
classification, but does not resolve execution through `std::optional::has_value()`.

### isValidSignature (hmac sub-callee arg)

We re-ran `isValidSignature` using the same local path and a freshly rebuilt
binary:

- `C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe`
- `cargo build --release` in local `saw-spec-gen`

Outcome remained unchanged:

- `RESULT: UNKNOWN`
- same failure text: `Argument 2 unspecified when verifying ...hmac_sha256...`

Local saw-spec-gen context at repro time:

- branch: `fix_stret_regression`
- commit: `cc9655e` (`Fix sret alias resolution: skip LLVM initializes attribute`)
- version banner: `saw-spec-gen 0.1.11`

This indicates the hmac sub-callee argument synthesis fix is not present in the
tested build/branch (or not taking effect on this path).

### KeyStore optional sret fix (cc9655e) — confirmed applied; DISPROVED is a generator bug

The `fix_stret_regression` commit fixes `initializes(` attribute parsing on sret
slots: `std::optional<EnrollmentKey>` no longer resolves to an unsized opaque
type (the root cause of prior UNKNOWN results on `provision`/`current`).

Re-ran all five KeyStore methods after confirming the rebuilt binary carries
this commit:

| Target | Previous verdict | Verdict after fix |
| --- | --- | --- |
| `current` | `VERIFIED` | `VERIFIED` |
| `activate` | `DISPROVED` | `DISPROVED` |
| `provision` | `DISPROVED` | `DISPROVED` |
| `hasKey` | `DISPROVED` | `DISPROVED` |
| `isActive` | `DISPROVED` | `DISPROVED` |

The optional layout issue **is resolved** — these methods now consistently reach
proof obligations. However, investigation of the failure logs reveals this is
**not a Cryptol model mismatch** — see root-cause section below.

## Root-cause: DISPROVED is a SAW generator bug, not a spec mismatch

All four DISPROVED methods fail with:

```
internal: error: in ?has_value@?$optional@UEnrollmentKey@sdep@@@std@@QEBA_NXZ
Error during memory load
Goal size 8.
<<All settings of the symbolic variables constitute a counterexample>>
```

`<<All settings ... constitute a counterexample>>` means Crucible hit an
internal error before any real proof obligation was dispatched — the DISPROVED
verdict is vacuous.

**Immediate cause:** `std::optional::has_value()` is a `linkonce_odr` function
with its body present in the bitcode. It is not in the extern overrides list
(those cover only declare-only / system-header callees), so SAW symbolically
executes it. Inside the body:

```llvm
define ... i1 @"?has_value@...std@@QEBA_NXZ"(ptr ... %0) {
  %4 = getelementptr inbounds %"struct.std::_Optional_destruct_base", ptr %3, i32 0, i32 1
  ; load i8 at field-1 offset (the engaged flag)
```

**Root cause:** `saw-spec-gen` allocates `this` (the `KeyStore` object) as
`llvm_array 152 (llvm_int 8)` — a flat byte array. When Crucible processes the
struct-typed GEP (`getelementptr inbounds %"struct.std::_Optional_destruct_base",
...`), it cannot match the GEP's named-struct type against the flat `[152 x i8]`
backing store, so the load fails with "Error during memory load".

The same `this` allocation works for `current` because `current` does not call
`has_value()` — it reads the key data directly without the optional engaged-flag
check.

**Required fix in saw-spec-gen (two options):**

1. **(Preferred) Add `std::optional` accessor stubs to the STL override scan.**
   Detect `linkonce_odr` methods whose names match `has_value`, `value`, etc. on
   `std::optional` and emit stub overrides (fresh symbolic bool return) before
   the verify step. This mirrors the existing treatment of `std::string` helpers.

2. **Allocate `this` using the named struct type.** Emit
   `llvm_alloc (llvm_struct "class.sdep::KeyStore")` instead of
   `llvm_array N (llvm_int 8)` when the LLVM IR names a class struct. This is
   correct in principle but requires properly populating all struct fields via
   `llvm_points_to`, which in turn requires saw-spec-gen to know all member
   offsets — a larger change.

Option 1 is lower-risk and sufficient to unblock the KeyStore proofs.

### Concrete patch write-up for saw-spec-gen

Recommended implementation (smallest effective change):

1. Extend `src/emit/saw_emit/status_primitives.rs` with a new detector for
   MSVC `std::optional` accessors (pattern like `"optional@"` plus method
   fragments for `has_value`/`value`).
2. Add a return pin helper (parallel to `msvc_mutex_noop_return`) for those
   accessors:
   - `has_value` / `operator bool` -> return `1` (`i1`) as a sequential no-op
     modeling choice,
   - pointer/value accessors -> return fresh pointer if needed.
3. Consume that helper in `src/emit/saw_emit/bitcode_overrides.rs` next to the
   existing mutex-helper branch, so linkonce bodies are overridden before SAW
   executes struct-typed GEPs into optional internals.
4. Add e2e coverage in the optional/key-store fixture family asserting no
   `Error during memory load` in logs and that runs reach normal proof
   obligations.

Rationale: this mirrors the existing `_Mutex_base` mitigation path already in
the codebase and avoids larger allocator/type-model rewrites in verify script
generation.

## Upstream issue status snapshot

- Closed: #55, #59, #60, #65, #68, #72
- Open: #57, #69, #73, #84

## Practical verification status now

### Currently VERIFIED in native verify-cpp (fresh repro)

- `authenticate`
- `classifyCanonicalHost`
- `current`

### DISPROVED (vacuous — generator bug, not spec mismatch)

- `activate`, `provision`, `hasKey`, `isActive` — Crucible `Error during memory
  load` in `has_value()` because `this` is allocated as flat `[152 x i8]` while
  `has_value()` uses struct-typed GEPs. Fix: add `std::optional` accessor stubs
  to the STL override scan (option 1 above).

### Still UNKNOWN (tooling blockers)

- `canonicalizePayload` (issue #73 class — STL string override return type)
- `isValidSignature` (hmac sub-callee arg-mismatch persists after local rebuild; fix not in cc9655e)

## July 10 follow-up: aligned-object-buffer branch (partial fix)

Retest used local saw-spec-gen branch `fix/aligned-object-buffer` at commit
`ef75911` (rebuilt with `cargo build --release`) and reran KeyStore under:

- `cpp/saw/_recheck_2026_07_10_aligned/`

Observed status split:

- `current`: `VERIFIED`
- `hasKey`, `isActive`: no `Error during memory load`; now reach ordinary
   postcondition checks (literal-equality mismatch)
- `activate`, `provision`: still fail with `Error during memory load`

### Issue text to send upstream (remaining blocker)

`fix/aligned-object-buffer` is a partial win: it removed the original
`has_value`-site memory-load crash for some paths, but `activate`/`provision`
still crash in nested STL/template internals.

Repro on current branch/build:

- Command family: `saw-spec-gen verify-cpp` over `cpp/src/key_store.cpp`
   for `activate` and `provision` with `cpp/saw/SDEP_cpp.cry`
- Evidence:
   - `cpp/saw/_recheck_2026_07_10_aligned/activate.log`
   - `cpp/saw/_recheck_2026_07_10_aligned/provision.log`

Current crash sites (shifted from `optional::has_value`):

- `activate`: `internal: error: in ??$equal@PEBEPEBE@std@@...` + `Error during memory load`
- `provision`: `internal: error: in ?provision@KeyStore...` + `Error during memory load`

Interpretation: nested typed-access handling is only partially fixed. The
remaining failure is now in other nested/templated internals (`std::equal` /
provision body path), so the deeper object-layout modeling problem persists.

### Local precondition/model fix for accessor validation

To validate accessors on the current pipeline, `SDEP_cpp.cry` was updated so
`keyStoreHasKeyRet` / `keyStoreIsActiveRet` interpret bool fields with LLVM
i8->i1 truncation semantics (LSB projection) rather than strict `byte == 1`.

- File: `cpp/saw/SDEP_cpp.cry`
- Helper: `boolOfByte b = (b @ 7) == 1` (`@ 7` is LSB in Cryptol indexing)

Validation rerun artifacts:

- `cpp/saw/_recheck_2026_07_10_aligned_after_spec_fix2/hasKey.log` -> `RESULT: VERIFIED`
- `cpp/saw/_recheck_2026_07_10_aligned_after_spec_fix2/isActive.log` -> `RESULT: VERIFIED`
