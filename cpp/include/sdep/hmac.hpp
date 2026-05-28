// SPDX-License-Identifier: MIT
// SDEP — SHA-256, HMAC-SHA256, and constant-time comparison.
//
// Self-contained implementation so the demo has no external crypto
// dependency. Suitable for the protocol case study, not hardened for
// production use against side-channel adversaries.
#pragma once

#include <array>
#include <cstddef>
#include <cstdint>
#include <span>
#include <string_view>

#include "sdep/sal_compat.hpp"

namespace sdep::crypto {

inline constexpr std::size_t kSha256DigestSize = 32;
inline constexpr std::size_t kSha256BlockSize  = 64;

using Sha256Digest = std::array<std::uint8_t, kSha256DigestSize>;

class Sha256 {
public:
    Sha256() noexcept { reset(); }

    void reset() noexcept;
    void update(std::span<const std::uint8_t> data) noexcept;
    void update(std::string_view data) noexcept;
    [[nodiscard]] Sha256Digest finalize() noexcept;

private:
    void transform(_In_reads_(kSha256BlockSize)
                       const std::uint8_t block[kSha256BlockSize]) noexcept;

    std::uint32_t state_[8]{};
    std::uint64_t bitlen_{0};
    std::uint8_t buffer_[kSha256BlockSize]{};
    std::size_t buffer_len_{0};
};

[[nodiscard]] Sha256Digest sha256(std::span<const std::uint8_t> data) noexcept;
[[nodiscard]] Sha256Digest sha256(std::string_view data) noexcept;

[[nodiscard]] Sha256Digest hmac_sha256(std::span<const std::uint8_t> key,
                                      std::span<const std::uint8_t> message) noexcept;
[[nodiscard]] Sha256Digest hmac_sha256(std::span<const std::uint8_t> key,
                                      std::string_view message) noexcept;

// Constant-time byte comparison (returns true iff equal).
[[nodiscard]] bool constant_time_equals(std::span<const std::uint8_t> a,
                                        std::span<const std::uint8_t> b) noexcept;

} // namespace sdep::crypto

// --- Raw-pointer C-style boundary API (SAL-annotated) -----------------------
//
// These functions exist for FFI consumers and interop with code that cannot
// use std::span. They are exactly equivalent to the span overloads above.

extern "C" {

// Compute HMAC-SHA256 over (key, message), writing the 32-byte digest into
// `out_digest`.
void
sdep_hmac_sha256(_In_reads_bytes_(key_len)  const std::uint8_t* key,
                                            std::size_t         key_len,
                 _In_reads_bytes_(msg_len)  const std::uint8_t* message,
                                            std::size_t         msg_len,
                 _Out_writes_all_(32)       std::uint8_t*       out_digest) noexcept;

// Returns 1 iff the two buffers are byte-equal. Performs no early exit on
// mismatch (constant time over min(a_len, b_len)).
_Check_return_
int
sdep_constant_time_equals(_In_reads_bytes_(a_len) const std::uint8_t* a,
                                                  std::size_t         a_len,
                          _In_reads_bytes_(b_len) const std::uint8_t* b,
                                                  std::size_t         b_len) noexcept;

} // extern "C"
