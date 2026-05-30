# `pickGreater`

### Signature

**Parameters**
- `a`: [64]
- `b`: [64]

**Returns**
- [64]

<details><summary>Raw signature</summary>

`[64] -> [64] -> [64]`

</details>

Matches C++ `std::int64_t [pickGreater](../SDEP_small/functions/pickGreater.md)(std::int64_t a, std::int64_t b)`.

### Related Properties
- [P5 — Result Is At Least First Input](../SDEP_small/properties/signed-max.md#p5--result-is-at-least-first-input)
- [P6 — Result Is At Least Second Input](../SDEP_small/properties/signed-max.md#p6--result-is-at-least-second-input)
- [P7 — Result Is One Of The Inputs](../SDEP_small/properties/signed-max.md#p7--result-is-one-of-the-inputs)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
pickGreater a b = if a >$ b then a else b
```

</details>
