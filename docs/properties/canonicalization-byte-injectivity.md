# Canonicalization byte-injectivity

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P23 — Distinct Requests Have Distinct Canonical Bytes

P23: Distinct normalized requests have distinct canonical byte streams.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( (nm1 <= (`FieldLen : [IndexWidth])) /\ (nb1 <= (`FieldLen : [IndexWidth])) /\
(nm2 <= (`FieldLen : [IndexWidth])) /\ (nb2 <= (`FieldLen : [IndexWidth])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

**Involved:** [`FieldLen`](../types.md#fieldlen), [`IndexWidth`](../types.md#indexwidth), [`canonLenPrefixed`](../functions/canonLenPrefixed.md), [`canonNormalized`](../functions/canonNormalized.md)

### P24 — Distinct Headers Have Distinct Canonical Bytes

P24: Distinct normalized header lists have distinct canonical byte streams.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( (nm1 <= (`FieldLen : [IndexWidth])) /\ (nb1 <= (`FieldLen : [IndexWidth])) /\
(nm2 <= (`FieldLen : [IndexWidth])) /\ (nb2 <= (`FieldLen : [IndexWidth])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

**Involved:** [`FieldLen`](../types.md#fieldlen), [`IndexWidth`](../types.md#indexwidth), [`canonLenPrefixed`](../functions/canonLenPrefixed.md), [`canonNormalized`](../functions/canonNormalized.md)

### P25 — Distinct Queries Have Distinct Canonical Bytes

P25: Distinct normalized query lists have distinct canonical byte streams.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( (nm1 <= (`FieldLen : [IndexWidth])) /\ (nb1 <= (`FieldLen : [IndexWidth])) /\
(nm2 <= (`FieldLen : [IndexWidth])) /\ (nb2 <= (`FieldLen : [IndexWidth])) /\
canonNormalized nm1 m1 /\ canonNormalized nb1 b1 /\
canonNormalized nm2 m2 /\ canonNormalized nb2 b2 /\
canonLenPrefixed nm1 m1 nb1 b1 == canonLenPrefixed nm2 m2 nb2 b2 )
==> ((nm1, m1, nb1, b1) == (nm2, m2, nb2, b2))
```

</details>

**Involved:** [`FieldLen`](../types.md#fieldlen), [`IndexWidth`](../types.md#indexwidth), [`canonLenPrefixed`](../functions/canonLenPrefixed.md), [`canonNormalized`](../functions/canonNormalized.md)

