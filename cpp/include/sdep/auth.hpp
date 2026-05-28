// SPDX-License-Identifier: MIT
// SDEP — Authentication primitives (§4.3).
#pragma once

#include <cstdint>
#include <span>
#include <string>
#include <string_view>
#include <vector>

#include "sdep/request.hpp"

namespace sdep {

inline constexpr std::int64_t kDefaultDateWindowSeconds = 900; // 15 minutes

// §4.3.1
[[nodiscard]] constexpr bool
isValidRequestDate(std::int64_t requestTimestamp,
                   std::int64_t currentTime,
                   std::int64_t windowSeconds = kDefaultDateWindowSeconds) noexcept {
    return requestTimestamp <= currentTime
        && (currentTime - requestTimestamp) <= windowSeconds;
}

// §4.3.2 — HMAC-SHA256 + constant-time compare.
[[nodiscard]] bool
isValidSignature(std::span<const std::uint8_t> key,
                 const DeviceRequest& request,
                 std::span<const std::uint8_t> providedSignature) noexcept;

// §4.3.3 — every required claim must be present in the JSON object.
[[nodiscard]] bool
isValidClaims(std::string_view claimsJson,
              const std::vector<std::string>& requiredClaims);

// §4.3
[[nodiscard]] constexpr bool
authenticate(bool dateValid, bool signatureValid, bool claimsValid) noexcept {
    return dateValid && signatureValid && claimsValid;
}

} // namespace sdep
