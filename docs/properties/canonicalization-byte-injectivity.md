# Canonicalization byte-injectivity

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P23 — Distinct Requests Have Distinct Canonical Bytes

These three properties prove the length-prefix framing is byte-injective
the HONEST way: each exhibits a DECODER and shows it inverts the encoder,
so the length/count tags must be read to recover field boundaries. (The
earlier fixed-width `canonLenPrefixed` model proved nothing about the
tags — its boundaries came from the type widths.) All three are bounded
([FieldLen](../types.md#fieldlen) = 4, <= 2 records); the production encoder remains unverified.
P23: Two adjacent variable-length fields decode back to themselves, so
distinct (normalized) requests have distinct canonical byte streams.
This is the top-level method|body framing the SAW-verified
canonicalize_lp emits; the tag, not the slot width, marks the boundary.

<details><summary>Formal property (Cryptol)</summary>

```haskell
( lpFieldNormalized f /\ lpFieldNormalized g )
==> (decodeLP2 (encodeLP2 f g) == (f, g))
```

</details>

**Involved:** [`FieldLen`](../types.md#fieldlen), [`decodeLP2`](../functions/decodeLP2.md), [`encodeLP2`](../functions/encodeLP2.md), [`lpFieldNormalized`](../functions/lpFieldNormalized.md)

### P24 — Distinct Headers Have Distinct Canonical Bytes

P24: A header MAP (count-prefixed list of length-prefixed items) decodes
back to itself, so distinct normalized header lists have distinct
canonical byte streams. The roundtrip forces both the per-item length
tags and the record count to be load-bearing — closing the header-
smuggling gap where a value byte faked a record boundary.

<details><summary>Formal property (Cryptol)</summary>

```haskell
itemsNormalized c a0 a1
==> (decodeRecs (encodeRecs c a0 a1) == (c, a0, a1))
```

</details>

**Involved:** [`decodeRecs`](../functions/decodeRecs.md), [`encodeRecs`](../functions/encodeRecs.md), [`itemsNormalized`](../functions/itemsNormalized.md)

### P25 — Distinct Queries Have Distinct Canonical Bytes

P25: The query MAP reuses the BYTE-IDENTICAL `encodeRecs` encoder as the
header map (P24). This isolates the "can't add or drop a record" half of
the smuggling guarantee: two normalized record-lists that serialize to
the same bytes must carry the same number of records, so an attacker
cannot smuggle an extra query parameter in (or out).

<details><summary>Formal property (Cryptol)</summary>

```haskell
( itemsNormalized c1 a1 b1 /\ itemsNormalized c2 a2 b2 /\
encodeRecs c1 a1 b1 == encodeRecs c2 a2 b2 )
==> (c1 == c2)
```

</details>

**Involved:** [`encodeRecs`](../functions/encodeRecs.md), [`itemsNormalized`](../functions/itemsNormalized.md)

