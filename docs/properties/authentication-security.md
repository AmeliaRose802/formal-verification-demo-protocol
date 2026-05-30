# Authentication Security

### P6 — Auth Rejects Invalid Date

[P6](../SDEP/properties/authentication-security.md#p6--auth-rejects-invalid-date): Authentication rejects any request with an invalid date, regardless of
the other checks.

**Involved:** [`authenticate`](../SDEP/functions/authenticate.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
authenticate False sigValid claimsValid == False
```

</details>

### P7 — Auth Rejects Invalid Signature

[P7](../SDEP/properties/authentication-security.md#p7--auth-rejects-invalid-signature): Authentication rejects any request with an invalid signature,
regardless of the other checks.

**Involved:** [`authenticate`](../SDEP/functions/authenticate.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
authenticate dateValid False claimsValid == False
```

</details>

### P8 — Correct Hmac Verifies

[P8](../SDEP/properties/authentication-security.md#p8--correct-hmac-verifies): A correct HMAC always verifies. Computing the HMAC with the right key
and feeding the result back into [isValidSignature](../SDEP/functions/isValidSignature.md) succeeds.

**Involved:** [`hmacSha256`](../SDEP/functions/hmacSha256.md), [`isValidSignature`](../SDEP/functions/isValidSignature.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isValidSignature k r (hmacSha256 k r) == True
```

</details>

### P9 — Wrong Hmac Fails

[P9](../SDEP/properties/authentication-security.md#p9--wrong-hmac-fails): A wrong HMAC always fails to verify. Any tag that is not the canonical
HMAC of (k, r) is rejected.

**Involved:** [`hmacSha256`](../SDEP/functions/hmacSha256.md), [`isValidSignature`](../SDEP/functions/isValidSignature.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(sig != hmacSha256 k r) ==> (isValidSignature k r sig == False)
```

</details>

### P10 — Missing Metadata Is Unauthorized

[P10](../SDEP/properties/authentication-security.md#p10--missing-metadata-is-unauthorized): An enrollment with missing metadata returns Unauthorized when the
fleet is enabled. (When the fleet is disabled, [enrollDevice](../SDEP/functions/enrollDevice.md) short-circuits
to [ER_Disabled](../SDEP/types.md#enrollmentresult) before the metadata check; that case is covered by [P5](../SDEP/properties/key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything).)

**Involved:** [`ER_Disabled`](../SDEP/types.md#enrollmentresult), [`ER_Unauthorized`](../SDEP/types.md#enrollmentresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
fleetEnabled ==>
isAuthResult authResult ==>
isActivationResult activationResult ==>
enrollDevice fleetEnabled False authResult activationResult
== ER_Unauthorized
```

</details>

