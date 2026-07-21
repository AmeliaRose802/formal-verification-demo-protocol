# `keyStoreCurrentRet`  📄

> 📄 **Spec-only.** This definition lives in the Cryptol model on purpose — typically as a gap-exhibiting reference function — and has **no production implementation**.

### Signature

**Parameters**
- `pre`: [[KS_BYTES](../types.md#ks_bytes)][8]

**Returns**
- [72][8]

<details><summary>Raw signature</summary>

`[KS_BYTES][8] -> [72][8]`

</details>

### Formal definition (Cryptol)

```haskell
keyStoreCurrentRet pre = drop`{80} pre
```

> **Not yet verified.**

KeyStore::current returns the optional<EnrollmentKey> stored in `key_`.
In the flat KeyStore image this is the trailing 72 bytes:

```text
  payload[64] at [80..143], has_value at [144], tail padding [145..151].
```

Model as an exact slice copy from the object image.

