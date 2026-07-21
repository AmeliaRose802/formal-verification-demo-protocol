# Intentional counterexamples

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

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

### KS1 — Activate Latch Monotone

Cryptol properties below are design-level corollaries, provable with prove.
KS1: the isActive latch is monotone — activate never clears an
already-active key, regardless of which key id is presented.

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_isActive) <= 1) ==>
(keyStoreActivatePost pre kid @ ks_off_isActive)
>= (pre @ ks_off_isActive)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`

**Involved:** [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### KS2 — Success Implies Active

KS2: a successful Success result implies the key is active afterwards,
and AlreadyActive implies it was active before (and stays active).

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_isActive) <= 1) /\ ((pre @ ks_off_engaged) <= 1) ==>
(keyStoreActivateRet pre kid == AC_Success_b ==>
(keyStoreActivatePost pre kid @ ks_off_isActive) == 1) /\
(keyStoreActivateRet pre kid == AC_AlreadyActive_b ==>
(keyStoreActivatePost pre kid @ ks_off_isActive) == 1)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`, `keyStoreActivateRet`

**Involved:** [`AC_AlreadyActive_b`](../functions/AC_AlreadyActive_b.md), [`AC_Success_b`](../functions/AC_Success_b.md), [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md), [`keyStoreActivateRet`](../functions/keyStoreActivateRet.md), [`ks_off_engaged`](../functions/ks_off_engaged.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### KS3 — Only Is Active Changes

KS3: activate only ever touches the isActive byte — every other byte
of the object image is preserved (frame condition). Stated as: the
slice before byte 128 and the slice after byte 128 are both carried
through unchanged.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(take`{128} (keyStoreActivatePost pre kid) == take`{128} pre) /\
(drop`{129} (keyStoreActivatePost pre kid) == drop`{129} pre)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`

**Involved:** [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md)

### KS4 — Io Failure No Effect

KS4: IoFailure (no key / wrong key) leaves isActive completely
unchanged — a failed activation has no side effect on the flag.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(keyStoreActivateRet pre kid == AC_IoFailure_b) ==>
(keyStoreActivatePost pre kid @ ks_off_isActive)
== (pre @ ks_off_isActive)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`, `keyStoreActivateRet`

**Involved:** [`AC_IoFailure_b`](../functions/AC_IoFailure_b.md), [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md), [`keyStoreActivateRet`](../functions/keyStoreActivateRet.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### PROV1 — Tofu Frame

Cryptol properties below are provable with prove.
PROV1: TOFU frame condition — provisioning into an already-engaged
store is a no-op on the object image (the existing key is never
overwritten).

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_engaged) == 1) ==>
(keyStoreProvisionPost pre nk == pre)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md), [`ks_off_engaged`](../functions/ks_off_engaged.md)

### PROV2 — Fresh Key Inactive

PROV2: a freshly provisioned key is always stored INACTIVE — provision
alone never produces an active credential.

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_engaged) == 0) ==>
((keyStoreProvisionPost pre nk @ ks_off_isActive) == 0)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md), [`ks_off_engaged`](../functions/ks_off_engaged.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### PROV3 — Fresh Engages

PROV3: provisioning into an empty store engages it (sets the optional
flag), so a subsequent provision hits the TOFU lock.

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_engaged) == 0) ==>
((keyStoreProvisionPost pre nk @ ks_off_engaged) == 1)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md), [`ks_off_engaged`](../functions/ks_off_engaged.md)

### PROV4 — Returned Key Inactive

PROV4: the returned key (fresh path) is itself inactive — the caller
receives a provisional, not-yet-usable credential.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(keyStoreProvisionRet pre nk @ ek_off_isActive) == 0
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionRet`

**Involved:** [`ek_off_isActive`](../functions/ek_off_isActive.md), [`keyStoreProvisionRet`](../functions/keyStoreProvisionRet.md)

### PROV5 — Mutex Preserved

PROV5: provision never touches the mutex bytes (object offsets 0..79),
on either path — the lock region is carried through verbatim.

<details><summary>Formal property (Cryptol)</summary>

```haskell
take`{80} (keyStoreProvisionPost pre nk) == take`{80} pre
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md)

### ACC1 — Active Implies Has Key

ACC1: an active store necessarily has a key — isActive() implies
hasKey(). This couples the two accessors so a caller can rely on
isActive() as a strictly stronger check.

<details><summary>Formal property (Cryptol)</summary>

```haskell
keyStoreIsActiveRet pre ==> keyStoreHasKeyRet pre
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreHasKeyRet`, `keyStoreIsActiveRet`

**Involved:** [`keyStoreHasKeyRet`](../functions/keyStoreHasKeyRet.md), [`keyStoreIsActiveRet`](../functions/keyStoreIsActiveRet.md)

