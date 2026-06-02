# `packOutcome`  `internal helper`

### Signature

**Parameters**
- `allowed`: Bit
- `logged`: Bit

**Returns**
- [16]

<details><summary>Raw signature</summary>

`Bit -> Bit -> [16]`

</details>

### Formal definition (Cryptol)

```haskell
packOutcome allowed logged =
    (if logged  then 1 else 0 : [8]) #
    (if allowed then 1 else 0 : [8])
    // little-endian pack: low byte = allowed, high byte = logged
```

```text
  i16_return = (logged << 8) | allowed
```

We construct the i16 directly from the two boolean lanes.

