# Intentional counterexamples

> **How to read this page.** Every property below is a *deliberately false* claim about the protocol — a tempting-but-wrong intuition that the Cryptol prover refutes with a concrete counterexample. They are listed here as `✗` so a reader can see, side-by-side with the proven (`✓`) safety properties elsewhere, exactly which intuitions the implementation does **not** uphold and why. A `✗` on this page is the *intended* outcome — not a regression.

### ✗ P30 — Audit Equals Enforce

> **✗ Intentionally disproven.** This property is a *deliberately false* claim about the protocol. The Cryptol prover refutes it with a concrete counterexample (see the **Note** below); the property exists to make the failure mode visible to readers and is **not** a safety guarantee of the implementation.

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

**Involved:** [`AD_Deny_b`](../functions/AD_Deny_b.md), [`AM_Audit_b`](../functions/AM_Audit_b.md), [`AM_Enforce_b`](../functions/AM_Enforce_b.md), [`allowedOf`](../functions/allowedOf.md), [`enforceAccess`](../functions/enforceAccess.md), [`isAccessDecision_b`](../functions/isAccessDecision_b.md)

### ✗ P31 — Signature Alone Authenticates

> **✗ Intentionally disproven.** This property is a *deliberately false* claim about the protocol. The Cryptol prover refutes it with a concrete counterexample (see the **Note** below); the property exists to make the failure mode visible to readers and is **not** a safety guarantee of the implementation.

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

**Involved:** [`authenticate`](../functions/authenticate.md)

### ✗ P32 — Authenticated Implies Enrolled

> **✗ Intentionally disproven.** This property is a *deliberately false* claim about the protocol. The Cryptol prover refutes it with a concrete counterexample (see the **Note** below); the property exists to make the failure mode visible to readers and is **not** a safety guarantee of the implementation.

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

**Involved:** [`AC_IoFailure_b`](../functions/AC_IoFailure_b.md), [`AR_Authenticated_b`](../functions/AR_Authenticated_b.md), [`ER_InternalError_b`](../functions/ER_InternalError_b.md), [`ER_Succeeded_b`](../functions/ER_Succeeded_b.md), [`enrollDevice`](../functions/enrollDevice.md)

