# `isNonNull`  ✅ Proven (z3)

### Signature

**Parameters**
- `p`: [64]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[64] -> Bit`

</details>

For bug #11: void* in C++; model as a 64-bit address on the Cryptol side.
(The point of this entry is to make saw-spec-gen try to lower void* —
it doesn't matter whether the equivalence is meaningful, only that
codegen succeeds.)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
isNonNull p = p != 0
```

</details>
