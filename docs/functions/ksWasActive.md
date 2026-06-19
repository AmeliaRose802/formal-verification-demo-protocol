# `ksWasActive`  📄

> 📄 **Spec-only.** This definition lives in the Cryptol model on purpose — typically as a gap-exhibiting reference function — and has **no production implementation**.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
ksWasActive pre = (pre @ ks_off_isActive) == 1
```

> **Not yet verified.**

Compares computed and provided values over `pre`, returning `True` on match.

