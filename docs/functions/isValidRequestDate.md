# `isValidRequestDate`  ✅

### Signature

**Parameters**
- `requestTs`: [64]
- `currentTime`: [64]
- `windowSeconds`: [64]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[64] -> [64] -> [64] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isValidRequestDate requestTs currentTime windowSeconds =
  if (requestTs <$ 0) \/ (currentTime <$ 0) \/ (windowSeconds <$ 0)
    then False
    else (requestTs <=$ currentTime)
      /\ ((currentTime - requestTs) <=$ windowSeconds)
```

`std::int64_t` semantics. The implementation in cpp/include/sdep/auth.hpp
first rejects negative timestamps / window (otherwise the subtraction
`currentTime - requestTs` can wrap signed-overflow when requestTs is near
INT64_MIN — found by SAW on 2026-05-30, see FINDINGS.md §1). The shim
below mirrors that guard exactly so the SAW equivalence proof goes
through for all i64 inputs.

### Related Properties
- [P17 — Timestamp At Boundary Accepted](../properties/protocol-liveness.md#p17--timestamp-at-boundary-accepted)
- [P18 — Timestamp Beyond Boundary Rejected](../properties/protocol-liveness.md#p18--timestamp-beyond-boundary-rejected)

