# One-pager: verify-cpp blocker for `isValidSignature` (sret sub-callee auto-spec)

**Status:** open · **Audience:** saw-spec-gen maintainers + repo maintainers · **Group:** C++ compositional verification / auto-generated sub-callee specs

## Summary

`verify-cpp` is the correct path for this target (it includes lowering and
sub-callee handling), and it now proves `sdep_constant_time_equals` in this
repo. However, `isValidSignature` remains blocked by a generated sub-callee
spec issue when the callee returns `std::string` by value (sret ABI path).

## Repro in this repo

Command:

```pwsh
saw-spec-gen verify-cpp \
  --cpp-file cpp/src/auth.cpp \
  --cryptol-spec cpp/saw/SDEP_cpp.cry \
  --cryptol-fn isValidSignature \
  --function isValidSignature \
  --output cpp/saw/_crypto_probe/out_isValidSignature_vcpp \
  --include-dir cpp/include \
  --cxx-standard c++20 \
  --clang-flag=-fexceptions \
  --clang-flag=-fno-inline
```

Observed result: `UNKNOWN`.

Key failure excerpt:

```text
Argument 1 unspecified when verifying
"?canonicalizePayload@sdep@@YA?...AEBUDeviceRequest..."
```

## What generated output shows

Generated file:

- `cpp/saw/_crypto_probe/out_isValidSignature_vcpp/specs_experimental/_canonicalizePayload_..._auto_spec.saw`

The generated setup executes the callee with only one argument:

```saw
llvm_execute_func [request_ptr];
```

For this ABI, the callee requires an additional first argument for the hidden
sret return pointer (`std::string` return-by-value). SAW then fails with
"Argument 1 unspecified" when applying the assumed spec.

## Why this blocks closing the gap

`isValidSignature` depends on `canonicalizePayload` and HMAC/equality helpers.
Without a correct generated sub-callee assumption for the sret call shape,
`verify-cpp` cannot finish the top-level proof in this repo without manually
editing generated SAW files.

Manual SAW edits are intentionally avoided here to keep the pipeline fully
saw-spec-gen-driven.

## Expected tool behavior

When generating an experimental sub-callee havoc spec for a function with sret,
auto-spec generation should include the hidden return pointer argument in
`llvm_execute_func [...]` and allocate/return-shape it consistently with the
lowered signature.

## Repo impact now

- **Unblocked:** `sdep_constant_time_equals` can be proved via `verify-cpp`.
- **Still blocked:** `isValidSignature` top-level proof via auto-generated
  compositional sub-callee specs.

## Requested upstream fix

In saw-spec-gen sub-callee auto-spec generation, account for sret / hidden
return-pointer arguments when emitting `llvm_execute_func` argument lists and
associated memory setup.
