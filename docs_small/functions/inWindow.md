# `inWindow`

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

Matches C++ `bool [inWindow](../SDEP_small/functions/inWindow.md)(std::int64_t reqTs, std::int64_t now, std::int64_t window)`.
Uses SIGNED comparisons (<=$) to mirror C++ signed semantics.

### Related Properties
- [P1 — Self In Window Iff Window Nonnegative](../SDEP_small/properties/signed-timestamp-arithmetic.md#p1--self-in-window-iff-window-nonnegative)
- [P2 — Zero Duration Always In Nonnegative Window](../SDEP_small/properties/signed-timestamp-arithmetic.md#p2--zero-duration-always-in-nonnegative-window)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
inWindow reqTs now window =
  (reqTs <=$ now) && ((now - reqTs) <=$ window)
```

</details>
