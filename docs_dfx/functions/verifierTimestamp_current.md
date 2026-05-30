# `verifierTimestamp_current`  `internal helper`

### Signature

**Parameters**
- `r`: [RequestS](../SDEP/types.md#requests)
- `_`: [Timestamp](../SDEP/types.md#timestamp)

**Returns**
- [Timestamp](../SDEP/types.md#timestamp)

<details><summary>Raw signature</summary>

`RequestS -> Timestamp -> Timestamp`

</details>

The timestamp the verifier validates must equal the timestamp inside the
signed request — otherwise an attacker can replay a stale signed request
with a fresh "current time" supplied by the caller and pass the freshness
check despite the signature being over old bytes.
The implementation now binds the timestamp into the request: it is a
field of `DeviceRequest`, is included in the canonical signed bytes by
`canonicalizePayload`, and is the only value `handle_activate` passes
to `[isValidRequestDate](../SDEP/functions/isValidRequestDate.md)`. The Cryptol model below mirrors that: the
verifier extracts `r.timestamp` and the caller-supplied parameter (if
any) is unused — a pure transport-layer artefact.

### Related Properties
- [P29 — Verifier Uses Request Bound Timestamp](../SDEP/properties/timestamp-binding.md#p29--verifier-uses-request-bound-timestamp)

<details><summary>Formal definition (Cryptol)</summary>

```cryptol
verifierTimestamp_current r _ = r.timestamp
```

</details>
