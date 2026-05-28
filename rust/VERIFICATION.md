# SDEP Formal Verification Guide

This document explains the design decisions that make SDEP suitable for formal verification with SAW (Software Analysis Workbench) and Cryptol.

## Design Principles

### 1. Pure Decision Logic

All core decision functions are **pure** - they:
- Take all inputs as parameters (no hidden state)
- Return deterministic results
- Have no side effects
- Contain no I/O operations
- Use no randomness

This makes them amenable to exhaustive verification and symbolic execution.

**Example:**
```rust
pub fn provision_key(
    fleet_enabled: bool,
    valid_request: bool,
    vault_result: KeyVaultResult,
    key_is_active: bool,
) -> ProvisionResult {
    // Pure decision tree - no hidden state, no I/O
    if !fleet_enabled { return ProvisionResult::Disabled; }
    if !valid_request { return ProvisionResult::BadRequest; }
    if vault_result != KeyVaultResult::Ok { return ProvisionResult::InternalError; }
    if key_is_active { return ProvisionResult::Unauthorized; }
    ProvisionResult::Succeeded
}
```

### 2. Explicit Enumerations

All results and states are represented as explicit enum types rather than error codes or strings. This:
- Makes the state space finite and enumerable
- Enables exhaustive case analysis
- Prevents impossible states
- Provides clear verification targets

**Example:**
```rust
pub enum ProvisionResult {
    Succeeded,      // Success case
    Unauthorized,   // Key already active
    BadRequest,     // Invalid request
    Disabled,       // Fleet disabled
    InternalError,  // Vault unavailable
}
```

### 3. Separation of Concerns

The implementation clearly separates:

- **Decision Logic** (verified): Pure functions that make security decisions
- **I/O Operations** (unverified): Network, database, file system operations
- **Parsing** (unverified): HTTP parsing, JSON parsing
- **Cryptographic Primitives** (assumed correct): HMAC-SHA256 from `hmac`/`sha2` crates

This allows verification to focus on the critical decision logic.

### 4. Constant-Time Cryptography

Signature verification uses constant-time comparison via the `subtle` crate:

```rust
pub fn is_valid_signature(
    key: &[u8; 32],
    request: &DeviceRequest,
    provided_signature: &[u8],
) -> bool {
    let expected_signature = /* compute HMAC */;
    
    // Constant-time comparison prevents timing attacks
    expected_signature.ct_eq(provided_signature).into()
}
```

This prevents timing side-channels even when the code is executed symbolically.

### 5. Deterministic Canonicalization

The canonicalization functions are fully deterministic:

```rust
pub fn canonicalize_headers(headers: &HashMap<String, String>) -> String {
    let mut normalized: Vec<_> = headers
        .iter()
        .filter(|(name, _)| name.to_lowercase() != "x-fleet-authorization")
        .map(|(name, value)| (name.to_lowercase(), value.trim().to_string()))
        .collect();
    
    normalized.sort_by(|a, b| a.0.cmp(&b.0));  // Deterministic sorting
    
    normalized
        .iter()
        .map(|(name, value)| format!("{}:{}", name, value))
        .collect::<Vec<_>>()
        .join("\n")
}
```

This ensures the same input always produces the same canonical form.

## Verification Approach

### Phase 1: Unit Properties

Verify each decision function independently:

1. **`provision_key`**: 
   - If disabled, always returns Disabled
   - If invalid request, always returns BadRequest
   - If vault error, always returns InternalError
   - If active key, always returns Unauthorized
   - Otherwise returns Succeeded

2. **`enroll_device`**:
   - If disabled, always returns Disabled
   - If unauthenticated, always returns Unauthorized
   - If already active, returns Unauthorized
   - Success path requires all checks to pass

3. **`authenticate`**:
   - Returns true IFF all three conditions are true
   - Returns false if any condition is false

4. **`is_valid_request_date`**:
   - Rejects future timestamps
   - Rejects timestamps outside window
   - Accepts timestamps within window

5. **Canonicalization**:
   - Deterministic: same input → same output
   - Authorization header is always filtered
   - Sorting is stable and correct

6. **`enforce_access`**:
   - Off mode: always allows, never logs
   - Audit mode: always allows, logs denies
   - Enforce mode: blocks denies, allows others

### Phase 2: Integration Properties

Verify properties across function compositions:

1. **Activation Irreversibility**:
   ```cryptol
   property activation_irreversible(key_active) =
       key_active ==>
       provision_key(True, True, Ok, key_active) == Unauthorized
   ```

2. **Authentication Completeness**:
   ```cryptol
   property auth_complete(date, sig, claims) =
       authenticate(date, sig, claims) == (date /\ sig /\ claims)
   ```

3. **Status Privacy**:
   ```cryptol
   property key_id_hidden_when_provisional(active, key_id) =
       ~active ==> get_status(...).key_id == None
   ```

4. **Signature Verification Soundness**:
   ```cryptol
   property signature_mismatch_detected(key1, key2, request) =
       key1 != key2 ==>
       ~is_valid_signature(key1, request, hmac(key2, canonicalize(request)))
   ```

### Phase 3: Security Properties

Prove high-level security guarantees:

1. **No Provisioning After Activation**:
   - Once a key is active, `provision_key` can never return Succeeded

2. **No Double Activation**:
   - Attempting to activate an already-active key always fails

3. **Signature Uniqueness**:
   - Only the correct key can produce a valid signature
   - Uses HMAC-SHA256 correctness assumptions

4. **Timestamp Freshness**:
   - No replay attacks with expired timestamps
   - No future-dated requests accepted

5. **Claims Completeness**:
   - All required claims must be present
   - No partial authentication allowed

6. **Access Enforcement Correctness**:
   - Enforce mode blocks denied requests
   - Audit mode never blocks
   - Off mode logs nothing

7. **State Machine Correctness**:
   - State transitions follow: NoKey → Provisional → Active
   - No reverse transitions possible
   - No skipped states

## Cryptol Specifications

Example Cryptol specification for `provision_key`:

```cryptol
// Enum representations
type ProvisionResult = [3]  // 5 variants fit in 3 bits
Succeeded      = 0 : ProvisionResult
Unauthorized   = 1 : ProvisionResult
BadRequest     = 2 : ProvisionResult
Disabled       = 3 : ProvisionResult
InternalError  = 4 : ProvisionResult

type KeyVaultResult = [2]
VaultOk       = 0 : KeyVaultResult
VaultNotFound = 1 : KeyVaultResult
VaultIoError  = 2 : KeyVaultResult

// Decision function
provisionKey : Bit -> Bit -> KeyVaultResult -> Bit -> ProvisionResult
provisionKey fleetEnabled validRequest vaultResult keyIsActive =
    if ~fleetEnabled then Disabled
     | ~validRequest then BadRequest
     | vaultResult != VaultOk then InternalError
     | keyIsActive then Unauthorized
     else Succeeded

// Properties
property provision_disabled_always_fails =
    ~fleetEnabled ==> provisionKey fleetEnabled r v k == Disabled
  where
    fleetEnabled = False
    r = arbitrary
    v = arbitrary
    k = arbitrary

property provision_active_always_fails =
    keyActive ==> provisionKey True True VaultOk keyActive == Unauthorized
  where
    keyActive = True

property provision_success_conditions =
    provisionKey True True VaultOk False == Succeeded
```

## SAW Verification Workflow

1. **Compile to LLVM bitcode**:
   ```bash
   cargo rustc --lib -- --emit=llvm-bc
   ```

2. **Load in SAW**:
   ```saw
   m <- llvm_load_module "target/debug/deps/libsdep.bc";
   ```

3. **Write SAW specs**:
   ```saw
   let provision_key_spec = do {
       fleet_enabled <- llvm_fresh_var "fleet_enabled" llvm_bool;
       valid_request <- llvm_fresh_var "valid_request" llvm_bool;
       vault_result <- llvm_fresh_var "vault_result" llvm_int8;
       key_is_active <- llvm_fresh_var "key_is_active" llvm_bool;
       
       llvm_execute_func [fleet_enabled, valid_request, vault_result, key_is_active];
       
       result <- llvm_fresh_var "result" llvm_int8;
       llvm_return result;
       
       // Connect to Cryptol spec
       llvm_postcond {{ result == provisionKey fleet_enabled valid_request vault_result key_is_active }};
   };
   ```

4. **Verify**:
   ```saw
   llvm_verify m "provision_key" [] false provision_key_spec z3;
   ```

## Testing Strategy

The implementation includes 23 unit tests covering:

- All decision function branches
- Boundary conditions (window edges, empty inputs)
- Error cases (wrong keys, missing claims)
- Canonicalization correctness
- Signature verification (positive and negative)
- Access enforcement modes
- Status query privacy

Tests serve as:
- Regression detection
- Documentation of expected behavior
- Sanity checks before formal verification

## Assumptions

The formal verification assumes:

1. **HMAC-SHA256 is secure**: The `hmac` and `sha2` crates correctly implement the standard
2. **Constant-time comparison is correct**: The `subtle` crate provides true constant-time comparison
3. **Rust compiler correctness**: LLVM bitcode faithfully represents the source semantics
4. **No hardware bugs**: Processor correctly executes the bitcode

These are standard assumptions for systems-level formal verification.

## Limitations

What is **NOT** verified:

- Network protocol implementation (HTTP parsing, routing)
- Database/vault I/O operations
- JSON parsing and serialization
- Key generation (randomness)
- System clock accuracy
- Concurrency and race conditions

These are outside the decision logic and handled by the application layer.

## Future Work

1. **Full LLVM verification**: Verify the compiled LLVM bitcode against Cryptol specs
2. **Symbolic execution**: Use SAW's symbolic execution to explore all paths
3. **Property-based testing**: Use QuickCheck/Proptest for randomized testing
4. **Side-channel analysis**: Verify constant-time properties at the assembly level
5. **Formal proof of key lifecycle**: State machine proof that Active is unreachable after Provisional
