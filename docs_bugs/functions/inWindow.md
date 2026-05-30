# `inWindow`  ❌ Failed: verify script exited with code 1

### Signature

**Parameters**
- `reqTs`: [64]
- `now`: [64]
- `window`: [64]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[64] -> [64] -> [64] -> Bit`

</details>

For bug #12: 3x std::int64_t typed parameters.

### Related Properties
- [P — In Window Lower Bound](../SDEP_min_bugs/properties/misc.md#p--in-window-lower-bound)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
inWindow reqTs now window =
  (reqTs <= now) && ((now - reqTs) <= window)
```

</details>
