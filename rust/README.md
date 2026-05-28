# SDEP - Secure Device Enrollment Protocol

A Rust implementation of the Secure Device Enrollment Protocol (SDEP), designed for formal verification with SAW/Cryptol.

## Overview

SDEP provides a secure protocol for enrolling IoT devices into a fleet management system. The implementation focuses on pure decision logic functions that can be formally verified, separating business logic from I/O operations.

## Key Features

- **Pure Decision Logic**: All core functions are pure and deterministic, suitable for formal verification
- **Constant-Time Cryptography**: Uses constant-time comparison for signature verification to prevent timing attacks
- **Type Safety**: Strong typing with Rust's type system to prevent common errors
- **Well-Tested**: Comprehensive test suite covering all decision paths
- **Zero Unsafe Code**: No `unsafe` blocks - all operations are memory safe

## Protocol Phases

1. **PROVISION**: Device requests a new enrollment key
   - Server generates a provisional key
   - Key cannot be used until activated

2. **ACTIVATE**: Device proves key ownership via HMAC-SHA256 signature
   - Device signs a canonical request payload
   - Server verifies signature and activates key
   - Once active, keys cannot be re-provisioned

3. **STATUS**: Query current enrollment state
   - Returns fleet mode and key status
   - Key ID only revealed for active keys (prevents enumeration)

## Key Lifecycle

```
[No Key] --provision--> [Provisional] --activate--> [Active]
                                                       |
                                                  (permanent)
```

The irreversibility of activation is the central safety invariant.

## Core Decision Functions

All functions take pre-validated inputs and return deterministic results:

- `provision_key()` - Determines if provisioning should succeed
- `enroll_device()` - Determines if activation should succeed
- `authenticate()` - Verifies date, signature, and claims validity
- `is_valid_request_date()` - Checks timestamp within time window
- `is_valid_signature()` - Verifies HMAC-SHA256 signature (constant-time)
- `is_valid_claims()` - Validates required claims present
- `canonicalize_payload()` - Creates canonical HMAC input
- `enforce_access()` - Access control enforcement logic
- `get_status()` - Returns enrollment status

## Usage Example

```rust
use sdep::*;
use chrono::Utc;
use std::collections::HashMap;

// Provision a new key
let result = provision_key(
    true,                      // fleet_enabled
    true,                      // valid_request
    KeyVaultResult::Ok,        // vault_result
    false,                     // key_is_active
);
assert_eq!(result, ProvisionResult::Succeeded);

// Validate a request timestamp
let current = Utc::now();
let request_time = current - chrono::Duration::seconds(300); // 5 min ago
let is_valid = is_valid_request_date(request_time, current, 900);
assert!(is_valid);

// Verify HMAC signature
let key = [0u8; 32];
let mut headers = HashMap::new();
headers.insert("x-fleet-metadata".to_string(), "true".to_string());

let request = DeviceRequest {
    method: "POST".to_string(),
    path: "/enroll/key".to_string(),
    headers,
    query: HashMap::new(),
    body: vec![],
};

// Generate signature
let payload = canonicalize_payload(&request);
// ... compute HMAC-SHA256 ...

// Verify (constant-time comparison)
let is_valid = is_valid_signature(&key, &request, &signature);
```

## Security Properties

This implementation is designed to prove 22 security properties including:

1. **Activation Irreversibility**: Once active, keys cannot be re-provisioned
2. **Signature Validity**: Only valid HMAC-SHA256 signatures authenticate
3. **Timestamp Freshness**: Expired requests are rejected
4. **Claims Completeness**: All required claims must be present
5. **Access Enforcement Correctness**: Audit/Enforce modes behave correctly
6. **Key ID Privacy**: Provisional keys don't leak key IDs
7. **Timing Attack Resistance**: Constant-time signature comparison
8. **Fleet Disable Enforcement**: Disabled fleet rejects enrollments
9. **Vault Failure Handling**: Vault errors propagate correctly
10. **Canonical Payload Uniqueness**: Canonicalization is deterministic

## Building and Testing

```bash
# Build the library
cargo build

# Run all tests
cargo test

# Run tests with output
cargo test -- --nocapture

# Build documentation
cargo doc --open
```

## Dependencies

- `chrono` - Timestamp handling
- `hmac` + `sha2` - HMAC-SHA256 computation
- `uuid` - UUID generation and handling
- `serde` + `serde_json` - JSON serialization
- `subtle` - Constant-time comparison primitives

## Formal Verification

This implementation is designed for formal verification with SAW (Software Analysis Workbench):

- Pure functions with no side effects
- Deterministic behavior (no randomness in decision logic)
- Explicit enum types for all results
- Clear separation between I/O and decision logic

The Cryptol specifications will model:
- Decision function correctness
- Cryptographic primitive usage
- State transition invariants
- Security property preservation

## License

This is a demonstration/case study implementation.
