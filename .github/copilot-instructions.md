# Copilot Instructions For Verification Work

## C++ verification command path

- For C++ verification tasks in this repo, use `saw-spec-gen verify-cpp` as the default path.
- Do not start from ad hoc `gen-verify` + hand-assembled compile/load steps unless debugging a `verify-cpp` issue.
- Reason: `verify-cpp` runs the native pipeline (`compile -> exception lowering -> gen-verify -> SAW`) and is the expected repo workflow.

## Gap-handling policy

- If a target cannot be verified because of saw-spec-gen/tooling limitations, do not manually edit generated SAW scripts to force a pass.
- Instead, capture the blocker in a one-pager under `design/pretty-specs/` with:
  - exact command used,
  - observed error,
  - why it blocks verification,
  - required saw-spec-gen or verifier enhancement.

## Stateful methods

- For stateful C++ methods (for example in `cpp/src/key_store.cpp`), model object pre/post state via `verify-cpp` arguments (`--out-buffer-param`, `--cryptol-fn-out`, `--in-buffer-size`) and keep claims explicitly sequential.