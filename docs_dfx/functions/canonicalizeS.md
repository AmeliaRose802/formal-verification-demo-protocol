# `canonicalizeS`

### Signature

**Parameters**
- `r`: [RequestS](../SDEP/types.md#requests)

**Returns**
- [3 * (1 + [FLs](../SDEP/types.md#fls)) + [Ns](../SDEP/types.md#ns) * 2 * (1 + [FLs](../SDEP/types.md#fls)) + 8][8]

<details><summary>Raw signature</summary>

`RequestS -> [3 * (1 + FLs) + Ns * 2 * (1 + FLs) + 8][8]`

</details>

Concrete canonicalize: length-prefixed method, body, headers (with
auth-header exclusion), path, then the 8-byte big-endian timestamp.
Mirrors the production C++/Rust encoder shape.

### Related Properties
- [P28 — Auth Header Value Excluded From Canonicalization](../SDEP/properties/auth-header-exclusion.md#p28--auth-header-value-excluded-from-canonicalization)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
canonicalizeS r =
    lpField r.method
  # lpField r.body
  # join [ lpHeader h | h <- r.hdrs ]
  # lpField r.path
  # (split r.timestamp : [8][8])
```

</details>
