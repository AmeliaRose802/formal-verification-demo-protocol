# Structured-request properties

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P28 — Auth Header Value Excluded From Canonicalization

P28: Auth-header value excluded from canonicalization.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( requestNormalized r /\ fieldNormalized v1 /\ fieldNormalized v2 ) ==>
canonicalizeS { r | hdrs = [ if h.isAuth then { h | value = v1 } else h
| h <- r.hdrs ] }
==
canonicalizeS { r | hdrs = [ if h.isAuth then { h | value = v2 } else h
| h <- r.hdrs ] }
```

</details>

**Involved:** [`canonicalizeS`](../functions/canonicalizeS.md), [`fieldNormalized`](../functions/fieldNormalized.md), [`requestNormalized`](../functions/requestNormalized.md)

### P29 — Verifier Uses Request Bound Timestamp

P29: The verifier uses the request-bound timestamp, not the caller's.

<details><summary>Formal property (Cryptol)</summary>

```haskell
verifierTimestamp_current r tsFromCaller == r.timestamp
```

</details>

**Involved:** [`verifierTimestamp_current`](../functions/verifierTimestamp_current.md)

