# `isValidRequestDate`

### Signature

**Parameters**
- `requestTs`: [Timestamp](../SDEP/types.md#timestamp)
- `currentTime`: [Timestamp](../SDEP/types.md#timestamp)
- `windowSeconds`: [Window](../SDEP/types.md#window)

**Returns**
- Bit

<details><summary>Raw signature</summary>

`Timestamp -> Timestamp -> Window -> Bit`

</details>

Checks whether the request date is valid: validates a bounded condition over `requestTs`, `currentTime`, and `windowSeconds`.

### Related Properties
- [P17 — Timestamp At Boundary Accepted](../SDEP/properties/protocol-liveness.md#p17--timestamp-at-boundary-accepted)
- [P18 — Timestamp Beyond Boundary Rejected](../SDEP/properties/protocol-liveness.md#p18--timestamp-beyond-boundary-rejected)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
isValidRequestDate requestTs currentTime windowSeconds =
  (requestTs <= currentTime)
  && ((currentTime - requestTs) <= windowSeconds)
```

</details>
