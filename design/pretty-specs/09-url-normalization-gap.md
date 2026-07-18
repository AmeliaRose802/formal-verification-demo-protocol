# Gap: URL Normalization for Route Matching is Not Formally Covered

**Status:** Open  
**Priority:** High — the GuestProxyAgent canonical-request rollout (Innovation-2.1) is actively
finding real-world bypass instances in shadow mode  
**Related:** GuestProxyAgent `doc/plans/Innovation-2.1-canonical-request.md`, SDEP G39–G40,
design/pretty-specs/08-rbac-rule-evaluation-gap.md

---

## Distinction from RBAC gap (doc 08)

Document 08 asks *whether the RBAC decision is computed correctly given a correctly
normalized URL*. This document asks *whether the URL is normalized correctly in the first
place* before it ever reaches the privilege matcher.

These are two separate proof obligations:

1. **Normalization correctness** — the canonicalizer produces a canonical form that is
   stable, injective, and rejects all known bypass inputs.
2. **Matching correctness** — given a correctly canonicalized request and a correctly
   canonicalized rule, the matcher reaches the right allow/deny outcome.

Both are outside the current SDEP formal model. Document 08 covers obligation 2;
this document covers obligation 1.

---

## What the current spec covers (and what it misses)

### What it covers

- `P23–G39/G40`: Injectivity of the *HMAC signing payload* encoder (newline-concat vs
  length-prefix). This is about the bytes handed to HMAC, not about URL routing.
- `P28`: The auth-header value is excluded from the signing bytes.
- `P29`: The timestamp inside the signed request is what the verifier checks.

### What it misses

The URL presented by the client to the GPA's proxy is parsed, normalized, and matched
against privilege rules *before* the HMAC signature is ever verified. The normalization
at that layer is entirely different from `canonicalizePayload`. SDEP does not model it.

Key attack classes that are currently invisible to the spec:

| Attack | MSP status | SDEP model |
|--------|-----------|------------|
| `%2F` in path matches `/` on some parsers but not others | Fixed by canonical pipeline (IMDS path `%2F` → segment `/`) | Not modeled |
| `../` path traversal bypasses a deny rule on `/metadata/identity` | Reject with `PathUnderflow` in canonical pipeline | Not modeled |
| `%3F` encodes `?` in path; IMDS re-parses as query | Shadow-mode KD-1; pending client fix | Not modeled |
| `169.254.169.254` vs `2852039166` vs `0xa9fea9fe` vs `[::ffff:a9fe:a9fe]` | All canonicalize to `Destination::Imds` | Not modeled |
| `starts_with("/metadata")` matches `/metadata-attacker/` | Fixed by segment-prefix matching | Not modeled |
| Double-encoding `%2525` → `%25` → `%` | One-decode-only pipeline | Not modeled |
| Matrix params `;jsessionid=abc` on a path segment | Stripped by `strip_matrix_params` | Not modeled |
| Userinfo smuggling `http://attacker@169.254.169.254/` | `UserinfoPresent` error | Not modeled |

---

## What a fix would require

### Phase 1 — Bounded-model URL normalization (3–6 weeks of spec work)

Add a `CanonicalUrl` type in SDEP.cry:

```cryptol
type SegLen   = 8          // max bytes per path segment (bounded model)
type MaxSegs  = 4          // max path segments
type MaxQuery = 2          // max query parameters

type PathSeg  = { len : [IW], buf : [SegLen][8] }
type QueryKV  = { key : PathSeg, value : PathSeg }

type CanonUrl =
  { destination : Endpoint          // IMDS / WireServer / Unknown
  , segments    : [MaxSegs]PathSeg  // decoded, lowercased, dot-resolved
  , numSegs     : [IW]
  , query       : [MaxQuery]QueryKV
  , numQuery    : [IW]
  }
```

Model the normalization pipeline as a partial function (`Result CanonUrl CanonError`)
and prove the key safety properties:

```cryptol
// P_NormIdempotent: canonicalizing a URL twice yields the same result.
// A canonical URL is already in normal form.
property P_NormIdempotent url =
  canonicalize (render (canonicalize url)) == canonicalize url

// P_PercentSlashNeutral: %2F in a path segment is the same as /.
// Both produce identical path segments after normalization.
property P_PercentSlashNeutral seg =
  normalizeSegment (percentEncode '/' seg) == normalizeSegment seg

// P_DotSegmentResolution: a . segment is removed; .. pops the parent.
property P_DotDotResolution (segs : [MaxSegs]PathSeg) n =
  resolveSegments (insertDotDot segs n) == resolveSegments segs

// P_EmbeddedQueryRejected: %3F in a path segment causes an error.
property P_EmbeddedQueryRejected seg =
  normalizeSegment (withEncodedQuery seg) == Err EmbeddedQuery
```

### Phase 2 — Connect normalization to privilege matching (2–4 weeks)

Add `matchPrivilege : CanonUrl -> CanonPrivilege -> Bit` (segment-by-segment prefix
matching) and prove the core security property:

```cryptol
// P_NormMatchMonotone: if the plain URL matches a privilege, the normalized
// URL also matches. No encoding trick removes a match.
property P_NormMatchMonotone url rule =
  matchPrivilege (canonical url) rule ==>
    matchPrivilege (canonical (encode url)) rule

// P_PrefixNotSubstring: /test-evil/x does not match a privilege for /test.
property P_PrefixNotSubstring =
  ~ matchPrivilege (mkUrl "/test-evil/x") (mkPrivilege "/test")
```

---

## Relationship to the HMAC signing model

The URL normalization for route-matching (this gap) and the HMAC signing payload encoder
(G39–G40) are independent security layers:

```
Client request
    │
    ▼
URL normalization + RBAC matching  ←── THIS GAP
    │ (authorized?)
    ▼
HMAC signature verification        ←── covered by P6–P9, G39–G40
    │ (authentic?)
    ▼
Request forwarded to IMDS/WireServer
```

A complete formal model needs both layers. The existing SDEP spec covers the HMAC layer
adequately (with the noted signing-payload injectivity gap); this document is the plan
for the URL normalization layer.

---

## Reference: GuestProxyAgent implementation to model against

The authoritative implementation is:

- `proxy_agent/src/proxy/canonical/` (being built, Innovation-2.1)
- Test vectors: `proxy_agent/src/proxy/canonical/tests/vectors.rs` (300+ golden vectors)
- Pentest scenarios: `pentest/linux/DESIGN.md` sections D1 (URL encoding) and C7 (host form)

The SDEP formal model should be provably equivalent to the canonical pipeline for the
property classes above — the canonical pipeline can serve as the reference implementation
for the spec, or the spec can be written first and the implementation verified against it.

---

## Acceptance criteria

- [ ] `CanonUrl` type and `canonicalize` function added to SDEP.cry
- [ ] At least 6 normalization properties pass in `prove_all.ps1`
- [ ] At least 2 bypass-class properties added to `SDEP_gaps.cry` and confirmed to fail
      (e.g. `starts_with` substring match, double-encoding attack)
- [ ] The bounded model covers all 8 attack classes listed in the table above, either
      with a passing property or an explicit "out of scope" note with justification
