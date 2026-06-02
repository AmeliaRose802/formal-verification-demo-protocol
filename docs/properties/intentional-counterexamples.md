# Intentional counterexamples

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P30 — Audit Equals Enforce

The properties in this category are *deliberately wrong*.  They encode
tempting-but-false intuitions about the protocol so the rendered docs
can show real examples of both "proven" (✓) and "refuted" (✗) verdicts
side by side.  The Cryptol prover will find a counterexample for each
of these; the proof manifest records them as `failed` on purpose, and
`prove_all.ps1` tolerates them when launched with `-AllowFailures`.
P30: "Audit and Enforce modes are interchangeable — both return the
same allow flag for any well-formed access decision."
> **Note:** EXPECTED VERDICT: FAILS.
> Counterexample: decision = [AD_Deny_b](../functions/AD_Deny_b.md).  Audit mode still allows the
> request (only logging the denial), whereas Enforce mode actually
> blocks it.  This is the whole point of having two modes.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision_b decision ==>
allowedOf (enforceAccess AM_Audit_b   decision) ==
allowedOf (enforceAccess AM_Enforce_b decision)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **failed**: `allowedOf`, `enforceAccess`, `isAccessDecision_b`

**Involved:** [`AD_Deny_b`](../functions/AD_Deny_b.md), [`AM_Audit_b`](../functions/AM_Audit_b.md), [`AM_Enforce_b`](../functions/AM_Enforce_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`isAccessDecision_b`](../functions/isAccessDecision_b.md)

### P31 — Signature Alone Authenticates

P31: "Authentication succeeds as long as the signature is valid —
stale dates and missing claims don't really matter in practice."
> **Note:** EXPECTED VERDICT: FAILS.
> Counterexample: dateValid = False, signatureValid = True,
> claimsValid = True.  The real [authenticate](../functions/authenticate.md) requires *all three*
> (`dateValid /\ signatureValid /\ claimsValid`), so a stale request
> is still rejected even with a perfect signature.  This property
> exists to make the AND-of-three structure visible to readers.

<details><summary>Formal property (Cryptol)</summary>

```haskell
signatureValid ==> authenticate dateValid signatureValid claimsValid
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`authenticate`](../functions/authenticate.md)

### P32 — Authenticated Implies Enrolled

P32: "If enrollment authentication succeeds, the device gets enrolled."
> **Note:** EXPECTED VERDICT: FAILS.
> Counterexample: authResult = [AR_Authenticated_b](../functions/AR_Authenticated_b.md),
> activationResult = [AC_IoFailure_b](../functions/AC_IoFailure_b.md).  Authentication passes but the
> hardware activation step fails, so [enrollDevice](../functions/enrollDevice.md) returns
> [ER_InternalError_b](../functions/ER_InternalError_b.md) instead of [ER_Succeeded_b](../functions/ER_Succeeded_b.md).  A correct claim
> would also have to constrain activationResult.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( fleetEnabled /\ validMetadata ) ==>
enrollDevice fleetEnabled validMetadata
AR_Authenticated_b activationResult == ER_Succeeded_b
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`AC_IoFailure_b`](../functions/AC_IoFailure_b.md), [`AR_Authenticated_b`](../functions/AR_Authenticated_b.md), [`ER_InternalError_b`](../functions/ER_InternalError_b.md), [`ER_Succeeded_b`](../functions/ER_Succeeded_b.md), [`enrollDevice`](../functions/enrollDevice.md)

