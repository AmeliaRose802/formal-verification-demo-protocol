// SPDX-License-Identifier: MIT
// SDEP — Data structures from §2.2.
#pragma once

#include <array>
#include <cstdint>
#include <cstring>
#include <map>
#include <optional>
#include <span>
#include <string>
#include <string_view>
#include <vector>

#include "sdep/types.hpp"

namespace sdep {

// A 128-bit identifier rendered as a canonical UUID string. We keep it as a
// fixed-size byte array so the type is trivially copyable and constexpr-able.
struct Uuid {
    std::array<std::uint8_t, 16> bytes{};

    [[nodiscard]] static Uuid from_string(std::string_view text);
    [[nodiscard]] std::string to_string() const;

    [[nodiscard]] friend bool
    operator==(const Uuid&, const Uuid&) = default;
};

struct EnrollmentKey {
    Uuid keyId{};
    std::array<std::uint8_t, 32> secret{}; // HMAC-SHA256 material
    bool isActive{false};
    std::int64_t createdAt{0}; // unix seconds
};

struct DeviceRequest {
    std::string method;                       // "GET", "POST", ...
    std::string path;                         // e.g. "/enroll/key"
    std::map<std::string, std::string> headers;
    std::map<std::string, std::string> query;
    std::vector<std::uint8_t> body;
    // Unix-seconds timestamp asserted by the device and bound into the
    // canonical signed payload (see canonicalizePayload). The activate
    // verifier checks freshness against `request.timestamp` directly —
    // never a caller-supplied parameter — so a replayed signed request
    // cannot be paired with a fresh "current time" to pass the freshness
    // window. Mechanised as Cryptol property `P29_TimestampBound`.
    std::int64_t timestamp{0};
};

struct EnrollmentStatus {
    FleetMode fleetMode{FleetMode::Disabled};
    bool hasKey{false};
    std::optional<Uuid> keyId{};
    bool isActive{false};

    [[nodiscard]] friend bool
    operator==(const EnrollmentStatus&, const EnrollmentStatus&) = default;
};

} // namespace sdep
