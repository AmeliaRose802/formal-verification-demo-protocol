# One-pager: verify-cpp blocker for isValidSignature (hmac_sha256 sub-callee arg mismatch)

Status: open blocker
Audience: saw-spec-gen maintainers
Scope: C++ verify-cpp sub-callee auto-spec generation (MSVC ABI / hidden sret args)

## Summary

`verify-cpp` for `isValidSignature` still fails with `UNKNOWN` due to a generated sub-callee spec argument mismatch for `hmac_sha256`.

This is distinct from the earlier `canonicalizePayload` sub-callee sret issue (tracked/closed as #68): that symptom is gone, but a new mismatched call-shape now appears for `hmac_sha256`.

## Exact repro command

Run from repo root (`C:\Users\ameliapayne\demo_protocol`):

```powershell
C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe verify-cpp \
  --cpp-file cpp\src\auth.cpp \
  --cryptol-spec cpp\saw\SDEP_cpp.cry \
  --cryptol-fn isValidSignature \
  --function isValidSignature \
  --output cpp\saw\_reaudit_2026_07_09\out_isValidSignature_single \
  --include-dir cpp\include \
  --cxx-standard c++20 \
  --clang-flag=-fexceptions \
  --clang-flag=-fno-inline
```

## Observed failure

Log excerpt:

```text
Argument 2 unspecified when verifying
"?hmac_sha256@crypto@sdep@@YA?AV?$array@E$0CA@@std@@V?$span@$$CBE$0?0@4@V?$basic_string_view@DU?$char_traits@D@std@@@4@@Z"

RESULT: UNKNOWN
```

Evidence files:

- `cpp/saw/_reaudit_2026_07_09/isValidSignature_single.log`
- `cpp/saw/_reaudit_2026_07_09/out_isValidSignature_single/result.json`
- `cpp/saw/_reaudit_2026_07_09/out_isValidSignature_single/specs_experimental/_hmac_sha256_crypto_sdep__YA_AV__array_E_0CA__std__V__span___CBE_0_0_4_V__basic_string_view_DU__char_traits_D_std___4__Z_auto_spec.saw`
- `cpp/saw/_reaudit_2026_07_09/out_isValidSignature_single/auth.ll`

## Root cause

The generated sub-callee spec for `hmac_sha256` calls:

```saw
llvm_execute_func [key_ptr, message_ptr];
```

but the lowered LLVM signature includes a hidden sret output pointer plus two logical inputs (3 args total):

```llvm
declare dso_local void @"?hmac_sha256..."(ptr sret(%"class.std::array"), ptr, ptr)
```

So argument synthesis in the auto-spec omits the hidden sret parameter, shifting the argument mapping and causing `Argument 2 unspecified`.

## Why this blocks verification

`isValidSignature` relies on sub-callee assumptions (`canonicalizePayload`, `hmac_sha256`, `constant_time_equals`).
If the generated `hmac_sha256` assumption has the wrong call shape, SAW aborts during override registration and the top-level proof cannot reach functional obligations.

## Expected behavior

When generating sub-callee specs for ABI-lowered signatures with hidden sret parameters, saw-spec-gen should:

1. Detect hidden sret in the callee signature.
2. Allocate/setup the hidden return pointer in the generated sub-callee spec.
3. Emit `llvm_execute_func` with full lowered arity/order.
4. Keep this behavior in native verify-cpp path (no manual SAW edits).

## Acceptance criteria

1. Repro command above no longer fails with `Argument 2 unspecified` for `hmac_sha256`.
2. `specs_experimental/*hmac_sha256*_auto_spec.saw` includes proper hidden sret setup and full arg list.
3. `isValidSignature` run reaches proof obligations (`VERIFIED` or `DISPROVED`) rather than `UNKNOWN` from sub-callee argument mismatch.

## Notes

- This is not the same as issue #68's original symptom (`canonicalizePayload` missing hidden sret arg), though the bug class is similar.
- This is also independent of the STL override return-type issue tracked by #73.
