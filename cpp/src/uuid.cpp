// SPDX-License-Identifier: MIT
#include "sdep/request.hpp"

#include <array>
#include <cctype>
#include <cstdint>
#include <string>

#include "sdep/errors.hpp"

namespace sdep {

namespace {

std::uint8_t hex_nibble(char c) {
    if (c >= '0' && c <= '9') return static_cast<std::uint8_t>(c - '0');
    if (c >= 'a' && c <= 'f') return static_cast<std::uint8_t>(10 + c - 'a');
    if (c >= 'A' && c <= 'F') return static_cast<std::uint8_t>(10 + c - 'A');
    throw InvalidUuidError("Uuid: non-hex character");
}

} // namespace

Uuid Uuid::from_string(std::string_view text) {
    std::string compact;
    compact.reserve(32);
    for (char c : text) {
        if (c == '-') continue;
        compact.push_back(c);
    }
    if (compact.size() != 32) {
        throw InvalidUuidError("Uuid: expected 32 hex digits, got "
                               + std::to_string(compact.size()));
    }
    Uuid u{};
    for (std::size_t i = 0; i < 16; ++i) {
        u.bytes[i] = static_cast<std::uint8_t>(
            (hex_nibble(compact[i * 2]) << 4) | hex_nibble(compact[i * 2 + 1]));
    }
    return u;
}

std::string Uuid::to_string() const {
    static constexpr char kHex[] = "0123456789abcdef";
    std::string out;
    out.reserve(36);
    for (std::size_t i = 0; i < 16; ++i) {
        if (i == 4 || i == 6 || i == 8 || i == 10) out.push_back('-');
        const std::uint8_t b = bytes[i];
        out.push_back(kHex[(b >> 4) & 0x0f]);
        out.push_back(kHex[b & 0x0f]);
    }
    return out;
}

} // namespace sdep
