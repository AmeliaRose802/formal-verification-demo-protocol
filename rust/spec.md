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
    method  : string         // GET, POST
    path    : string         // e.g., /enroll/key
    headers : Map<string, string>
    query   : Map<string, string>
    body    : byte[]
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

Construct the HMAC input as a length-prefixed concatenation of five fields.
Each variable-length field is preceded by its byte length encoded as a 64-bit
**big-endian** unsigned integer. A parser reads the 8-byte length tag, then
exactly that many bytes, then the next tag — no byte inside any field can
be misread as a record boundary. This makes the canonicalization byte-
injective in the request, eliminating signature-confusion collisions of the
"newline smuggled into the body" shape:

```
canonicalizePayload(request) -> bytes

    let lp(field) = u64_be(len(field)) || field
    return lp(request.method)
        || lp(request.body)
        || lp(canonicalizeHeaders(request.headers))
        || lp(request.path)
        || lp(canonicalizeQuery(request.query))
```

The output is a byte string (not text) — the binary length tags are not
guaranteed to be valid UTF-8.

> **Security note.** Earlier revisions of this protocol joined the five
> fields with a single `\n` separator. That encoding was not injective: a
> newline embedded in `request.body` shifted the parse boundary into
> `canonicalHeaders`, producing identical canonical bytes for distinct
> requests (the failure shape behind AWS SigV4 ambiguity and HTTP request
> smuggling CVEs). Cryptol property `P23_CanonicalizationInjective` in
> `cryptol/SDEP.cry` exhibits a mechanised proof of injectivity for the
> length-prefixed encoding.

#### Header Canonicalization

```
canonicalizeHeaders(headers) -> string

    filtered = remove headers where name == "x-fleet-authorization"
    normalized = for each (name, value) in filtered:
                     (lowercase(name), trim(value))
    sorted = sort normalized by name (lexicographic)
    return join(sorted, separator="\n", format="{name}:{value}")
```

#### Query Canonicalization

```
canonicalizeQuery(query) -> string

    normalized = for each (key, value) in query:
                     (lowercase(key), value)
    sorted = sort normalized by key (lexicographic)
    return join(sorted, separator="&", format="{key}={value}")
```

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