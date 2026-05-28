//! # Secure Device Enrollment Protocol (SDEP)
//!
//! A protocol for securely enrolling IoT devices into a fleet management system.
//! This implementation provides pure decision logic functions suitable for formal verification.
//!
//! ## Protocol Overview
//!
//! SDEP has three phases:
//! 1. **PROVISION**: Device requests a new enrollment key
//! 2. **ACTIVATE**: Device proves ownership via HMAC signature
//! 3. **STATUS**: Device or operator queries enrollment state
//!
//! Keys follow an irreversible lifecycle:
//! `[No Key] → [Provisional] → [Active]` (permanent)

use chrono::{DateTime, Utc};
use hmac::{Hmac, Mac};
use serde::{Deserialize, Serialize};
use sha2::Sha256;
use std::collections::HashMap;
use subtle::ConstantTimeEq;
use uuid::Uuid;

type HmacSha256 = Hmac<Sha256>;

// ============================================================================
// Data Types - Enumerations
// ============================================================================

#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum FleetMode {
    Disabled,
    Enabled,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum KeyVaultResult {
    Ok,
    NotFound,
    IoError,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum AuthResult {
    Authenticated,
    Unauthenticated,
    VaultUnavailable,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum ActivationResult {
    Success,
    AlreadyActive,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum ProvisionResult {
    Succeeded,
    Unauthorized,
    BadRequest,
    Disabled,
    InternalError,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub enum EnrollmentResult {
    Succeeded,
    Unauthorized,
    Disabled,
    InternalError,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum AccessMode {
    Off,
    Audit,
    Enforce,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum AccessDecision {
    Allow,
    Deny,
    NoRule,
}

// ============================================================================
// Data Types - Structures
// ============================================================================

/// Enrollment key with HMAC-SHA256 secret material
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct EnrollmentKey {
    pub key_id: Uuid,
    pub secret: [u8; 32],
    pub is_active: bool,
    pub created_at: DateTime<Utc>,
}

/// Device HTTP request representation
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct DeviceRequest {
    pub method: String,
    pub path: String,
    pub headers: HashMap<String, String>,
    pub query: HashMap<String, String>,
    pub body: Vec<u8>,
}

/// Enrollment status response
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct EnrollmentStatus {
    pub fleet_mode: FleetMode,
    pub has_key: bool,
    pub key_id: Option<Uuid>,
    pub is_active: bool,
}

/// Access enforcement result
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct AccessEnforcement {
    pub allowed: bool,
    pub logged: bool,
}

// ============================================================================
// Decision Logic - Core Functions
// ============================================================================

/// Determines if a key provision request should succeed.
///
/// # Decision Logic
/// - If fleet is disabled → Disabled
/// - If request is invalid → BadRequest
/// - If vault is unavailable → InternalError
/// - If key is already active → Unauthorized
/// - Otherwise → Succeeded
///
/// This function is pure and suitable for formal verification.
#[inline(never)]
pub fn provision_key(
    fleet_enabled: bool,
    valid_request: bool,
    vault_result: KeyVaultResult,
    key_is_active: bool,
) -> ProvisionResult {
    if !fleet_enabled {
        return ProvisionResult::Disabled;
    }
    if !valid_request {
        return ProvisionResult::BadRequest;
    }
    if vault_result != KeyVaultResult::Ok {
        return ProvisionResult::InternalError;
    }
    if key_is_active {
        return ProvisionResult::Unauthorized;
    }
    ProvisionResult::Succeeded
}

/// Determines if a device enrollment (activation) should succeed.
///
/// # Decision Logic
/// - If fleet is disabled → Disabled
/// - If metadata is invalid → Unauthorized
/// - If authenticated and activation succeeds → Succeeded
/// - If authenticated but already active → Unauthorized
/// - If vault unavailable → InternalError
/// - Otherwise → Unauthorized
///
/// This function is pure and suitable for formal verification.
#[inline(never)]
pub fn enroll_device(
    fleet_enabled: bool,
    valid_metadata: bool,
    auth_result: AuthResult,
    activation_result: ActivationResult,
) -> EnrollmentResult {
    if !fleet_enabled {
        return EnrollmentResult::Disabled;
    }
    if !valid_metadata {
        return EnrollmentResult::Unauthorized;
    }
    match auth_result {
        AuthResult::Authenticated => match activation_result {
            ActivationResult::Success => EnrollmentResult::Succeeded,
            ActivationResult::AlreadyActive => EnrollmentResult::Unauthorized,
        },
        AuthResult::VaultUnavailable => EnrollmentResult::InternalError,
        AuthResult::Unauthenticated => EnrollmentResult::Unauthorized,
    }
}

/// Determines if a request is authenticated.
///
/// # Requirements
/// All three conditions must be true:
/// - Date is valid (within time window)
/// - Signature is valid (HMAC matches)
/// - Claims are valid (all required claims present)
#[inline(never)]
pub fn authenticate(date_valid: bool, signature_valid: bool, claims_valid: bool) -> bool {
    date_valid && signature_valid && claims_valid
}

/// Validates that a request timestamp is within the acceptable time window.
///
/// # Requirements
/// - Request timestamp must not be in the future
/// - Request timestamp must be within `window_seconds` of current time
///
/// Default window: 900 seconds (15 minutes)
#[inline(never)]
pub fn is_valid_request_date(
    request_timestamp: DateTime<Utc>,
    current_time: DateTime<Utc>,
    window_seconds: i64,
) -> bool {
    if request_timestamp > current_time {
        return false;
    }
    let elapsed = current_time
        .signed_duration_since(request_timestamp)
        .num_seconds();
    elapsed <= window_seconds
}

/// Validates HMAC-SHA256 signature using constant-time comparison.
///
/// # Security
/// Uses constant-time comparison to prevent timing attacks.
pub fn is_valid_signature(
    key: &[u8; 32],
    request: &DeviceRequest,
    provided_signature: &[u8],
) -> bool {
    let payload = canonicalize_payload(request);
    let mut mac = HmacSha256::new_from_slice(key).expect("HMAC can take key of any size");
    mac.update(payload.as_bytes());
    let expected_signature = mac.finalize().into_bytes();
    
    // Constant-time comparison to prevent timing attacks
    if provided_signature.len() != expected_signature.len() {
        return false;
    }
    expected_signature.ct_eq(provided_signature).into()
}

/// Validates that all required claims are present in the claims JSON.
pub fn is_valid_claims(claims_json: &str, required_claims: &[&str]) -> bool {
    let parsed: Result<HashMap<String, serde_json::Value>, _> = serde_json::from_str(claims_json);
    match parsed {
        Ok(claims) => required_claims.iter().all(|&claim| claims.contains_key(claim)),
        Err(_) => false,
    }
}

/// Constructs the canonical payload for HMAC signature verification.
///
/// # Format
/// ```text
/// METHOD\n
/// BODY\n
/// CANONICAL_HEADERS\n
/// PATH\n
/// CANONICAL_QUERY
/// ```
pub fn canonicalize_payload(request: &DeviceRequest) -> String {
    let mut result = String::new();
    result.push_str(&request.method);
    result.push('\n');
    
    // Body as string (empty if no body)
    if !request.body.is_empty() {
        result.push_str(&String::from_utf8_lossy(&request.body));
    }
    result.push('\n');
    
    result.push_str(&canonicalize_headers(&request.headers));
    result.push('\n');
    
    result.push_str(&request.path);
    result.push('\n');
    
    result.push_str(&canonicalize_query(&request.query));
    
    result
}

/// Canonicalizes HTTP headers for signature verification.
///
/// # Process
/// 1. Remove `x-fleet-authorization` header
/// 2. Normalize: lowercase names, trim values
/// 3. Sort by name (lexicographic)
/// 4. Format as `name:value\n`
pub fn canonicalize_headers(headers: &HashMap<String, String>) -> String {
    let mut normalized: Vec<(String, String)> = headers
        .iter()
        .filter(|(name, _)| name.to_lowercase() != "x-fleet-authorization")
        .map(|(name, value)| (name.to_lowercase(), value.trim().to_string()))
        .collect();
    
    normalized.sort_by(|a, b| a.0.cmp(&b.0));
    
    normalized
        .iter()
        .map(|(name, value)| format!("{}:{}", name, value))
        .collect::<Vec<_>>()
        .join("\n")
}

/// Canonicalizes query parameters for signature verification.
///
/// # Process
/// 1. Normalize: lowercase keys, preserve values
/// 2. Sort by key (lexicographic)
/// 3. Format as `key=value&key=value`
pub fn canonicalize_query(query: &HashMap<String, String>) -> String {
    let mut normalized: Vec<(String, String)> = query
        .iter()
        .map(|(key, value)| (key.to_lowercase(), value.clone()))
        .collect();
    
    normalized.sort_by(|a, b| a.0.cmp(&b.0));
    
    normalized
        .iter()
        .map(|(key, value)| format!("{}={}", key, value))
        .collect::<Vec<_>>()
        .join("&")
}

/// Enforces access control based on mode and decision.
///
/// # Modes
/// - **Off**: Always allow, never log
/// - **Audit**: Always allow, log denials
/// - **Enforce**: Block denials, allow others
#[inline(never)]
pub fn enforce_access(mode: AccessMode, decision: AccessDecision) -> AccessEnforcement {
    match mode {
        AccessMode::Off => AccessEnforcement {
            allowed: true,
            logged: false,
        },
        AccessMode::Audit => match decision {
            AccessDecision::Deny => AccessEnforcement {
                allowed: true,
                logged: true,
            },
            _ => AccessEnforcement {
                allowed: true,
                logged: false,
            },
        },
        AccessMode::Enforce => match decision {
            AccessDecision::Allow => AccessEnforcement {
                allowed: true,
                logged: false,
            },
            AccessDecision::Deny => AccessEnforcement {
                allowed: false,
                logged: true,
            },
            AccessDecision::NoRule => AccessEnforcement {
                allowed: true,
                logged: false,
            },
        },
    }
}

/// Returns the enrollment status for status queries.
///
/// # Privacy
/// Key ID is only revealed when the key is active (prevents enumeration).
#[inline(never)]
pub fn get_status(
    fleet_enabled: bool,
    has_key: bool,
    key_is_active: bool,
    key_id: Uuid,
) -> EnrollmentStatus {
    EnrollmentStatus {
        fleet_mode: if fleet_enabled {
            FleetMode::Enabled
        } else {
            FleetMode::Disabled
        },
        has_key,
        key_id: if key_is_active { Some(key_id) } else { None },
        is_active: key_is_active,
    }
}

// ============================================================================
// Tests
// ============================================================================

#[cfg(test)]
mod tests {
    use super::*;
    use chrono::Duration;

    #[test]
    fn test_provision_key_success() {
        let result = provision_key(true, true, KeyVaultResult::Ok, false);
        assert_eq!(result, ProvisionResult::Succeeded);
    }

    #[test]
    fn test_provision_key_disabled() {
        let result = provision_key(false, true, KeyVaultResult::Ok, false);
        assert_eq!(result, ProvisionResult::Disabled);
    }

    #[test]
    fn test_provision_key_invalid_request() {
        let result = provision_key(true, false, KeyVaultResult::Ok, false);
        assert_eq!(result, ProvisionResult::BadRequest);
    }

    #[test]
    fn test_provision_key_already_active() {
        let result = provision_key(true, true, KeyVaultResult::Ok, true);
        assert_eq!(result, ProvisionResult::Unauthorized);
    }

    #[test]
    fn test_enroll_device_success() {
        let result = enroll_device(
            true,
            true,
            AuthResult::Authenticated,
            ActivationResult::Success,
        );
        assert_eq!(result, EnrollmentResult::Succeeded);
    }

    #[test]
    fn test_enroll_device_already_active() {
        let result = enroll_device(
            true,
            true,
            AuthResult::Authenticated,
            ActivationResult::AlreadyActive,
        );
        assert_eq!(result, EnrollmentResult::Unauthorized);
    }

    #[test]
    fn test_authenticate_all_valid() {
        assert!(authenticate(true, true, true));
    }

    #[test]
    fn test_authenticate_any_invalid() {
        assert!(!authenticate(false, true, true));
        assert!(!authenticate(true, false, true));
        assert!(!authenticate(true, true, false));
    }

    #[test]
    fn test_is_valid_request_date_within_window() {
        let current = Utc::now();
        let request = current - Duration::seconds(300); // 5 minutes ago
        assert!(is_valid_request_date(request, current, 900));
    }

    #[test]
    fn test_is_valid_request_date_outside_window() {
        let current = Utc::now();
        let request = current - Duration::seconds(1000); // ~16 minutes ago
        assert!(!is_valid_request_date(request, current, 900));
    }

    #[test]
    fn test_is_valid_request_date_future() {
        let current = Utc::now();
        let request = current + Duration::seconds(100); // Future
        assert!(!is_valid_request_date(request, current, 900));
    }

    #[test]
    fn test_is_valid_signature() {
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

        let payload = canonicalize_payload(&request);
        let mut mac = HmacSha256::new_from_slice(&key).unwrap();
        mac.update(payload.as_bytes());
        let signature = mac.finalize().into_bytes();

        assert!(is_valid_signature(&key, &request, &signature));
    }

    #[test]
    fn test_is_valid_signature_wrong_key() {
        let key1 = [0u8; 32];
        let key2 = [1u8; 32];
        
        let request = DeviceRequest {
            method: "POST".to_string(),
            path: "/enroll/key".to_string(),
            headers: HashMap::new(),
            query: HashMap::new(),
            body: vec![],
        };

        let payload = canonicalize_payload(&request);
        let mut mac = HmacSha256::new_from_slice(&key1).unwrap();
        mac.update(payload.as_bytes());
        let signature = mac.finalize().into_bytes();

        assert!(!is_valid_signature(&key2, &request, &signature));
    }

    #[test]
    fn test_is_valid_claims_all_present() {
        let claims = r#"{"device_id": "abc123", "purpose": "enrollment"}"#;
        assert!(is_valid_claims(claims, &["device_id", "purpose"]));
    }

    #[test]
    fn test_is_valid_claims_missing() {
        let claims = r#"{"device_id": "abc123"}"#;
        assert!(!is_valid_claims(claims, &["device_id", "purpose"]));
    }

    #[test]
    fn test_canonicalize_headers() {
        let mut headers = HashMap::new();
        headers.insert("X-Fleet-Metadata".to_string(), "true".to_string());
        headers.insert("X-Fleet-Date".to_string(), "2024-01-01".to_string());
        headers.insert("x-fleet-authorization".to_string(), "hmac-sha256 ...".to_string());

        let canonical = canonicalize_headers(&headers);
        assert!(canonical.contains("x-fleet-metadata:true"));
        assert!(canonical.contains("x-fleet-date:2024-01-01"));
        assert!(!canonical.contains("authorization"));
    }

    #[test]
    fn test_canonicalize_query() {
        let mut query = HashMap::new();
        query.insert("Foo".to_string(), "bar".to_string());
        query.insert("Baz".to_string(), "qux".to_string());

        let canonical = canonicalize_query(&query);
        // Should be sorted by lowercase key
        assert_eq!(canonical, "baz=qux&foo=bar");
    }

    #[test]
    fn test_enforce_access_off() {
        let result = enforce_access(AccessMode::Off, AccessDecision::Deny);
        assert!(result.allowed);
        assert!(!result.logged);
    }

    #[test]
    fn test_enforce_access_audit_deny() {
        let result = enforce_access(AccessMode::Audit, AccessDecision::Deny);
        assert!(result.allowed);
        assert!(result.logged);
    }

    #[test]
    fn test_enforce_access_enforce_deny() {
        let result = enforce_access(AccessMode::Enforce, AccessDecision::Deny);
        assert!(!result.allowed);
        assert!(result.logged);
    }

    #[test]
    fn test_enforce_access_enforce_allow() {
        let result = enforce_access(AccessMode::Enforce, AccessDecision::Allow);
        assert!(result.allowed);
        assert!(!result.logged);
    }

    #[test]
    fn test_get_status_active_key() {
        let key_id = Uuid::new_v4();
        let status = get_status(true, true, true, key_id);
        assert_eq!(status.fleet_mode, FleetMode::Enabled);
        assert!(status.has_key);
        assert_eq!(status.key_id, Some(key_id));
        assert!(status.is_active);
    }

    #[test]
    fn test_get_status_provisional_key() {
        let key_id = Uuid::new_v4();
        let status = get_status(true, true, false, key_id);
        assert!(status.has_key);
        assert_eq!(status.key_id, None); // Key ID hidden for provisional keys
        assert!(!status.is_active);
    }
}
