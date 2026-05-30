# Auth-header exclusion

### P28 — Auth Header Value Excluded From Canonicalization

Two requests that differ ONLY in the bytes of their auth header value
must produce the same canonical bytes — otherwise the signature would
depend on itself.
> **Note:** EXPECTED VERDICT: PASS. The encoder's `isAuth` skip enforces this; if a
> future refactor removes the skip, this property breaks immediately.

**Involved:** [`canonicalizeS`](../SDEP/functions/canonicalizeS.md), [`fieldNormalized`](../SDEP/functions/fieldNormalized.md), [`requestNormalized`](../SDEP/functions/requestNormalized.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
( requestNormalized r /\ fieldNormalized v1 /\ fieldNormalized v2 ) ==>
canonicalizeS { r | hdrs = [ if h.isAuth then { h | value = v1 } else h
| h <- r.hdrs ] }
==
canonicalizeS { r | hdrs = [ if h.isAuth then { h | value = v2 } else h
| h <- r.hdrs ] }
```

</details>

