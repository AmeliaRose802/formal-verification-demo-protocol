# `isValidRequestDate`

### Signature

**Parameters**
- `requestTs`: [Timestamp](../types.md#timestamp)
- `currentTime`: [Timestamp](../types.md#timestamp)
- `windowSeconds`: [Window](../types.md#window)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`Timestamp -> Timestamp -> Window -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
isValidRequestDate requestTs currentTime windowSeconds =
  (requestTs <= currentTime)
  && ((currentTime - requestTs) <= windowSeconds)
```

Checks whether the request date is valid: validates a bounded condition over `requestTs`, `currentTime`, and `windowSeconds`.

### Related Properties
- [P17 — Timestamp At Boundary Accepted](../properties/protocol-liveness.md#p17--timestamp-at-boundary-accepted)
- [P18 — Timestamp Beyond Boundary Rejected](../properties/protocol-liveness.md#p18--timestamp-beyond-boundary-rejected)

