# One-pager: pretty-specs pipeline regression with saw-spec-gen verify-cpp

Status: open  
Audience: pretty-specs maintainers  
Date: 2026-07-17  
Owner: demo_protocol maintainers

## Summary

The native pretty-specs pipeline currently completes and renders docs, but it fails every verification invocation in Step 2 due to command-line forwarding incompatibilities when calling saw-spec-gen verify-cpp.

Result: docs are regenerated with a manifest where all function proofs are failed/unknown, which is misleading and blocks trusted publication.

## Repro environment

- Repo: formal-verification-demo-protocol
- pretty-specs: 0.5.0
- saw-spec-gen: 0.1.11 local build (same failure expected for newer versions because the failure is argument-shape level)
- Host: Windows

Version commands:

    .\.tools\pretty-specs\pretty-specs.exe --version
    C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe --version

Observed:

    pretty-specs 0.5.0
    saw-spec-gen 0.1.11

## Exact repro command

    .\.tools\pretty-specs\pretty-specs.exe cpp\saw\SDEP_cpp.cry --pipeline --impl cpp\src --impl-lang cpp --saw-spec-gen C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe --cxx-include-dir cpp\include --cxx-standard c++20 --clang-flag=-fexceptions --clang-flag=-fno-inline --verify-output verify_out --manifest-output proof_manifest.json -o docs --docfx --logo assets\sat-pudding.png --favicon assets\fabicon.png --extra-docs "extra_docs:Formal Verification"

Captured log: pretty_specs_pipeline_bug.log at repo root.

## Observed failure

Step 2 fails for every function with the same parse error from saw-spec-gen:

    error: unexpected argument '-f' found

    Usage: saw-spec-gen.exe verify-cpp [OPTIONS] --cpp-file <CPP_FILE> --cryptol-spec <CRYPTOL_SPEC> --cryptol-fn <CRYPTOL_FN> --function <FUNCTION>

Then pretty-specs reports:

    0/37 passed, 37 failed

Step 3 and Step 4 still run, producing docs and proof_manifest.json, but the manifest is effectively poisoned by invocation failures rather than proof outcomes.

## Why this blocks us

1. The docs pipeline appears successful overall (exit 0), but verification status is invalid.
2. Published proof badges regress to failure due to tooling invocation, not semantic proof changes.
3. CI signal is weakened because pipeline success no longer implies meaningful verification execution.

## Likely root cause

pretty-specs pipeline argument forwarding to saw-spec-gen verify-cpp is splitting clang flags into a shape that clap interprets as a top-level argument token -f, instead of preserving each flag as a value of --clang-flag.

In other words, the equivalent of this works:

    --clang-flag=-fexceptions

but this style does not:

    --clang-flag -fexceptions

if the downstream parser receives -fexceptions as a raw token in the wrong position.

## Requested pretty-specs fixes

1. Fix verify-cpp argv construction for clang flags
- Preserve each --clang-flag value as a single value token.
- Prefer explicit joined form when spawning:
  --clang-flag=-fexceptions
  --clang-flag=-fno-inline

2. Add an integration test for pipeline passthrough
- Include at least one -f... flag and assert saw-spec-gen verify-cpp accepts it.
- Test should fail if any forwarded argument is re-tokenized incorrectly.

3. Improve pipeline failure semantics
- If Step 2 invocation errors dominate (tool parse errors), return non-zero exit code by default.
- Optionally keep current behavior behind an explicit best-effort flag.

4. Optional compatibility improvement
- Accept repeated --impl entries again (or document migration clearly).
- Existing local regen scripts commonly build --impl multiple times from cpp/src/*.cpp.

## Acceptance criteria

1. Running the repro command above no longer emits unexpected argument '-f' from saw-spec-gen.
2. Step 2 executes real verification runs (not invocation failures), with per-function outcomes based on proof results.
3. Pipeline exit code is non-zero when verification step is unusable due to invocation/tooling errors.
4. Existing docs regeneration flow in this repo can run without local patching of argument syntax.

## Impact if fixed

- Restores trustworthy proof badges and manifests.
- Prevents false regressions in published documentation.
- Aligns pretty-specs pipeline behavior with saw-spec-gen verify-cpp CLI expectations.
