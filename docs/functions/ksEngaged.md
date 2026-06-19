# `ksEngaged`  📄

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
ksEngaged pre = (pre @ ks_off_engaged) == 1
```

> **Not yet verified.**

Predicates the body reads out of the pre-state object image `pre`
together with the requested key id `kid`.

