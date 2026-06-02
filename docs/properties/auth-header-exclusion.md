# Auth-header exclusion

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P28 — Auth Header Value Excluded From Canonicalization

Two requests that differ ONLY in the bytes of their auth header value
must produce the same canonical bytes — otherwise the signature would
depend on itself.
> **Note:** EXPECTED VERDICT: PASS. The encoder's `isAuth` skip enforces this; if a
> future refactor removes the skip, this property breaks immediately.

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

