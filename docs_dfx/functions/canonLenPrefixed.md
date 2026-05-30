# `canonLenPrefixed`  `internal helper`

### Signature

**Parameters**
- `nm`: [[IW](../SDEP/types.md#iw)]
- `m`: [[FL](../SDEP/types.md#fl)][8]
- `nb`: [[IW](../SDEP/types.md#iw)]
- `b`: [[FL](../SDEP/types.md#fl)][8]

**Returns**
- [2 * [FL](../SDEP/types.md#fl) + 2][8]

<details><summary>Raw signature</summary>

`[IW] -> [FL][8] -> [IW] -> [FL][8] -> [2 * FL + 2][8]`

</details>

Length-prefixed canonicalization. Each variable-length field is preceded
by its length tag: a parser reads the tag, then exactly that many bytes,
then the next tag, then exactly that many bytes. No byte inside any field
can be misread as a boundary, so the encoding is structurally injective.
The Cryptol bound uses an 8-bit length tag (sufficient for [FL](../SDEP/types.md#fl) <= 255);
production uses a 64-bit big-endian tag (sufficient for any std::size_t /
usize field). The injectivity argument is identical for both widths.

### Related Properties
- [P23 — Distinct Requests Have Distinct Canonical Bytes](../SDEP/properties/error-handling.md#p23--distinct-requests-have-distinct-canonical-bytes)
- [P24 — Distinct Headers Have Distinct Canonical Bytes](../SDEP/properties/error-handling.md#p24--distinct-headers-have-distinct-canonical-bytes)
- [P25 — Distinct Queries Have Distinct Canonical Bytes](../SDEP/properties/error-handling.md#p25--distinct-queries-have-distinct-canonical-bytes)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
canonLenPrefixed nm m nb b = [nm] # m # [nb] # b
```

</details>
