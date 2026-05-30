# Timestamp binding

### P29 — Verifier Uses Request Bound Timestamp

> **Note:** EXPECTED VERDICT: PASS — the verifier uses the request-bound timestamp,
> so a replayed signed request cannot be paired with a fresh "current
> time" parameter to forge freshness.

**Involved:** [`verifierTimestamp_current`](../SDEP/functions/verifierTimestamp_current.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
verifierTimestamp_current r tsFromCaller == r.timestamp
```

</details>

