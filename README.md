# Secure Device Enrollment Protocol (SDEP) — Formal Verification Demo

A worked example of taking a small HTTP enrollment protocol from English specification all the way down to a machine-checked equivalence proof between two production implementations (C++ and Rust) and a Cryptol reference model — and then proving 22 security properties against that model with SAW + Z3.

This repository exists as a **case study** for end-to-end formal verification of a real-world-shaped protocol. The protocol itself (SDEP) is intentionally compact so the proofs fit on one screen each, but it is rich enough to exhibit HMAC-based request signing, a key lifecycle with a "permanent activation" safety invariant, fleet-mode + per-endpoint access control, and length-prefixed byte canonicalization.

The full English spec lives in [cryptol/spec.md](cryptol/spec.md). The rendered docs site (Cryptol model + per-function and per-property pages, with cross-references) is published from [docs/](docs/) via DocFX.

---

## What is proven

The pipeline is four cooperating layers; together they transfer a security property proven over the Cryptol spec to a guarantee about the compiled binary.

| Layer | Tool | Obligation | Source |
|-------|------|------------|--------|
| 1 | SAW + Z3 | Every C++ decision function in [cpp/include/sdep/](cpp/include/sdep/) is behaviorally equivalent to its Cryptol shim | [cpp/saw/SDEP_cpp.cry](cpp/saw/SDEP_cpp.cry) |
| 2 | SAW + Z3 | Every pure decision function in [rust/src/lib.rs](rust/src/lib.rs) is behaviorally equivalent to its Cryptol shim | [rust/saw/SDEP_rust.cry](rust/saw/SDEP_rust.cry) |
| 3 | Cryptol + Z3 | Every `property` declaration in the spec module holds | [cryptol/SDEP.cry](cryptol/SDEP.cry) |
| 4 | Cryptol + Z3 (negative) | Every `property` in the gaps module **must produce a counterexample** — a Q.E.D. there means the spec has silently closed a documented gap | [cryptol/SDEP_gaps.cry](cryptol/SDEP_gaps.cry) |

A property's guarantee transfers to the binary only if **every function it mentions** carries a SAW equivalence proof. Each rendered property page surfaces this transitively as an *Implementation equivalence* callout.

---

## Quick start

```pwsh
# Full pipeline (rebuilds bitcode, runs all 4 layers)
pwsh ./verify_all.ps1

# Faster iteration
pwsh ./verify_all.ps1 -SkipBuild       # reuse cached bitcode
pwsh ./verify_all.ps1 -OnlyCryptol     # skip SAW layers
pwsh ./verify_all.ps1 -OnlySaw         # skip Cryptol layers
pwsh ./verify_all.ps1 -SkipGaps        # skip Layer 4
pwsh ./verify_all.ps1 -SkipRust        # skip Layer 2
```

Prerequisites: [SAW](https://github.com/GaloisInc/saw-script) (1.5+), [Cryptol](https://cryptol.net/), Z3, `clang++` with C++20, Rust (stable + nightly with `mir-json`).

---

## Repository layout

```
verify_all.ps1                Four-layer verification driver
docfx.json                    DocFX config — drives the published site
cryptol/
    spec.md                   Protocol spec (English, normative)
    SDEP.cry                  Cryptol spec module (types + properties)
    SDEP_gaps.cry             Negative properties (must counterexample)
    prove_all.ps1             Cryptol property-proving driver
cpp/
    include/sdep/             Header-only C++ implementation
    saw/SDEP_cpp.cry          C++-ABI Cryptol shims
    saw/run.ps1               Layer 1 SAW driver
rust/
    src/lib.rs                Rust implementation
    saw/SDEP_rust.cry         Rust-ABI Cryptol shims
    saw/run.ps1               Layer 2 SAW driver
docs/                         DocFX source (generated from Cryptol)
```

---

## Tooling

The Cryptol → Markdown rendering and the SAW spec scaffolding are produced by two companion tools:

- [pretty-specs](https://github.com/AmeliaRose802/pretty-specs) — renders Cryptol modules to DocFX-flavored Markdown with per-function and per-property cross-references.
- [saw-spec-gen](https://github.com/AmeliaRose802/saw-spec-gen) — auto-generates SAW specs from clang AST and `mir-json`.

The full doc-regeneration + verification pipeline (used by `pipeline.ps1` from `pretty-specs`) is what produces the contents of [docs/](docs/).

---

## Relation to publicly documented systems

The decision logic in SDEP is intentionally analogous to the Azure [Metadata Security Protocol](https://learn.microsoft.com/azure/virtual-machines/metadata-security-protocol/overview) and its [open-source Guest Proxy Agent](https://github.com/Azure/GuestProxyAgent) (MIT-licensed) — same `Audit` / `Enforce` mode names, same HMAC-SHA256 endorsement model, same 15-minute date-skew window, same "exclude the authorization header from the canonicalized signing input" invariant. Everything SDEP encodes is derivable from those two public sources; this repo's contribution is the formal-verification scaffolding around that shape.

SDEP's byte-level canonicalization (length-prefixed framing in [`canonLenPrefixed`](cryptol/SDEP.cry)) is a deliberately different wire format from MSP's newline-separated string concatenation — the two are structurally analogous but not byte-compatible.

---

## Status

See the rendered site for the current per-function and per-property verdicts. The headline numbers from the last full run:

- Layer 1 (C++ ≡ Cryptol): 7/7 target functions verified
- Layer 2 (Rust ≡ Cryptol): 6/6 pure decision functions verified
- Layer 3 (Cryptol properties): 29/29 properties verified
- Layer 4 (negative gaps): 6/6 gaps exhibited as expected

Counterexamples found by the proofs during development (e.g. signed-overflow in `isValidRequestDate` for timestamps near `INT64_MIN`) are recorded in [FINDINGS.md](FINDINGS.md).

---

## License

[MIT](LICENSE) — same as the Azure Guest Proxy Agent this work is analogous to.
