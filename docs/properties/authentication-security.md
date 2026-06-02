# Authentication Security

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P6 — Auth Rejects Invalid Date

P6: Authentication rejects any request with an invalid date.

<details><summary>Formal property (Cryptol)</summary>

```haskell
authenticate False sigValid claimsValid == False
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`authenticate`](../functions/authenticate.md)

### P7 — Auth Rejects Invalid Signature

P7: Authentication rejects any request with an invalid signature.

<details><summary>Formal property (Cryptol)</summary>

```haskell
authenticate dateValid False claimsValid == False
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`authenticate`](../functions/authenticate.md)

### P8 — Correct Hmac Verifies

P8: A correct HMAC always verifies.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isValidSignature k r (hmacSha256 k r) == True
```

</details>

**Involved:** [`hmacSha256`](../functions/hmacSha256.md), [`isValidSignature`](../functions/isValidSignature.md)

### P9 — Wrong Hmac Fails

P9: A wrong HMAC always fails to verify.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(sig != hmacSha256 k r) ==> (isValidSignature k r sig == False)
```

</details>

**Involved:** [`hmacSha256`](../functions/hmacSha256.md), [`isValidSignature`](../functions/isValidSignature.md)

### P10 — Missing Metadata Is Unauthorized

P10: An enrollment with missing metadata returns Unauthorized when the
fleet is enabled.

<details><summary>Formal property (Cryptol)</summary>

```haskell
fleetEnabled ==>
isAuthResult_b authResult ==>
isActivationResult_b activationResult ==>
enrollDevice fleetEnabled False authResult activationResult
== ER_Unauthorized_b
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✓ proven equivalent: `enrollDevice`
> - ✗ equivalence proof **failed**: `isActivationResult_b`, `isAuthResult_b`

**Involved:** [`ER_Unauthorized_b`](../functions/ER_Unauthorized_b.md), [`enrollDevice`](../functions/enrollDevice.md), [`isActivationResult_b`](../functions/isActivationResult_b.md), [`isAuthResult_b`](../functions/isAuthResult_b.md)

