//! Basic usage examples for SDEP decision logic functions

use chrono::{Duration, Utc};
use sdep::*;
use std::collections::HashMap;

fn main() {
    println!("=== SDEP Decision Logic Examples ===\n");

    // Example 1: Key Provisioning Decision
    println!("Example 1: Key Provisioning");
    println!("----------------------------");
    
    let result = provision_key(
        true,                      // Fleet is enabled
        true,                      // Request is valid (has required headers)
        KeyVaultResult::Ok,        // Key vault is accessible
        false,                     // No active key exists
    );
    println!("Provision result: {:?}", result);
    assert_eq!(result, ProvisionResult::Succeeded);
    
    // Try to provision when key is already active
    let result = provision_key(true, true, KeyVaultResult::Ok, true);
    println!("Provision when active: {:?}", result);
    assert_eq!(result, ProvisionResult::Unauthorized);
    println!();

    // Example 2: Device Enrollment (Activation)
    println!("Example 2: Device Enrollment (Activation)");
    println!("------------------------------------------");
    
    let result = enroll_device(
        true,                           // Fleet is enabled
        true,                           // Metadata header is valid
        AuthResult::Authenticated,      // Signature is valid
        ActivationResult::Success,      // Key was successfully activated
    );
    println!("Enrollment result: {:?}", result);
    assert_eq!(result, EnrollmentResult::Succeeded);
    
    // Try to activate an already-active key
    let result = enroll_device(
        true,
        true,
        AuthResult::Authenticated,
        ActivationResult::AlreadyActive,
    );
    println!("Activate already-active key: {:?}", result);
    assert_eq!(result, EnrollmentResult::Unauthorized);
    println!();

    // Example 3: Request Timestamp Validation
    println!("Example 3: Request Timestamp Validation");
    println!("----------------------------------------");
    
    let current_time = Utc::now();
    let recent_request = current_time - Duration::seconds(300); // 5 minutes ago
    let old_request = current_time - Duration::seconds(1000);   // ~16 minutes ago
    let future_request = current_time + Duration::seconds(100); // Future
    
    let window = 900; // 15 minutes
    
    println!("Recent request (5 min ago): {}", is_valid_request_date(recent_request, current_time, window));
    println!("Old request (16 min ago): {}", is_valid_request_date(old_request, current_time, window));
    println!("Future request: {}", is_valid_request_date(future_request, current_time, window));
    println!();

    // Example 4: Payload Canonicalization
    println!("Example 4: Payload Canonicalization");
    println!("------------------------------------");
    
    let mut headers = HashMap::new();
    headers.insert("X-Fleet-Metadata".to_string(), "true".to_string());
    headers.insert("X-Fleet-Date".to_string(), "2024-01-01T12:00:00Z".to_string());
    headers.insert("X-Fleet-Authorization".to_string(), "hmac-sha256 ...".to_string());
    
    let mut query = HashMap::new();
    query.insert("version".to_string(), "1".to_string());
    query.insert("format".to_string(), "json".to_string());
    
    let request = DeviceRequest {
        method: "POST".to_string(),
        path: "/enroll/key".to_string(),
        headers: headers.clone(),
        query: query.clone(),
        body: vec![],
    };
    
    let canonical_payload = canonicalize_payload(&request);
    // canonicalize_payload returns Vec<u8>; the length tags are binary and not
    // guaranteed to be valid UTF-8, so render as a hex dump for display.
    println!("Canonical payload ({} bytes):\n{}",
             canonical_payload.len(),
             canonical_payload.iter().map(|b| format!("{:02x}", b)).collect::<String>());
    println!();
    
    let canonical_headers = canonicalize_headers(&headers);
    println!("Canonical headers:\n{}", canonical_headers);
    println!();
    
    let canonical_query = canonicalize_query(&query);
    println!("Canonical query: {}", canonical_query);
    println!();

    // Example 5: HMAC Signature Verification
    println!("Example 5: HMAC Signature Verification");
    println!("---------------------------------------");
    
    use hmac::{Hmac, Mac};
    use sha2::Sha256;
    type HmacSha256 = Hmac<Sha256>;
    
    let secret_key = [42u8; 32]; // Example key
    let request = DeviceRequest {
        method: "POST".to_string(),
        path: "/enroll/key/activate".to_string(),
        headers: HashMap::new(),
        query: HashMap::new(),
        body: vec![],
    };
    
    // Compute signature
    let payload = canonicalize_payload(&request);
    let mut mac = HmacSha256::new_from_slice(&secret_key).unwrap();
    mac.update(&payload);
    let signature = mac.finalize().into_bytes();
    
    // Verify signature (constant-time)
    let is_valid = is_valid_signature(&secret_key, &request, &signature);
    println!("Signature valid: {}", is_valid);
    
    // Try with wrong key
    let wrong_key = [99u8; 32];
    let is_valid = is_valid_signature(&wrong_key, &request, &signature);
    println!("Signature with wrong key: {}", is_valid);
    println!();

    // Example 6: Claims Validation
    println!("Example 6: Claims Validation");
    println!("----------------------------");
    
    let valid_claims = r#"{"device_id": "device-123", "purpose": "enrollment", "version": "1.0"}"#;
    let required_claims = ["device_id", "purpose"];
    
    let is_valid = is_valid_claims(valid_claims, &required_claims);
    println!("Valid claims: {}", is_valid);
    
    let incomplete_claims = r#"{"device_id": "device-123"}"#;
    let is_valid = is_valid_claims(incomplete_claims, &required_claims);
    println!("Incomplete claims: {}", is_valid);
    println!();

    // Example 7: Access Enforcement
    println!("Example 7: Access Enforcement");
    println!("-----------------------------");
    
    let modes = [AccessMode::Off, AccessMode::Audit, AccessMode::Enforce];
    let decisions = [AccessDecision::Allow, AccessDecision::Deny, AccessDecision::NoRule];
    
    for mode in &modes {
        for decision in &decisions {
            let result = enforce_access(*mode, *decision);
            println!("{:?} + {:?} -> allowed: {}, logged: {}",
                mode, decision, result.allowed, result.logged);
        }
    }
    println!();

    // Example 8: Status Query
    println!("Example 8: Status Query");
    println!("-----------------------");
    
    use uuid::Uuid;
    let key_id = Uuid::new_v4();
    
    // Active key - key ID is revealed
    let status = get_status(true, true, true, key_id);
    println!("Active key status:");
    println!("  Fleet mode: {:?}", status.fleet_mode);
    println!("  Has key: {}", status.has_key);
    println!("  Key ID: {:?}", status.key_id);
    println!("  Is active: {}", status.is_active);
    println!();
    
    // Provisional key - key ID is hidden
    let status = get_status(true, true, false, key_id);
    println!("Provisional key status:");
    println!("  Fleet mode: {:?}", status.fleet_mode);
    println!("  Has key: {}", status.has_key);
    println!("  Key ID: {:?} (hidden for security)", status.key_id);
    println!("  Is active: {}", status.is_active);
    println!();

    // Example 9: Complete Authentication Check
    println!("Example 9: Complete Authentication");
    println!("-----------------------------------");
    
    let date_valid = is_valid_request_date(
        Utc::now() - Duration::seconds(60),
        Utc::now(),
        900
    );
    let signature_valid = true; // Assume signature was checked
    let claims_valid = is_valid_claims(
        r#"{"device_id": "dev-001", "purpose": "enrollment"}"#,
        &["device_id", "purpose"]
    );
    
    let authenticated = authenticate(date_valid, signature_valid, claims_valid);
    println!("Date valid: {}", date_valid);
    println!("Signature valid: {}", signature_valid);
    println!("Claims valid: {}", claims_valid);
    println!("Overall authenticated: {}", authenticated);
    
    println!("\n=== All examples completed successfully ===");
}
