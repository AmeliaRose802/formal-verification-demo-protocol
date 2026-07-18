# One-pager: unverified crypto and timing-sensitive functions

**Status:** open · **Audience:** repo maintainers · **Group:** crypto / timing / low-level byte loops

## Functions in this group

These implementation functions are currently not verified against the model:

- `sdep::isValidSignature`
- `sdep::crypto::Sha256::reset`
- `sdep::crypto::Sha256::transform`
- `sdep::crypto::Sha256::update(std::span<const std::uint8_t>)`
- `sdep::crypto::Sha256::update(std::string_view)`
- `sdep::crypto::Sha256::finalize`
- `sdep::crypto::sha256(std::span<const std::uint8_t>)`
- `sdep::crypto::sha256(std::string_view)`
- `sdep::crypto::hmac_sha256(std::span<const std::uint8_t>, std::span<const std::uint8_t>)`
- `sdep::crypto::hmac_sha256(std::span<const std::uint8_t>, std::string_view)`
- `sdep::crypto::constant_time_equals`
- `sdep_hmac_sha256`
- `sdep_constant_time_equals`

Source files:

- `cpp/src/auth.cpp`
- `cpp/src/hmac.cpp`

## Why this group is not verified today

These functions share three challenges:

1. They are not simple decision trees. They manipulate byte buffers, rolling
   state, and loop-carried arithmetic.
2. The strongest interesting property is not always a value property. For
   `constant_time_equals`, functional correctness and constant-time behavior are
   different obligations.
3. The current model treats HMAC/signature verification as a trusted boundary,
   not as implementation-equivalent code.

That means they do not fit the repo's current fast path of "small leaf function
 with direct Cryptol equality harness."

## Current proof boundary

Today the model explicitly trusts HMAC and signature verification rather than
proving the implementation. That boundary is recorded in `cpp/saw/SDEP_cpp.cry`:

- `hmacSha256` is a trusted assumption.
- `isValidSignature` is a trusted assumption over that HMAC model.

So the current end-to-end claim is:

> if the HMAC/signature primitive behaves according to the assumed contract,
> then the proved decision logic uses it correctly.

That is a legitimate compositional claim, but it is not a proof of the real
code in `cpp/src/hmac.cpp` or the real `sdep::isValidSignature` body.

For this repo, those two trust decisions should be separated:

- **HMAC/SHA-256 primitive correctness** is usually a library-primitive
   verification problem, not the core protocol-verification problem. Unless the
   project explicitly wants to verify its in-repo crypto implementation as a
   cryptographic primitive, it is reasonable to keep HMAC itself as a trusted
   boundary.
- **`isValidSignature` is protocol-core logic.** It is the function that binds
   together request canonicalization, HMAC invocation, and equality checking.
   Even if HMAC remains assumed, `isValidSignature` is still worth verifying as a
   compositional protocol function over that trusted HMAC contract.

## Why the existing proof pipeline stops here

### Functional crypto is larger than the current leaf style

`Sha256::transform` and the HMAC wrappers are straight-line code plus loops,
but they are not tiny branch ladders. They are arithmetic-heavy, mutate local
state, and thread arrays through multiple rounds. They are plausible SAW
targets, but they need dedicated specs rather than the current auto-generated
decision-function harness shape.

### Constant-time is a different kind of property

`constant_time_equals` has a straightforward functional contract:

> return true iff the two byte sequences are equal.

But the higher-value security claim is:

> the execution trace does not depend on which byte differs first.

That second claim is not captured by plain value equivalence to a Cryptol
function. It needs a leakage-model or trace-style proof.

### Wrapper policy

For this repo, verification work must target real protocol/core C++ logic
surfaces. Creating or prioritizing C wrapper proof surfaces is not allowed.

### The wrappers inherit the same boundary

The `extern "C"` entrypoints are thin wrappers over the same unverified crypto
core. Verifying only the wrappers would not materially improve the security
story unless the underlying HMAC / compare functions are covered too.

## What would verify this group

### Phase 1 — protocol-core verifier proof

The first high-value proof target in this group should be `isValidSignature`,
not the SHA/HMAC primitive itself.

Concretely, prove:

- `constant_time_equals(a, b) == (a == b)` as a functional contract,
- `isValidSignature(key, req, sig)` returns true exactly when
   `sig == HMAC_SHA256_model(key, canonicalizePayload(req))`,

while keeping `HMAC_SHA256_model` as a trusted primitive boundary unless there
is an explicit goal to verify the in-repo HMAC implementation.

This would shrink the trust boundary from “HMAC and the whole verifier path are
assumed” to “HMAC is assumed, but the protocol’s use of it is proved.”

### Phase 2 — timing / side-channel claim

If desired, separately prove that `constant_time_equals` is constant-time under
an explicit leakage model. That should be documented as a distinct obligation,
not rolled into the value-correctness claim.

## Recommendation

Keep HMAC/SHA-256 primitive verification out of scope unless the repo explicitly
wants to verify its own crypto implementation as a primitive. That is a valid
future project, but it is not the most valuable next step for protocol
assurance.

The first high-value improvement is to prove functional correctness of
`constant_time_equals` and, especially, `isValidSignature` over a trusted HMAC
contract. That would verify the protocol’s use of signatures without
immediately taking on a full SHA-256/HMAC proof effort.

## Acceptance criteria

1. `constant_time_equals` is proven functionally correct as byte equality.
2. `isValidSignature` is proven against the real `canonicalizePayload` +
   trusted-HMAC path.
3. The docs distinguish protocol-verifier proof scope from primitive-crypto
   proof scope.
4. The docs distinguish functional correctness from constant-time guarantees.
5. The HMAC primitive trust boundary either remains visible as a deliberate
   assumption or is removed by a separate, explicit primitive-verification
   effort.
