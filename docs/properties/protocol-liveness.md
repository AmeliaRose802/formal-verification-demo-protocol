# Protocol Liveness

### P15 — Authorized Request On Inactive Key Succeeds

[P15](../SDEP/properties/protocol-liveness.md#p15--authorized-request-on-inactive-key-succeeds): A valid, authorized provisioning request on an inactive key succeeds.

**Involved:** [`KV_Ok`](../SDEP/types.md#keyvaultresult), [`PR_Succeeded`](../SDEP/types.md#provisionresult), [`provisionKey`](../SDEP/functions/provisionKey.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
provisionKey True True KV_Ok False == PR_Succeeded
```

</details>

### P16 — Authenticated Enrollment Succeeds

[P16](../SDEP/properties/protocol-liveness.md#p16--authenticated-enrollment-succeeds): An authenticated enrollment with a successful activation succeeds.

**Involved:** [`AC_Success`](../SDEP/types.md#activationresult), [`AR_Authenticated`](../SDEP/types.md#authresult), [`ER_Succeeded`](../SDEP/types.md#enrollmentresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
enrollDevice True True AR_Authenticated AC_Success == ER_Succeeded
```

</details>

### P17 — Timestamp At Boundary Accepted

[P17](../SDEP/properties/protocol-liveness.md#p17--timestamp-at-boundary-accepted): A timestamp exactly at the window boundary is accepted.

**Involved:** [`isValidRequestDate`](../SDEP/functions/isValidRequestDate.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
// Avoid 64-bit overflow when constructing currentTime.
(requestTs <= (~ zero) - window) ==>
isValidRequestDate requestTs (requestTs + window) window == True
```

</details>

### P18 — Timestamp Beyond Boundary Rejected

[P18](../SDEP/properties/protocol-liveness.md#p18--timestamp-beyond-boundary-rejected): A timestamp beyond the window boundary is rejected.

**Involved:** [`isValidRequestDate`](../SDEP/functions/isValidRequestDate.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(requestTs <= currentTime) ==>
((currentTime - requestTs) > window) ==>
isValidRequestDate requestTs currentTime window == False
```

</details>

