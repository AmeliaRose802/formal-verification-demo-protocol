# Error Handling

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P19 — Vault Unavailable Is Internal Error

P19: A vault-unavailable result maps to InternalError.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isActivationResult activationResult ==>
enrollDevice True True AR_VaultUnavailable activationResult
== ER_InternalError
```

</details>

**Involved:** [`AR_VaultUnavailable`](../types.md#authresult), [`ER_InternalError`](../types.md#enrollmentresult), [`enrollDevice`](../functions/enrollDevice.md)

### P20 — Invalid Request Is Bad Request

P20: An invalid request (validMetadata == False) maps to BadRequest, not
Unauthorized — i.e. the BadRequest classification is reachable and distinct.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isKeyVaultResult vaultResult ==>
provisionKey True False vaultResult keyIsActive == PR_BadRequest
```

</details>

**Involved:** [`PR_BadRequest`](../types.md#provisionresult), [`provisionKey`](../functions/provisionKey.md)

### P21 — Activate Without Metadata Is Unauthorized

P21: Activate without metadata maps to Unauthorized.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAuthResult authResult ==>
isActivationResult activationResult ==>
enrollDevice True False authResult activationResult == ER_Unauthorized
```

</details>

**Involved:** [`ER_Unauthorized`](../types.md#enrollmentresult), [`enrollDevice`](../functions/enrollDevice.md)

### P22 — Activation Io Failure Is Internal Error

P22: An activation I/O failure maps to InternalError. Any activation
result that is neither Success nor AlreadyActive (i.e. an I/O failure)
yields InternalError when authentication succeeded.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isActivationResult activationResult ==>
(activationResult != AC_Success) ==>
(activationResult != AC_AlreadyActive) ==>
enrollDevice True True AR_Authenticated activationResult
== ER_InternalError
```

</details>

**Involved:** [`AC_AlreadyActive`](../types.md#activationresult), [`AC_Success`](../types.md#activationresult), [`AR_Authenticated`](../types.md#authresult), [`ER_InternalError`](../types.md#enrollmentresult), [`enrollDevice`](../functions/enrollDevice.md)

### P23 — Distinct Requests Have Distinct Canonical Bytes

P23: Distinct normalized requests have distinct canonical byte streams.
(Length-prefixed canonicalization is byte-injective.)
> **Note:** EXPECTED VERDICT: PASS. This is the safety property the production
> canonicalizer satisfies after the delimiter -> length-prefix fix.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( (nm1 <= (`FL : [IW])) /\ (nb1 <= (`FL : [IW])) /\
(nm2 <= (`FL : [IW])) /\ (nb2 <= (`FL : [IW])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

**Involved:** [`FL`](../types.md#fl), [`IW`](../types.md#iw), [`canonLenPrefixed`](../functions/canonLenPrefixed.md), [`canonNormalized`](../functions/canonNormalized.md)

### P24 — Distinct Headers Have Distinct Canonical Bytes

The P23 fix length-prefixes the FIVE TOP-LEVEL fields of the canonical
payload (method | body | canonHeaders | path | canonQuery). The inner
canonicalizers `canonicalize_headers` and `canonicalize_query` now use
the SAME length-prefix scheme for every individual name and value they
emit (an 8-byte big-endian length tag followed by the raw bytes), so
they are structurally byte-injective in their input map by the same
argument that proves P23: a parser reads <tag, name, tag, value> in
fixed order with no byte inside any name or value capable of being
misread as a record boundary.
Historical note: an earlier revision joined records with '\n' (headers)
or '&' (query) and fields inside each record with ':' / '='. That
encoding admitted a header / query smuggling collision (a value
containing "\nname:forged" parsed as an extra record under a forged
header name). Concrete production-code collisions for that earlier
encoding were exhibited in rust/tests/validate_canon_gaps.rs.
P24: Distinct normalized header lists have distinct canonical byte
streams. (`canonicalize_headers` is byte-injective in the header map.)
The production encoder length-prefixes every name and value with an
8-byte big-endian tag (same shape as canonicalizePayload), so distinct
normalized header records produce distinct canonical byte streams.
> **Note:** EXPECTED VERDICT: PASS — the encoding closes the smuggling gap.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( (nm1 <= (`FL : [IW])) /\ (nb1 <= (`FL : [IW])) /\
(nm2 <= (`FL : [IW])) /\ (nb2 <= (`FL : [IW])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

**Involved:** [`FL`](../types.md#fl), [`IW`](../types.md#iw), [`canonLenPrefixed`](../functions/canonLenPrefixed.md), [`canonNormalized`](../functions/canonNormalized.md)

### P25 — Distinct Queries Have Distinct Canonical Bytes

P25: Distinct normalized query lists have distinct canonical byte
streams. (`canonicalize_query` is byte-injective in the query map.)
Same length-prefix shape; no separators are needed because the length
tag uniquely marks each record boundary.
> **Note:** EXPECTED VERDICT: PASS.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( (nm1 <= (`FL : [IW])) /\ (nb1 <= (`FL : [IW])) /\
(nm2 <= (`FL : [IW])) /\ (nb2 <= (`FL : [IW])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

**Involved:** [`FL`](../types.md#fl), [`IW`](../types.md#iw), [`canonLenPrefixed`](../functions/canonLenPrefixed.md), [`canonNormalized`](../functions/canonNormalized.md)

### P26 — Enforce Without Rule Allows Silently

[P11](access-control.md#p11--access-off-allows-without-logging)..[P14](access-control.md#p14--access-enforce-allows-permitted) cover only 5 of the 9 cells of the ([AccessMode](../types.md#accessmode) × [AccessDecision](../types.md#accessdecision))
matrix, and [P12](access-control.md#p12--access-audit-never-denies) only checks the `.0 = allowed` projection (not the
`.1 = logged` flag). The two properties below close the matrix.
> **Note:** EXPECTED VERDICT: PASS — they document previously-unverified behaviour
> of the existing model.
> P26: Access-enforce mode with no matching rule allows silently (matches
> the spec's implicit fall-through and the C++/Rust impl's `else` branch).

<details><summary>Formal property (Cryptol)</summary>

```haskell
enforceAccess AM_Enforce AD_NoRule == (True, False)
```

</details>

**Involved:** [`AD_NoRule`](../types.md#accessdecision), [`AM_Enforce`](../types.md#accessmode), [`AccessDecision`](../types.md#accessdecision), [`AccessMode`](../types.md#accessmode), [`enforceAccess`](../functions/enforceAccess.md)

### P27 — Audit Logs Only On Denial

P27: Access-audit mode logs IFF the underlying decision is Deny — never
on Allow or NoRule. Closes the .1 = logged projection that [P12](access-control.md#p12--access-audit-never-denies) leaves
unspecified.

<details><summary>Formal property (Cryptol)</summary>

```haskell
isAccessDecision decision ==>
(enforceAccess AM_Audit decision).1 == (decision == AD_Deny)
```

</details>

**Involved:** [`AD_Deny`](../types.md#accessdecision), [`AM_Audit`](../types.md#accessmode), [`enforceAccess`](../functions/enforceAccess.md)

