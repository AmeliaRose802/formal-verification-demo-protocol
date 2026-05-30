# void* pointer-value

### P3 — Null Pointer Is Not Nonnull

The null pointer (address 0) is reported as null.

**Involved:** [`isNonNull`](../SDEP_small/functions/isNonNull.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isNonNull 0 == False
```

</details>

### P4 — Nonzero Pointer Is Nonnull

Any non-zero address is reported as non-null.

**Involved:** [`isNonNull`](../SDEP_small/functions/isNonNull.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isNonNull 1 == True
```

</details>

