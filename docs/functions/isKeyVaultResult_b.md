# `isKeyVaultResult_b`

### Signature

**Parameters**
- `r`: [8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isKeyVaultResult_b r = r <= KV_IoError_b
```

Well-formedness predicates over ABI-width enum reps
C++ enums are `enum class : std::uint8_t` so the LLVM ABI parameter
is i8.  Symbolic execution explores all 256 values; valid program
states only ever produce values in the declared range.  These
predicates assert that range for use as preconditions in properties.

### Related Properties
- [P2 — Active Key Blocks Provisioning](../properties/key-lifecycle-safety.md#p2--active-key-blocks-provisioning)
- [P5 — Disabled Fleet Rejects Everything](../properties/key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything)
- [P20 — Invalid Request Is Bad Request](../properties/error-handling.md#p20--invalid-request-is-bad-request)

