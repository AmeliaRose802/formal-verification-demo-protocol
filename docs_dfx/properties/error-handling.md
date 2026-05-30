# Error Handling

### P19 — Vault Unavailable Is Internal Error

[P19](../SDEP/properties/error-handling.md#p19--vault-unavailable-is-internal-error): A vault-unavailable result maps to InternalError.

**Involved:** [`AR_VaultUnavailable`](../SDEP/types.md#authresult), [`ER_InternalError`](../SDEP/types.md#enrollmentresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isActivationResult activationResult ==>
enrollDevice True True AR_VaultUnavailable activationResult
== ER_InternalError
```

</details>

### P20 — Invalid Request Is Bad Request

[P20](../SDEP/properties/error-handling.md#p20--invalid-request-is-bad-request): An invalid request (validMetadata == False) maps to BadRequest, not
Unauthorized — i.e. the BadRequest classification is reachable and distinct.

**Involved:** [`PR_BadRequest`](../SDEP/types.md#provisionresult), [`provisionKey`](../SDEP/functions/provisionKey.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isKeyVaultResult vaultResult ==>
provisionKey True False vaultResult keyIsActive == PR_BadRequest
```

</details>

### P21 — Activate Without Metadata Is Unauthorized

[P21](../SDEP/properties/error-handling.md#p21--activate-without-metadata-is-unauthorized): Activate without metadata maps to Unauthorized.

**Involved:** [`ER_Unauthorized`](../SDEP/types.md#enrollmentresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isAuthResult authResult ==>
isActivationResult activationResult ==>
enrollDevice True False authResult activationResult == ER_Unauthorized
```

</details>

### P22 — Activation Io Failure Is Internal Error

[P22](../SDEP/properties/error-handling.md#p22--activation-io-failure-is-internal-error): An activation I/O failure maps to InternalError. Any activation
result that is neither Success nor AlreadyActive (i.e. an I/O failure)
yields InternalError when authentication succeeded.

**Involved:** [`AC_AlreadyActive`](../SDEP/types.md#activationresult), [`AC_Success`](../SDEP/types.md#activationresult), [`AR_Authenticated`](../SDEP/types.md#authresult), [`ER_InternalError`](../SDEP/types.md#enrollmentresult), [`enrollDevice`](../SDEP/functions/enrollDevice.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isActivationResult activationResult ==>
(activationResult != AC_Success) ==>
(activationResult != AC_AlreadyActive) ==>
enrollDevice True True AR_Authenticated activationResult
== ER_InternalError
```

</details>

### P23 — Distinct Requests Have Distinct Canonical Bytes

[P23](../SDEP/properties/error-handling.md#p23--distinct-requests-have-distinct-canonical-bytes): Distinct normalized requests have distinct canonical byte streams.
(Length-prefixed canonicalization is byte-injective.)
> **Note:** EXPECTED VERDICT: PASS. This is the safety property the production
> canonicalizer satisfies after the delimiter -> length-prefix fix.

**Involved:** [`FL`](../SDEP/types.md#fl), [`IW`](../SDEP/types.md#iw), [`canonLenPrefixed`](../SDEP/functions/canonLenPrefixed.md), [`canonNormalized`](../SDEP/functions/canonNormalized.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
( (nm1 <= (`FL : [IW])) /\ (nb1 <= (`FL : [IW])) /\
(nm2 <= (`FL : [IW])) /\ (nb2 <= (`FL : [IW])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

### P24 — Distinct Headers Have Distinct Canonical Bytes

The [P23](../SDEP/properties/error-handling.md#p23--distinct-requests-have-distinct-canonical-bytes) fix length-prefixes the FIVE TOP-LEVEL fields of the canonical
payload (method | body | canonHeaders | path | canonQuery). The inner
canonicalizers `canonicalize_headers` and `canonicalize_query` now use
the SAME length-prefix scheme for every individual name and value they
emit (an 8-byte big-endian length tag followed by the raw bytes), so
they are structurally byte-injective in their input map by the same
argument that proves [P23](../SDEP/properties/error-handling.md#p23--distinct-requests-have-distinct-canonical-bytes): a parser reads <tag, name, tag, value> in
fixed order with no byte inside any name or value capable of being
misread as a record boundary.
Historical note: an earlier revision joined records with '\n' (headers)
or '&' (query) and fields inside each record with ':' / '='. That
encoding admitted a header / query smuggling collision (a value
containing "\nname:forged" parsed as an extra record under a forged
header name). Concrete production-code collisions for that earlier
encoding were exhibited in rust/tests/validate_canon_gaps.rs.
[P24](../SDEP/properties/error-handling.md#p24--distinct-headers-have-distinct-canonical-bytes): Distinct normalized header lists have distinct canonical byte
streams. (`canonicalize_headers` is byte-injective in the header map.)
The production encoder length-prefixes every name and value with an
8-byte big-endian tag (same shape as canonicalizePayload), so distinct
normalized header records produce distinct canonical byte streams.
> **Note:** EXPECTED VERDICT: PASS — the encoding closes the smuggling gap.

**Involved:** [`FL`](../SDEP/types.md#fl), [`IW`](../SDEP/types.md#iw), [`canonLenPrefixed`](../SDEP/functions/canonLenPrefixed.md), [`canonNormalized`](../SDEP/functions/canonNormalized.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
( (nm1 <= (`FL : [IW])) /\ (nb1 <= (`FL : [IW])) /\
(nm2 <= (`FL : [IW])) /\ (nb2 <= (`FL : [IW])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

### P25 — Distinct Queries Have Distinct Canonical Bytes

[P25](../SDEP/properties/error-handling.md#p25--distinct-queries-have-distinct-canonical-bytes): Distinct normalized query lists have distinct canonical byte
streams. (`canonicalize_query` is byte-injective in the query map.)
Same length-prefix shape; no separators are needed because the length
tag uniquely marks each record boundary.
> **Note:** EXPECTED VERDICT: PASS.

**Involved:** [`FL`](../SDEP/types.md#fl), [`IW`](../SDEP/types.md#iw), [`canonLenPrefixed`](../SDEP/functions/canonLenPrefixed.md), [`canonNormalized`](../SDEP/functions/canonNormalized.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
( (nm1 <= (`FL : [IW])) /\ (nb1 <= (`FL : [IW])) /\
(nm2 <= (`FL : [IW])) /\ (nb2 <= (`FL : [IW])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

### P26 — Enforce Without Rule Allows Silently

[P11](../SDEP/properties/access-control.md#p11--access-off-allows-without-logging)..[P14](../SDEP/properties/access-control.md#p14--access-enforce-allows-permitted) cover only 5 of the 9 cells of the ([AccessMode](../SDEP/types.md#accessmode) × [AccessDecision](../SDEP/types.md#accessdecision))
matrix, and [P12](../SDEP/properties/access-control.md#p12--access-audit-never-denies) only checks the `.0 = allowed` projection (not the
`.1 = logged` flag). The two properties below close the matrix.
> **Note:** EXPECTED VERDICT: PASS — they document previously-unverified behaviour
> of the existing model.
> [P26](../SDEP/properties/error-handling.md#p26--enforce-without-rule-allows-silently): Access-enforce mode with no matching rule allows silently (matches
> the spec's implicit fall-through and the C++/Rust impl's `else` branch).

**Involved:** [`AD_NoRule`](../SDEP/types.md#accessdecision), [`AM_Enforce`](../SDEP/types.md#accessmode), [`AccessDecision`](../SDEP/types.md#accessdecision), [`AccessMode`](../SDEP/types.md#accessmode), [`enforceAccess`](../SDEP/functions/enforceAccess.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
enforceAccess AM_Enforce AD_NoRule == (True, False)
```

</details>

### P27 — Audit Logs Only On Denial

[P27](../SDEP/properties/error-handling.md#p27--audit-logs-only-on-denial): Access-audit mode logs IFF the underlying decision is Deny — never
on Allow or NoRule. Closes the .1 = logged projection that [P12](../SDEP/properties/access-control.md#p12--access-audit-never-denies) leaves
unspecified.

**Involved:** [`AD_Deny`](../SDEP/types.md#accessdecision), [`AM_Audit`](../SDEP/types.md#accessmode), [`enforceAccess`](../SDEP/functions/enforceAccess.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isAccessDecision decision ==>
(enforceAccess AM_Audit decision).1 == (decision == AD_Deny)
```

</details>

