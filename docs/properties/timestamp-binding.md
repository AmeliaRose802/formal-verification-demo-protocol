# Timestamp binding

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P29 — Verifier Uses Request Bound Timestamp

> **Note:** EXPECTED VERDICT: PASS — the verifier uses the request-bound timestamp,
> so a replayed signed request cannot be paired with a fresh "current
> time" parameter to forge freshness.

<details><summary>Formal property (Cryptol)</summary>

```haskell
verifierTimestamp_current r tsFromCaller == r.timestamp
```

</details>

**Involved:** [`verifierTimestamp_current`](../functions/verifierTimestamp_current.md)

