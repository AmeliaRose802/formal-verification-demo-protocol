# SAW Spec-Gen Gap Audit (2026-07-09)

This note audits the one-pagers in `design/pretty-specs` and lists the current
tooling gaps in saw-spec-gen, with GitHub tracking status.

## Scope

- Included: gaps that are saw-spec-gen/tooling blockers.
- Excluded: pure protocol-model gaps (for example RBAC/URL-model design gaps)
  that are not primarily saw-spec-gen feature bugs.

## Verification-surface policy

- C-wrapper-first verification is not allowed in this repo.
- Do not create or prioritize C wrapper proof surfaces as substitutes for
  protocol/core C++ verification targets.
- If a core target is blocked, document the saw-spec-gen/tooling blocker
  directly rather than redirecting effort to wrapper-level proofs.

## Active gaps (tooling)

| Gap | Status | GitHub issue | PR status | Notes |
| --- | --- | --- | --- | --- |
| MSVC mutex ownership helper modeling (`_Verify_ownership_levels`) | Open, in progress | [#65](https://github.com/AmeliaRose802/saw-spec-gen/issues/65) | Draft PR [#67](https://github.com/AmeliaRose802/saw-spec-gen/pull/67) open; PR #66 closed | Current blocker for `activate`/`hasKey`/`isActive` |
| Non-virtual target vtable-stub emission (`Unknown` stubs) | Open, in progress | [#57](https://github.com/AmeliaRose802/saw-spec-gen/issues/57) | PR [#63](https://github.com/AmeliaRose802/saw-spec-gen/pull/63) open | No longer first blocker in local repro, but upstream issue still open |
| Sub-callee auto-spec omits hidden sret arg (`isValidSignature` -> `canonicalizePayload`) | Open | [#68](https://github.com/AmeliaRose802/saw-spec-gen/issues/68) | No PR linked yet | Blocks verify-cpp closure for `isValidSignature` |
| Loop-invariant / Hoare/fixpoint mode for variable-length loops | Open | [#69](https://github.com/AmeliaRose802/saw-spec-gen/issues/69) | No PR linked yet | Requested for parser/string loops beyond bounded unrolling |
| `std::optional<EnrollmentKey>` alias/layout in KeyStore (`current`/`provision`) | Open | [#72](https://github.com/AmeliaRose802/saw-spec-gen/issues/72) | None | Related older layout issue [#2](https://github.com/AmeliaRose802/saw-spec-gen/issues/2) is broader |
| String/parsing verify-cpp generated override return-type mismatch (example `std::string::size` expected `i64`, got `[16 x i8]`) | Open | [#73](https://github.com/AmeliaRose802/saw-spec-gen/issues/73) | None | Related broader STL support issue [#16](https://github.com/AmeliaRose802/saw-spec-gen/issues/16) |

## Closed/fixed gaps (removed from active-gap set)

| Former gap | GitHub issue | PR | Result |
| --- | --- | --- | --- |
| Struct-typed out-buffer allocations for heterogeneous objects | [#55](https://github.com/AmeliaRose802/saw-spec-gen/issues/55) (closed) | [#56](https://github.com/AmeliaRose802/saw-spec-gen/pull/56) (merged) | Fixed |
| Stateful pre/post method support (base capability) | [#33](https://github.com/AmeliaRose802/saw-spec-gen/issues/33) (closed) | [#34](https://github.com/AmeliaRose802/saw-spec-gen/pull/34) (merged) | Fixed |
| Auto-detect C++ method receiver (`this`) for verify-cpp | [#60](https://github.com/AmeliaRose802/saw-spec-gen/issues/60) (closed) | [#62](https://github.com/AmeliaRose802/saw-spec-gen/pull/62) (merged) | Fixed |
| verify-cpp versioned config wiring | [#59](https://github.com/AmeliaRose802/saw-spec-gen/issues/59) (closed) | [#61](https://github.com/AmeliaRose802/saw-spec-gen/pull/61) (merged) | Fixed |

## Unfiled gaps to file next

None currently in this audit set.

## Notes on docs cleanup

- `06-heterogeneous-structs.md` was removed because the specific capability it
  tracked (struct-typed out-buffer support) is implemented and closed upstream
  via issue #55 / PR #56.
- Remaining KeyStore blockers are tracked by:
  - `17-keystore-mutex-ownership-modeling-blocker.md`
  - `18-keystore-optional-enrollmentkey-layout-blocker.md`
