// SPDX-License-Identifier: MIT
//
// Validation harness for the canonicalization-injectivity gaps identified
// *after* the P23 fix. Each test below calls production code and shows two
// distinct inputs that produce identical canonical bytes AND identical HMAC
// signatures — i.e., the P23 fix at the outer layer did not close the entire
// signature-confusion attack surface.
//
// Run with:  cargo test --test validate_canon_gaps -- --nocapture

use std::collections::HashMap;

use hmac::{Hmac, Mac};
use sha2::Sha256;

use sdep::{
    canonicalize_headers, canonicalize_payload, canonicalize_query,
    DeviceRequest, is_valid_signature,
};

type HmacSha256 = Hmac<Sha256>;

fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|b| format!("{:02x}", b)).collect()
}

fn sign(key: &[u8; 32], req: &DeviceRequest) -> [u8; 32] {
    let payload = canonicalize_payload(req);
    let mut mac = HmacSha256::new_from_slice(key).unwrap();
    mac.update(&payload);
    let tag = mac.finalize().into_bytes();
    let mut out = [0u8; 32];
    out.copy_from_slice(&tag);
    out
}

// ───────────────────────────────────────────────────────────────────────────
// Tier-1 #1 — canonicalize_headers is NOT injective.
// Two distinct header maps produce identical canonical bytes.
// ───────────────────────────────────────────────────────────────────────────
#[test]
fn gap1_canonicalize_headers_not_injective() {
    let mut a = HashMap::new();
    a.insert("x-a".to_string(), "v".to_string());
    a.insert("x-b".to_string(), "w".to_string());

    let mut b = HashMap::new();
    // One header whose VALUE contains a smuggled newline-delimited record.
    b.insert("x-a".to_string(), "v\nx-b:w".to_string());

    let ca = canonicalize_headers(&a);
    let cb = canonicalize_headers(&b);

    println!("Gap 1 — canonicalize_headers");
    println!("  map A (2 headers): {:?}", a);
    println!("  map B (1 header):  {:?}", b);
    println!("  canonical A: {:?}", ca);
    println!("  canonical B: {:?}", cb);

    assert_ne!(a, b, "header maps are structurally distinct");
    assert_eq!(ca, cb, "but canonical bytes collide — INJECTIVITY VIOLATED");
}

// ───────────────────────────────────────────────────────────────────────────
// Tier-1 #2 — canonicalize_query is NOT injective.
// Same shape: '&' separator + '=' inside a value collides.
// ───────────────────────────────────────────────────────────────────────────
#[test]
fn gap2_canonicalize_query_not_injective() {
    let mut a = HashMap::new();
    a.insert("a".to_string(), "x".to_string());
    a.insert("b".to_string(), "y".to_string());

    let mut b = HashMap::new();
    b.insert("a".to_string(), "x&b=y".to_string());

    let ca = canonicalize_query(&a);
    let cb = canonicalize_query(&b);

    println!("Gap 2 — canonicalize_query");
    println!("  map A: {:?}", a);
    println!("  map B: {:?}", b);
    println!("  canonical A: {:?}", ca);
    println!("  canonical B: {:?}", cb);

    assert_ne!(a, b, "query maps are structurally distinct");
    assert_eq!(ca, cb, "but canonical bytes collide — INJECTIVITY VIOLATED");
}

// ───────────────────────────────────────────────────────────────────────────
// Tier-1 — END-TO-END signature collision via gap #1.
//
// This is the headline finding: two requests that differ ONLY in header
// structure produce the SAME HMAC signature under the SAME key, even with
// the P23 length-prefix fix in place. A signature legitimately issued for
// request A is therefore a valid signature for request B.
// ───────────────────────────────────────────────────────────────────────────
#[test]
fn gap1_end_to_end_signature_collision() {
    let key = [0x42u8; 32];

    // Request A: two headers, x-a:v and x-b:w.
    let mut headers_a = HashMap::new();
    headers_a.insert("x-a".to_string(), "v".to_string());
    headers_a.insert("x-b".to_string(), "w".to_string());
    let req_a = DeviceRequest {
        method:  "POST".to_string(),
        path:    "/enroll/key".to_string(),
        headers: headers_a,
        query:   HashMap::new(),
        body:    vec![],
    };

    // Request B: one header whose value smuggles the second record.
    let mut headers_b = HashMap::new();
    headers_b.insert("x-a".to_string(), "v\nx-b:w".to_string());
    let req_b = DeviceRequest {
        method:  "POST".to_string(),
        path:    "/enroll/key".to_string(),
        headers: headers_b,
        query:   HashMap::new(),
        body:    vec![],
    };

    let sig_a = sign(&key, &req_a);
    let sig_b = sign(&key, &req_b);

    println!("Gap 1 — END-TO-END signature collision (P23 fix in place):");
    println!("  HMAC(req_A) = {}", hex(&sig_a));
    println!("  HMAC(req_B) = {}", hex(&sig_b));

    assert_ne!(req_a.headers, req_b.headers, "requests are distinct");
    assert_eq!(sig_a, sig_b,
               "but HMACs are identical — sig for A verifies request B");

    // Cross-verify: signature issued for request A authenticates request B.
    assert!(is_valid_signature(&key, &req_b, &sig_a),
            "sig issued for req_A is accepted as valid for req_B");
}

// ───────────────────────────────────────────────────────────────────────────
// Tier-1 #3 — Case-collision in header normalization.
// Two distinct case-variants of the same lowercase name collapse together;
// the surviving value is implementation-defined (HashMap iteration order).
// ───────────────────────────────────────────────────────────────────────────
#[test]
fn gap3_header_case_collision_is_nondeterministic() {
    let mut headers = HashMap::new();
    headers.insert("X-Fleet-Date".to_string(), "value-1".to_string());
    headers.insert("x-fleet-date".to_string(), "value-2".to_string());

    let canon = canonicalize_headers(&headers);
    println!("Gap 3 — case-variant collision");
    println!("  input map: {:?}", headers);
    println!("  canonical: {:?}", canon);

    // After lowercasing, both names become "x-fleet-date".
    // The canonical string contains the lowercase name TWICE — which is
    // itself a structural ambiguity (no valid HTTP request has two of the
    // same header name in this protocol's model). And which value appears
    // *first* depends on HashMap iteration order — non-deterministic.
    let occurrences = canon.matches("x-fleet-date:").count();
    assert_eq!(occurrences, 2,
        "two distinct case-variants both survive lowercase normalization");
}
