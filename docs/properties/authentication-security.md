# Authentication Security

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P6 — Auth Rejects Invalid Date

P6: Authentication rejects any request with an invalid date, regardless of
the other checks.

<details><summary>Formal property (Cryptol)</summary>

```haskell
authenticate False sigValid claimsValid == False
```

</details>

**Involved:** [`authenticate`](../functions/authenticate.md)

### P7 — Auth Rejects Invalid Signature

P7: Authentication rejects any request with an invalid signature,
regardless of the other checks.

<details><summary>Formal property (Cryptol)</summary>

```haskell
authenticate dateValid False claimsValid == False
```

</details>

**Involved:** [`authenticate`](../functions/authenticate.md)

### P8 — Correct Hmac Verifies

P8: A correct HMAC always verifies. Computing the HMAC with the right key
and feeding the result back into [isValidSignature](../functions/isValidSignature.md) succeeds.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isValidSignature k r (hmacSha256 k r) == True
```

</details>

**Involved:** [`hmacSha256`](../functions/hmacSha256.md), [`isValidSignature`](../functions/isValidSignature.md)

### P9 — Wrong Hmac Fails

P9: A wrong HMAC always fails to verify. Any tag that is not the canonical
HMAC of (k, r) is rejected.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(sig != hmacSha256 k r) ==> (isValidSignature k r sig == False)
```

</details>

**Involved:** [`hmacSha256`](../functions/hmacSha256.md), [`isValidSignature`](../functions/isValidSignature.md)

### P10 — Missing Metadata Is Unauthorized

P10: An enrollment with missing metadata returns Unauthorized when the
fleet is enabled. (When the fleet is disabled, [enrollDevice](../functions/enrollDevice.md) short-circuits
to [ER_Disabled](../types.md#enrollmentresult) before the metadata check; that case is covered by [P5](key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything).)

<details><summary>Formal property (Cryptol)</summary>

```haskell
fleetEnabled ==>
isAuthResult authResult ==>
isActivationResult activationResult ==>
enrollDevice fleetEnabled False authResult activationResult
== ER_Unauthorized
```

</details>

**Involved:** [`ER_Disabled`](../types.md#enrollmentresult), [`ER_Unauthorized`](../types.md#enrollmentresult), [`enrollDevice`](../functions/enrollDevice.md)

