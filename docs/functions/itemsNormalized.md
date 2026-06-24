# `itemsNormalized`  🧩  `internal helper`

> 🧩 **Model abstraction.** well-formedness predicate for a bounded record-list (count tag + length-prefixed items). No production function is proven equivalent to this definition on this page.

### Signature

**Parameters**
- `c`: [[IndexWidth](../types.md#indexwidth)]
- `a0`: [LpField](../types.md#lpfield)
- `a1`: [LpField](../types.md#lpfield)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[IndexWidth] -> LpField -> LpField -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
itemsNormalized c a0 a1 =
    (c <= (`MaxItems : [IndexWidth])) /\
    lpFieldNormalized a0 /\ lpFieldNormalized a1 /\
    ((c < 1) ==> (a0 == lpZeroField)) /\
    ((c < 2) ==> (a1 == lpZeroField))
```

---- Record-list encoder/decoder (header / query MAP) -----------------
A header/query map serializes as a count tag followed by a sequence of
length-prefixed items: <count> <len0> bytes0 <len1> bytes1 ... . This
is the shape behind the classic "header smuggling" collision — under
the old separator encoding a value byte could fake a record boundary
and inject an extra record. Length + count tags make boundaries AND the
number of records recoverable only by READING the tags.

### Related Properties
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p24--distinct-headers-have-distinct-canonical-bytes)
- [P25 — Distinct Queries Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p25--distinct-queries-have-distinct-canonical-bytes)

