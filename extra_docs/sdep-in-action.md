# SDEP in Action

This page shows how the verification pipeline applies to the Secure Device Enrollment Protocol (SDEP).

## The Specification (Cryptol)

We begin with behavioral rules expressed in [Cryptol](https://cryptol.net/), a domain-specific language for executable specifications and bit-precise properties.

The following excerpt from `SDEP.cry` defines `P1_ActiveKeyCannotBeReactivated`:

```cryptol
property P1_ActiveKeyCannotBeReactivated fleetEnabled validMetadata authResult keyAlreadyActive =
  isAuthResult authResult ==>
    keyAlreadyActive ==>
      enrollDevice fleetEnabled validMetadata authResult AC_AlreadyActive
        != ER_Succeeded
```

This is a declarative correctness constraint, not runtime application code. It states that if authentication is valid and the key is already active, then `enrollDevice` with `AC_AlreadyActive` must not return `ER_Succeeded`.

## Another Example: Provisioning Safety

This property constrains provisioning behavior for active devices:

```cryptol
property P2_ActiveKeyBlocksProvisioning fleetEnabled validRequest vaultResult =
  isKeyVaultResult vaultResult ==>
    fleetEnabled ==>
      validRequest ==>
        vaultResult == KV_Ok ==>
          provisionKey fleetEnabled validRequest vaultResult True == PR_Unauthorized
```

## The Verification Loop

The pipeline is straightforward:

1. [pretty-specs](https://github.com/AmeliaRose802/pretty-specs) extracts functions and properties from Cryptol modules.
2. [saw-spec-gen](https://github.com/AmeliaRose802/saw-spec-gen) maps those properties to concrete C++/Rust targets.
3. Generated SAW harnesses connect [LLVM bitcode](https://llvm.org/docs/BitCodeFormat.html) or Rust [MIR](https://rustc-dev-guide.rust-lang.org/mir/index.html) to specification-level predicates.
4. [SAW](https://saw.galois.com/) and [Z3](https://github.com/Z3Prover/z3) discharge the resulting proof obligations.

If verification fails, the tooling reports a counterexample showing an input configuration that violates the property. This feedback loop is useful for diagnosing implementation bugs and specification mismatches.

## Protocol Properties vs Implementation Equivalence

This project uses two distinct proof layers.

1. Protocol-property proofs at the Cryptol level.
2. Implementation-equivalence proofs at the compiled-code level (C++/Rust function equals Cryptol function).

These layers compose:

- If `impl_f(x) == spec_f(x)` for all `x` in scope, and
- A protocol property is proved over `spec_f`,
- Then the same property holds for `impl_f` over that scope.

In practical terms, the `P1_*`, `P2_*`, and related properties express protocol intent, while SAW equivalence scripts establish that selected compiled functions implement the corresponding Cryptol definitions.

## What Is In Scope (and What Is Not)

In scope for these proofs:

- Enumerated decision logic in SDEP functions such as enrollment, provisioning, authentication, and status computation.
- ABI-accurate memory behavior for modeled buffers and returns (for example, `sret` layout in status-returning functions).
- Input-domain constraints encoded as preconditions (for example, enum value ranges).

Out of scope unless separately modeled and verified:

- Unverified functions outside the selected target set.
- External subsystems (network transport, storage, runtime environment).
- Any behavior behind explicitly trusted assumptions, if assumptions are used.

## Concrete Example of the Distinction

- A protocol property states a rule such as: an already-active key cannot be re-enrolled successfully.
- An equivalence proof shows that the compiled `enrollDevice` function returns exactly what `enrollDevice` in Cryptol returns for all modeled inputs.

Together, these establish that the implementation enforces that rule under the modeled preconditions and proof boundaries.
