# `lpHeader`  `internal helper`

### Signature

**Parameters**
- `h`: [Header](../types.md#header)

**Returns**
- [2 * (1 + [FLs](../types.md#fls))][8]

<details><summary>Raw signature</summary>

`Header -> [2 * (1 + FLs)][8]`

</details>

### Formal definition (Cryptol)

```haskell
lpHeader h = if h.isAuth then zero
                           else (lpField h.name) # (lpField h.value)
```

Length-prefix a header pair OR emit a constant-size all-zero placeholder
if it is the auth header. Fixed output size keeps [canonicalizeS](canonicalizeS.md) Cryptol-
statable; the placeholder content is irrelevant because the encoder
elides auth headers regardless of their value.

