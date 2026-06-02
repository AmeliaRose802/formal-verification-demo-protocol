# `canonicalizeS`

### Signature

**Parameters**
- `r`: [RequestS](../types.md#requests)

**Returns**
- [3 * (1 + [FLs](../types.md#fls)) + [Ns](../types.md#ns) * 2 * (1 + [FLs](../types.md#fls)) + 8][8]

<details><summary>Raw signature</summary>

`RequestS -> [3 * (1 + FLs) + Ns * 2 * (1 + FLs) + 8][8]`

</details>

### Formal definition (Cryptol)

```haskell
canonicalizeS r =
    lpField r.method
  # lpField r.body
  # join [ lpHeader h | h <- r.hdrs ]
  # lpField r.path
  # (split r.timestamp : [8][8])
```

Concrete canonicalize: length-prefixed method, body, headers (with
auth-header exclusion), path, then the 8-byte big-endian timestamp.
Mirrors the production C++/Rust encoder shape.

### Related Properties
- [P28 — Auth Header Value Excluded From Canonicalization](../properties/auth-header-exclusion.md#p28--auth-header-value-excluded-from-canonicalization)

