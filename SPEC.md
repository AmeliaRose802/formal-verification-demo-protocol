# Secure Device Enrollment Protocol (SDEP) — Specification

## Purpose

This document specifies the **Secure Device Enrollment Protocol (SDEP)**, a protocol for securely enrolling IoT devices into a fleet management system. SDEP ensures that only authenticated devices with valid credentials can establish trusted communication channels with the fleet controller.

This protocol is designed as a formal verification case study. The goal is to implement SDEP in a systems language , write Cryptol specifications for the decision logic, prove 22 security properties with SAW/Z3.

---

## 1. Overview

### 1.1 Actors

| Actor | Description |
|-------|-------------|
| **Device** | An IoT device (sensor, actuator, gateway) requesting enrollment |
| **Fleet Controller** | Server that manages device enrollment and issues credentials |
| **Key Vault** | Backend store for device enrollment keys |

### 1.2 Protocol Summary

SDEP has three phases:

```
Phase 1: PROVISION — Device requests a new enrollment key
Phase 2: ACTIVATE  — Device proves ownership of the key via HMAC signature
Phase 3: STATUS    — Device or operator queries enrollment state
```

Keys follow an irreversible lifecycle:

```
[No Key] --provision--> [Provisional] --activate--> [Active]
                                                       |
                                                  (permanent)
```

Once a key transitions to **Active**, it cannot be re-provisioned, re-activated, or reverted. This is the central safety invariant.

### 1.3 Transport

All communication is over HTTP. The Fleet Controller exposes a REST API on `http://169.254.169.254` (link-local, no external routing). Requests must include the header `X-Fleet-Metadata: true` to prevent SSRF attacks.

---

## 2. Data Types

### 2.1 Enumerations

```
FleetMode           = { Disabled, Enabled }
KeyVaultResult      = { Ok, NotFound, IoError }
AuthResult          = { Authenticated, Unauthenticated, VaultUnavailable }
ActivationResult    = { Success, AlreadyActive }
ProvisionResult     = { Succeeded, Unauthorized, BadRequest, Disabled, InternalError }
EnrollmentResult    = { Succeeded, Unauthorized, Disabled, InternalError }
AccessMode          = { Off, Audit, Enforce }
AccessDecision      = { Allow, Deny, NoRule }
```

### 2.2 Structures

```
EnrollmentKey {
    keyId     : UUID
    secret    : [32]byte     // HMAC-SHA256 key material
    isActive  : bool         // false = provisional, true = active
    createdAt : Timestamp
}

DeviceRequest {
    method    : string         // GET, POST
    path      : string         // e.g., /enroll/key
    headers   : Map<string, string>
    query     : Map<string, string>
    body      : byte[]
    timestamp : Timestamp      // Unix seconds; bound into the signed
                               // canonical payload — see §4.4. The
                               // activate verifier checks freshness
                               // against this field, never a separate
                               // caller-supplied value. (P29)
}

EnrollmentStatus {
    fleetMode   : FleetMode
    hasKey      : bool
    keyId       : Option<UUID>   // Only revealed when key is Active
    isActive    : bool
}
```

---

## 3. REST API

### 3.1 Provision Key

```
POST /enroll/key
Headers:
    X-Fleet-Metadata: true
    X-Fleet-Auth-Scheme: hmac-sha256
Body: (empty)

Response 200: { "keyId": "<uuid>", "secret": "<base64>" }
Response 400: Bad request (missing scheme header)
Response 401: Unauthorized (key already active)
Response 403: Fleet disabled
Response 500: Key vault error
```

### 3.2 Activate Key (Enrollment Attestation)

```
POST /enroll/key/{keyId}/activate
Headers:
    X-Fleet-Metadata: true
    X-Fleet-Date: <ISO-8601 timestamp>
    X-Fleet-Authorization: hmac-sha256 <keyId> <signature>
    X-Fleet-Claims: <JSON claims>
Body: (empty)

Response 200: { "status": "active" }
Response 401: Unauthorized (bad signature, expired, or already active)
Response 403: Fleet disabled
Response 500: Internal error (vault I/O, activation failure)
```

### 3.3 Query Status

```
GET /enroll/status
Headers:
    X-Fleet-Metadata: true

Response 200: {
    "fleetMode": "Enabled",
    "hasKey": true,
    "keyId": "<uuid or null>",
    "isActive": true
}
```

---

## 4. Decision Logic

These are the pure functions that the formal verification targets. Each takes pre-resolved inputs (booleans and enum values) and returns a result. All I/O, parsing, and network operations happen before these functions are called.

### 4.1 `provisionKey`

```
provisionKey(fleetEnabled, validRequest, vaultResult, keyIsActive) -> ProvisionResult

    if NOT fleetEnabled        -> Disabled
    if NOT validRequest        -> BadRequest
    if vaultResult != Ok       -> InternalError
    if keyIsActive             -> Unauthorized
    else                       -> Succeeded
```

**Inputs:**
- `fleetEnabled`: Is the fleet controller accepting enrollments?
- `validRequest`: Does the request have `X-Fleet-Metadata: true` and `X-Fleet-Auth-Scheme: hmac-sha256`?
- `vaultResult`: Can the key vault be reached?
- `keyIsActive`: Is there already an active key for this device?

### 4.2 `enrollDevice` (activate)

```
enrollDevice(fleetEnabled, validMetadata, authResult, activationResult) -> EnrollmentResult

    if NOT fleetEnabled               -> Disabled
    if NOT validMetadata              -> Unauthorized
    if authResult == Authenticated:
        if activationResult == Success       -> Succeeded
        if activationResult == AlreadyActive -> Unauthorized
        else                                 -> InternalError
    if authResult == VaultUnavailable -> InternalError
    else                              -> Unauthorized
```

**Inputs:**
- `fleetEnabled`: Fleet controller on?
- `validMetadata`: `X-Fleet-Metadata: true` present?
- `authResult`: Signature + date + claims all valid?
- `activationResult`: Did the key transition from provisional to active?

### 4.3 `authenticate`

```
authenticate(dateValid, signatureValid, claimsValid) -> bool

    return dateValid AND signatureValid AND claimsValid
```

Sub-functions:

#### 4.3.1 `isValidRequestDate`

```
isValidRequestDate(requestTimestamp, currentTime, windowSeconds) -> bool

    return (currentTime - requestTimestamp) <= windowSeconds
           AND requestTimestamp <= currentTime
```

Default `windowSeconds` = 900 (15 minutes).

#### 4.3.2 `isValidSignature`

```
isValidSignature(key, request, providedSignature) -> bool

    expectedPayload = canonicalizePayload(request)
    expectedSignature = HMAC-SHA256(key, expectedPayload)
    return constantTimeEquals(expectedSignature, providedSignature)
```

#### 4.3.3 `isValidClaims`

```
isValidClaims(claimsJson, requiredClaims) -> bool

    parsed = parseJson(claimsJson)
    return all(claim in requiredClaims: claim in parsed)
```

### 4.4 `canonicalizePayload`

Construct the HMAC input as a length-prefixed concatenation of five
variable-length fields followed by an 8-byte fixed-width timestamp suffix.
Each variable-length field is preceded by its byte length encoded as a
64-bit **big-endian** unsigned integer. A parser reads the 8-byte length
tag, then exactly that many bytes, then the next tag — no byte inside any
field can be misread as a record boundary. The timestamp has known
width so it needs no tag. This makes the canonicalization byte-injective
in the request, eliminating signature-confusion collisions of the
"newline smuggled into the body" shape, and binds the freshness
timestamp into the signed bytes so a replayed signed request cannot be
paired with a fresh "current time" to forge freshness:

```
canonicalizePayload(request) -> bytes

    let lp(field) = u64_be(len(field)) || field
    return lp(request.method)
        || lp(request.body)
        || lp(canonicalizeHeaders(request.headers))
        || lp(request.path)
        || lp(canonicalizeQuery(request.query))
        || u64_be(request.timestamp)
```

The output is a byte string (not text) — the binary length tags are not
guaranteed to be valid UTF-8.

> **Security note.** Earlier revisions of this protocol joined the five
> fields with a single `\n` separator AND accepted the verifier's
> freshness timestamp as a caller-supplied parameter outside the signed
> payload. The first gap was not injective (a newline embedded in
> `request.body` shifted the parse boundary into `canonicalHeaders`,
> producing identical canonical bytes for distinct requests — the
> failure shape behind AWS SigV4 ambiguity and HTTP request smuggling
> CVEs). The second gap let an attacker replay a stale signed request
> with a fresh "current time" and pass `isValidRequestDate` despite the
> signature being over old bytes. Cryptol properties
> `P23_DistinctRequestsHaveDistinctCanonicalBytes` and
> `P29_VerifierUsesRequestBoundTimestamp` in
> `cryptol/SDEP.cry` exhibit mechanised proofs that both gaps are
> closed by the length-prefixed encoding and the timestamp suffix.

#### Header Canonicalization

```
canonicalizeHeaders(headers) -> bytes

    filtered = remove headers where lowercase(name) == "x-fleet-authorization"
    normalized = for each (name, value) in filtered:
                     (lowercase(name), trim(value))
    sorted = sort normalized by name (lexicographic)
    let lp(field) = u64_be(len(field)) || field
    return concat([lp(name) || lp(value) for (name, value) in sorted])
```

#### Query Canonicalization

```
canonicalizeQuery(query) -> bytes

    normalized = for each (key, value) in query:
                     (lowercase(key), value)
    sorted = sort normalized by key (lexicographic)
    let lp(field) = u64_be(len(field)) || field
    return concat([lp(key) || lp(value) for (key, value) in sorted])
```

Both sub-canonicalizers length-prefix every individual name and value with
the same 8-byte big-endian tag used by `canonicalizePayload`. This makes
each sub-canonicalizer byte-injective in its input map (no byte inside a
name or value can be misread as a record boundary), closing the
header / query smuggling collision shape mechanised as Cryptol properties
`P24_DistinctHeadersHaveDistinctCanonicalBytes` and
`P25_DistinctQueriesHaveDistinctCanonicalBytes` in
`cryptol/SDEP.cry`.

### 4.5 `enforceAccess`

```
enforceAccess(mode, decision) -> (allowed: bool, logged: bool)

    if mode == Off:
        return (true, false)            // Always allow, never log
    if mode == Audit:
        if decision == Deny:
            return (true, true)         // Allow but log violation
        else:
            return (true, false)        // Allow silently
    if mode == Enforce:
        if decision == Allow:
            return (true, false)        // Allow
        if decision == Deny:
            return (false, true)        // Block and log
        if decision == NoRule:
            return (true, false)        // Default allow
```

### 4.6 `getStatus`

```
getStatus(fleetEnabled, hasKey, keyIsActive, keyId) -> EnrollmentStatus

    return EnrollmentStatus {
        fleetMode: if fleetEnabled then Enabled else Disabled,
        hasKey:    hasKey,
        keyId:     if keyIsActive then Some(keyId) else None,
        isActive:  keyIsActive
    }
```

---

## 5. Security Properties (P1–P22)

These are the 22 properties that must be formally verified. They are organized into five categories.

### Category A: Key Lifecycle Safety (P1–P5)

| ID | Name | Statement |
|----|------|-----------|
| **P1** | Key Monotonicity | Once a key is active, `activationResult` is always `AlreadyActive` on subsequent attempts. The active state is irreversible. |
| **P2** | Active Prevents Provisioning | If `keyIsActive == true`, then `provisionKey(_, _, _, true) == Unauthorized`. A new key cannot be provisioned while one is active. |
| **P3** | Key ID Hidden Until Active | If `keyIsActive == false`, then `getStatus(...).keyId == None`. The key ID is not revealed in status until activation. |
| **P4** | Key ID Revealed When Active | If `keyIsActive == true`, then `getStatus(...).keyId == Some(keyId)`. The key ID is visible after activation. |
| **P5** | Disabled Rejects All | If `fleetEnabled == false`, then `provisionKey == Disabled` and `enrollDevice == Disabled`. No operations succeed when the fleet is off. |

### Category B: Authentication Security (P6–P10)

| ID | Name | Statement |
|----|------|-----------|
| **P6** | Auth Requires Valid Date | `authenticate(false, _, _) == false`. An expired or missing timestamp fails authentication. |
| **P7** | Auth Requires Valid Signature | `authenticate(_, false, _) == false`. An invalid HMAC signature fails authentication. |
| **P8** | Correct Signature Verifies | For any key `k` and data `d`: `isValidSignature(k, d, HMAC-SHA256(k, canonicalize(d))) == true`. Correctly signed requests always pass. |
| **P9** | Wrong Signature Fails | For any key `k` and data `d`, if `sig != HMAC-SHA256(k, canonicalize(d))`, then `isValidSignature(k, d, sig) == false`. |
| **P10** | Missing Metadata Fails | `enrollDevice(true, false, _, _) == Unauthorized`. When the fleet is enabled, requests without `X-Fleet-Metadata: true` always fail with `Unauthorized`. (When the fleet is disabled, P5 takes priority and the result is `Disabled`.) |

### Category C: Access Control (P11–P14)

| ID | Name | Statement |
|----|------|-----------|
| **P11** | Off Mode Allows All | `enforceAccess(Off, _) == (true, false)`. When access control is off, everything is allowed and nothing is logged. |
| **P12** | Audit Mode Never Denies | For all decisions `d`: `enforceAccess(Audit, d).allowed == true`. Audit mode only logs, never blocks. |
| **P13** | Enforce Blocks Denied | `enforceAccess(Enforce, Deny) == (false, true)`. Enforce mode blocks denied requests and logs them. |
| **P14** | Enforce Allows Permitted | `enforceAccess(Enforce, Allow) == (true, false)`. Enforce mode allows permitted requests silently. |

### Category D: Protocol Liveness (P15–P18)

| ID | Name | Statement |
|----|------|-----------|
| **P15** | Can Provision When Ready | `provisionKey(true, true, Ok, false) == Succeeded`. When everything is valid and no key is active, provisioning succeeds. |
| **P16** | Authenticated Activation Succeeds | `enrollDevice(true, true, Authenticated, Success) == Succeeded`. A fully authenticated activation request succeeds. |
| **P17** | Timestamp At Boundary Valid | If `currentTime - requestTimestamp == windowSeconds`, then `isValidRequestDate == true`. Boundary condition is inclusive. |
| **P18** | Timestamp Beyond Boundary Invalid | If `currentTime - requestTimestamp > windowSeconds`, then `isValidRequestDate == false`. |

### Category E: Error Handling (P19–P22)

| ID | Name | Statement |
|----|------|-----------|
| **P19** | Vault Unavailable Is Internal Error | `enrollDevice(true, true, VaultUnavailable, _) == InternalError`. Backend failures produce a distinct retryable error, not an auth failure. |
| **P20** | BadRequest Distinct From Unauthorized | `provisionKey(true, false, _, _) == BadRequest`. Schema errors (missing headers) produce 400, not 401. |
| **P21** | Activate Without Metadata Is Unauthorized | `enrollDevice(true, false, _, _) == Unauthorized`. Missing metadata header returns Unauthorized, not BadRequest. |
| **P22** | Activation IO Failure Is Internal Error | If `activationResult` indicates an I/O failure (not `Success` or `AlreadyActive`), `enrollDevice(true, true, Authenticated, _) == InternalError`. |


---

## 6. Threat Model and Known Gaps

### 6.0 Threat model

SDEP is an **IMDS-style protocol**: the fleet controller binds to
`http://169.254.169.254` (link-local, non-routable) and the protocol's
core trust boundary is that *the device-resident agent calls the
controller before any attacker can*. Concretely we assume:

> **A1 — Boot-time race.** The legitimate device wins the race to
> `POST /enroll/key` on every boot. An attacker cannot beat the device
> to a fresh provisional key.
>
> **A2 — Pre-activate window.** Between the device receiving its
> `{keyId, secret}` and the device's activate landing, no attacker can
> overwrite the provisional key. (This is enforced in code by
> `KeyStore::provision` refusing a re-provision while a provisional
> key exists; see [G30](#g30-status) below.)
>
> **A3 — On-device secret integrity.** `secret` does not leak from the
> device-resident agent's memory after step A1.

Under A1+A2+A3, the attacker's capabilities reduce to:

1. **Network observation** of link-local traffic (passive).
2. **Unauthenticated probing** of `POST /enroll/key`,
   `POST /enroll/key/{keyId}/activate`, and `GET /enroll/status`.
3. **Side-channel timing** of HMAC verification (only ever invoked on
   the one-shot activate call).

The attacker does **not** have a pre-shared symmetric key with the
controller (SDEP is bootstrap-by-network, not bootstrap-by-secret).
The 29 properties in §5 are theorems under these assumptions.

### 6.1 Gap classification under the threat model

Each row below is a property an attacker might wish were broken. The
column **Cryptol** points at `cryptol/SDEP_gaps.cry` where the property
is mechanised as a `property` declaration whose Z3 counterexample
exhibits the attack; `pwsh ./cryptol/prove_gaps.ps1` keeps these honest
(it exits 0 iff every gap row still has a counterexample). The column
**Status** reclassifies each gap under §6.0.

| ID | Gap | Status | Cryptol |
|----|-----|--------|---------|
| <a id="g30-status"></a>**G30** | Provision has no caller authentication. Without A1+A2, an attacker on link-local could race the device or overwrite the provisional key during the pre-activate window, then activate with attacker-controlled `secret`. | **Closed by A1+A2 + KeyStore TOFU lock.** A1 prevents the boot-time win; the inline TOFU check in `KeyStore::provision` (refuse overwrite while a provisional key exists) prevents the pre-activate overwrite. The mechanised counterexample exhibits what happens if either assumption fails. | `G30_ProvisionRequiresAuth` |
| **G31** | Provision response code is an active-key oracle (200 vs 401 differ on `keyIsActive`). | **Downgraded to fingerprinting.** An attacker learns "this device is enrolled" but the protocol has no operation they can act on without `secret` (A3), and `keyId` is already public per G32. No takeover path. | `G31_ProvisionResponseLeaksActiveState` |
| **G32** | `getStatus` reveals `keyId`, `hasKey`, `isActive` to anyone. | **Public-by-design.** `keyId` is a public identifier; the only secret material (`secret`) is protected by A3. The disclosure is informational only. | `G32_StatusLeaksToUnauthenticated` |
| **G33** | Activate `Authenticated+IoFailure → 500` vs `Unauthenticated → 401` is a keyId oracle for an attacker holding a captured signed payload. | **Effectively moot.** Activate is one-shot (P1); the device emits exactly one signed payload per lifetime, and `keyId` is already public via G32. The oracle exposes no new bit. | `G33_ActivationOracleViaResponseCode` |
| **G34** | `isValidClaims` checks claim **names**, not **values**. | **Moot for current operations.** Claims are only checked on the one-shot activate, which requires `secret` (A3). Becomes a real issue *only if* the protocol grows a second HMAC-authenticated operation (e.g. `/refresh`, `/rotate`) — at which point this row must be reactivated. | `G34_ClaimsValueGap` |
| **G35** | HMAC algebra admits a zero / low-entropy `secret`. | **LIVE.** Independent of network races. A vault bug that emits `secret = 0` defeats HMAC regardless of A1–A3. Must be fixed at the vault boundary (reject all-zero / constant-fill secrets at generation time). | `G35_HmacZeroKeyAccepted` |
| **G36** | No nonce / no replay-window state. | **Moot for current operations.** Only signed operation is one-shot; P1's `AlreadyActive` eats replays. Becomes real with any second authenticated operation. | (not Cryptol-expressible) |
| **G37** | Provision and activate endpoints don't enforce HTTP method. | **LIVE (defense-in-depth).** Doesn't change the link-local threat model, but a non-CORS-safe method (`POST`/`PUT`) plus a non-default header is the IMDSv2-style SSRF mitigation. Cheap to add. | (not yet mechanised — would extend `provisionKey` with a `method` input) |
| **G38** | `constant_time_equals` is written constant-time but not proven control-flow constant. | **Mostly moot.** One HMAC verification per device lifetime — far below the sample count needed for a timing attack. Belongs on the long-term backlog as SAW path-condition work. | (not Cryptol-expressible; SAW-level) |

### 6.2 What this means in practice

Of the nine gap rows, **two are actually live** under the §6.0 threat
model:

| Priority | Item | Effort |
|----------|------|--------|
| **P0** | **G35 — vault must reject degenerate `secret` values** before storing them. Add an entropy / non-constant check at the `KeyVault` boundary; on failure, regenerate. New Cryptol property: `provisionKey(_, _, _, weakKey=true, _) == InternalError` (or a new `WeakKey` variant). | ~10 LOC vault-side, one new property. |
| **P1** | **G37 — require `POST` + a custom header** (e.g. `X-Fleet-Token-Request: true`) on provision; same for `PUT`-ish semantics on activate. Folds the method check into `provisionKey`'s `validRequest` flag. | ~5 LOC controller, one new property over an extended `provisionKey` signature. |

The remaining seven gap rows are **kept mechanised on purpose**: they
are the regression-proof that the assumptions in §6.0 are doing real
work. If anyone proposes (a) removing the `KeyStore` TOFU check,
(b) adding a non-one-shot HMAC-authenticated operation, or (c) moving
the controller off link-local, the corresponding rows above transition
from "closed/downgraded/moot" to **LIVE** and `prove_gaps.ps1` becomes
the test that catches the regression in CI.

### 6.3 Gaps that would re-activate

Concretely, the following changes would each move at least one row
back to LIVE:

- **Adding `POST /enroll/refresh` (or any second HMAC-authenticated operation)** → reactivates **G33, G34, G36, G38**.
- **Removing one-shot activate (i.e., allowing re-activation)** → reactivates **G33, G36**.
- **Moving the controller to a routable address** → reactivates **G30, G32** (and likely requires a full threat-model rewrite).
- **Removing the `KeyStore` TOFU check on provisional re-provision** → reactivates **G30, G31**.

The mechanised properties in `cryptol/SDEP_gaps.cry` make each of these
regressions visible: any of the four changes above flips an
`EXPECTED-FAIL` row to `UNEXPECTED-PASS` in the wrong direction
(`G35`/`G37` flipping to `UNEXPECTED-PASS` is good — gap closed; the
others flipping the *other* way means the threat model weakened
silently).

