# `packOutcome`  🧩  `internal helper`

> 🧩 **Model abstraction.** bit-packing stand-in for the MSVC ABI's i16 aggregate return; models the byte layout, not a proven function. No production function is proven equivalent to this definition on this page.

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

