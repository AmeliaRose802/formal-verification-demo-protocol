# `encodeRecs`  `internal helper`

### Signature

**Parameters**
- `c`: [[IndexWidth](../types.md#indexwidth)]
- `a0`: [LpField](../types.md#lpfield)
- `a1`: [LpField](../types.md#lpfield)

**Returns**
- [[RecBufLen](../types.md#recbuflen)][8]

<details><summary>Raw signature</summary>

`[IndexWidth] -> LpField -> LpField -> [RecBufLen][8]`

</details>

### Formal definition (Cryptol)

```haskell
encodeRecs c a0 a1 =
      [ byteAt i | i <- ([0 .. RecBufLen - 1] : [RecBufLen][IndexWidth]) ]
    where
      l0 = a0.len
      l1 = a1.len
      t0 = 1                           // item0 tag position
      t1 = 2 + l0                      // item1 tag position (immediately after item0)
      byteAt : [IndexWidth] -> [8]
      byteAt i =
        if  i == 0                                        then c
         | (c >= 1) /\ (i == t0)                          then l0
         | (c >= 1) /\ (i >= t0 + 1) /\ (i < t0 + 1 + l0) then a0.buf @ ((i - t0 - 1) % (`FieldLen : [IndexWidth]))
         | (c >= 2) /\ (i == t1)                          then l1
         | (c >= 2) /\ (i >= t1 + 1) /\ (i < t1 + 1 + l1) then a1.buf @ ((i - t1 - 1) % (`FieldLen : [IndexWidth]))
        else                                                   0
```

Evaluates 6 conditions on `c`, `a0`, and `a1` in priority order, returning the first applicable [RecBufLen](../types.md#recbuflen) bytes. Defaults to `0` when no prior condition matches.

```mermaid
flowchart TD
  Start(["encodeRecs"])
  Start --> C0{"i == 0"}
  C0 -->|Yes| R0("c")
  C0 -->|No| C1{"(c >= 1) /\ (i == t0)"}
  C1 -->|Yes| R1("l0")
  C1 -->|No| C2{"(c >= 1) /\ (i >= t0 + 1) /\ (i < t0 + 1 + l0)"}
  C2 -->|Yes| R2("a0.buf @ ((i - t0 - 1) % (`FieldLen : [IndexWidth]))")
  C2 -->|No| C3{"(c >= 2) /\ (i == t1)"}
  C3 -->|Yes| R3("l1")
  C3 -->|No| C4{"(c >= 2) /\ (i >= t1 + 1) /\ (i < t1 + 1 + l1)"}
  C4 -->|Yes| R4("a1.buf @ ((i - t1 - 1) % (`FieldLen : [IndexWidth]))")
  C4 -->|No| R5("0")
  classDef default fill:#e8f4fd,stroke:#2196F3,stroke-width:2px,color:#1565C0
  style Start fill:#1565C0,stroke:#0D47A1,color:#fff,stroke-width:2px
```

### Related Properties
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p24--distinct-headers-have-distinct-canonical-bytes)
- [P25 — Distinct Queries Have Distinct Canonical Bytes](../properties/canonicalization-byte-injectivity.md#p25--distinct-queries-have-distinct-canonical-bytes)

