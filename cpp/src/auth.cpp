// SPDX-License-Identifier: MIT
#include "sdep/auth.hpp"

#include <algorithm>
#include <cctype>
#include <cstdint>
#include <span>
#include <string>
#include <string_view>

#include "sdep/canonical.hpp"
#include "sdep/hmac.hpp"

namespace sdep {

bool isValidSignature(std::span<const std::uint8_t> key,
                      const DeviceRequest& request,
                      std::span<const std::uint8_t> providedSignature) noexcept {
    const std::string payload = canonicalizePayload(request);
    const auto expected = crypto::hmac_sha256(key, payload);
    return crypto::constant_time_equals(
        std::span<const std::uint8_t>{expected.data(), expected.size()},
        providedSignature);
}

namespace {

// Tiny JSON object key scanner. Recognises top-level string keys in a JSON
// object and reports whether all required claim names are present. Not a
// full JSON parser — but sufficient for §4.3.3 (claim presence check).
bool find_top_level_key(std::string_view json, std::string_view target) {
    std::size_t i = 0;
    const std::size_t n = json.size();

    auto skip_ws = [&]() {
        while (i < n && std::isspace(static_cast<unsigned char>(json[i]))) ++i;
    };

    skip_ws();
    if (i >= n || json[i] != '{') return false;
    ++i;

    int depth = 0;
    bool expect_key = true;

    while (i < n) {
        skip_ws();
        if (i >= n) break;
        const char c = json[i];

        if (c == '}' && depth == 0) return false;
        if (c == ',' && depth == 0) { expect_key = true; ++i; continue; }
        if (c == ':' && depth == 0) { expect_key = false; ++i; continue; }

        if (c == '{' || c == '[') { ++depth; ++i; continue; }
        if (c == '}' || c == ']') { --depth; ++i; continue; }

        if (c == '"') {
            // Read a string token, handling \" escapes.
            const std::size_t start = ++i;
            std::string token;
            token.reserve(16);
            while (i < n && json[i] != '"') {
                if (json[i] == '\\' && i + 1 < n) {
                    char next = json[i + 1];
                    char decoded = next;
                    switch (next) {
                        case 'n': decoded = '\n'; break;
                        case 't': decoded = '\t'; break;
                        case 'r': decoded = '\r'; break;
                        case 'b': decoded = '\b'; break;
                        case 'f': decoded = '\f'; break;
                        case '"': decoded = '"';  break;
                        case '\\': decoded = '\\'; break;
                        case '/': decoded = '/';  break;
                        default: break; // leave \uXXXX etc. as-is for claim names
                    }
                    token.push_back(decoded);
                    i += 2;
                    continue;
                }
                token.push_back(json[i]);
                ++i;
            }
            if (i < n) ++i; // skip closing "
            (void)start;

            if (depth == 0 && expect_key && token == target) {
                return true;
            }
            continue;
        }

        // Skip primitive tokens (numbers, true/false/null).
        ++i;
    }
    return false;
}

} // namespace

bool isValidClaims(std::string_view claimsJson,
                   const std::vector<std::string>& requiredClaims) {
    for (const auto& required : requiredClaims) {
        if (!find_top_level_key(claimsJson, required)) {
            return false;
        }
    }
    return true;
}

} // namespace sdep
