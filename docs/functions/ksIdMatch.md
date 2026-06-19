# `ksIdMatch`  📄

> 📄 **Spec-only.** This definition lives in the Cryptol model on purpose — typically as a gap-exhibiting reference function — and has **no production implementation**.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]
- `kid`: [16][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [16][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
ksIdMatch pre kid = (take`{16} (drop`{80} pre)) == kid
```

> **Not yet verified.**

Compares computed and provided values over `pre` and `kid`, returning `True` on match.

