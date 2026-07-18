# Gap: RBAC Rule Evaluation is Outside the Formal Model

**Status:** Open  
**Priority:** High — this is the actual attack surface where real-world SSRF bypasses occur  
**Related:** Azure MSP GuestProxyAgent Innovation-2.1 (CanonicalRequest), SDEP_gaps.cry §G30–G35

---

## What the current spec covers

`enforceAccess` and `enforceAccessMSP` (and the two-endpoint `enforceAccessEndpoint`) take a
pre-resolved `AccessDecision` — `AD_Allow`, `AD_Deny`, or `AD_NoRule` — as a parameter.
Properties P11–P14 and P26–P35 reason about what happens *after* the decision is computed.

The entire process of arriving at that decision — URL parsing, path normalization,
privilege matching, identity matching, and RBAC role assignment lookup — is **not modeled**.
The spec assumes the caller supplies the correct decision; it says nothing about whether the
decision was computed correctly.

---

## Why this matters

The Azure GuestProxyAgent's active security work (Innovation-2.1, in shadow-mode rollout as of
July 2026) focuses entirely on the *pre-decision* layer. Two concrete bugs were found in
production during shadow-mode testing:

| ID | Root cause | Legacy decision | Canonical decision |
|----|------------|-----------------|-------------------|
| KD-1 | `VmssRuntimeAgent` encodes `?` as `%3F` in path; IMDS decodes it but legacy matcher allows the raw string | allow | deny (CANON_EMBQ) |
| KD-2 | `mi_res_id` ARM resource IDs are case-insensitive but legacy lowercased query values while canonical didn't | allow | deny (mismatched case) |

Additionally, `authorization_rules.rs` test `canonical_decision_diverges_on_substring_vs_segment_prefix`
demonstrates that `starts_with("/test")` matches `/test-evil/x` in the legacy matcher —
a path-prefix confusion bypass. Canonical segment-by-segment matching denies it.

None of these attacks are visible in SDEP's current formal model because the model never
sees the raw URL.

---

## What a fix would require

### Option A — Add a `CanonicalRequest` type to the spec (high coverage, significant cost)

Add a `CanonicalRequest` record type (method, path segments, query BTreeMap, destination
endpoint) and a `canonicalizeRequest` function that applies the full normalization pipeline:

1. Classify destination (IMDS / WireServer / Unknown)
2. Percent-decode path once (reject malformed `%XX`, overlong UTF-8, embedded `?`)
3. Resolve `.` and `..` segments (error on underflow)
4. Strip matrix params (`;k=v` suffixes)
5. ASCII-lowercase path and query keys
6. Parse and lowercase query values

Then model privilege matching as structural equality/prefix on canonical forms rather than
string `starts_with`. Add a `matchPrivilege : CanonicalPrivilege -> CanonicalRequest -> Bit`
function and prove:

```cryptol
// No URL encoding trick produces a match that the plain path does not.
property P_CanonMatchIsStable rawUrl rule =
  requestNormalized rawUrl ==>
    matchPrivilege rule (canonicalize rawUrl)
      == matchPrivilege rule (canonicalize (doublyEncode rawUrl))
```

**Cost:** ~400 lines of Cryptol; new bounded-model types for path segments and query maps;
Z3 proof times will grow significantly (expect 10–60 s/property for the normalization
idempotence properties, similar to P23–P25 scaling).

### Option B — Add normalization property tests only (lower cost, partial coverage)

Keep the current `AccessDecision` abstraction but add Cryptol properties that verify the
normalization function itself (separate from the access-control decision tree):

- `P_NormalizationIdempotent` — applying canonicalize twice gives the same result
- `P_PercentEncodingNeutral` — `%2F` in a path segment normalizes the same as `/`
- `P_PathTraversalBlocked` — a path containing `../` either errors or resolves correctly
- `P_EmbeddedQueryRejected` — a path containing `%3F` errors (CANON_EMBQ)

These can be proven independently of the access-control decision tree and do not require
restructuring `enforceAccess`. They cover the normalization correctness obligation; the
"correct decision given correct normalization" half is already covered by P11–P35.

**Cost:** ~150 lines of Cryptol, similar complexity to the current P23–P25 bounded model;
no change to `enforceAccess` or the SAW equivalence proofs.

---

## Recommendation

Start with **Option B** (normalization properties) to close the most critical attack class
(URL-encoding bypasses, path traversal) without disrupting the existing SAW proof layers.
Option A is the right long-term architecture if the spec needs to be a full reference for
a production rule evaluator.

---

## Acceptance criteria

- [ ] At least four normalization properties pass in `prove_all.ps1` (P36+)
- [ ] At least one gap property in `SDEP_gaps.cry` exercises a bypass that the normalization
      properties would catch (e.g. `starts_with` substring confusion)
- [ ] SAW Layer 1 (C++) and Layer 2 (Rust) are updated if any new Cryptol shims are added
