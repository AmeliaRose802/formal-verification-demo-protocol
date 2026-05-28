// SPDX-License-Identifier: MIT
#include "sdep/canonical.hpp"

#include <algorithm>
#include <cctype>
#include <cstdint>
#include <map>
#include <string>
#include <string_view>
#include <utility>
#include <vector>

namespace sdep {

namespace {

// Append `field` to `out` as a length-prefixed record: an 8-byte big-endian
// unsigned length tag followed by the raw bytes. A parser reads the tag and
// then exactly that many bytes, so no byte inside `field` can be misread as
// a record boundary. This is what makes canonicalizePayload byte-injective
// in the request (proven as P23_CanonicalizationInjective in SDEP.cry).
void appendLengthPrefixed(std::string& out, std::string_view field) {
    const std::uint64_t n = static_cast<std::uint64_t>(field.size());
    char tag[8];
    tag[0] = static_cast<char>((n >> 56) & 0xFF);
    tag[1] = static_cast<char>((n >> 48) & 0xFF);
    tag[2] = static_cast<char>((n >> 40) & 0xFF);
    tag[3] = static_cast<char>((n >> 32) & 0xFF);
    tag[4] = static_cast<char>((n >> 24) & 0xFF);
    tag[5] = static_cast<char>((n >> 16) & 0xFF);
    tag[6] = static_cast<char>((n >>  8) & 0xFF);
    tag[7] = static_cast<char>( n        & 0xFF);
    out.append(tag, sizeof(tag));
    out.append(field);
}

std::string to_lower(std::string_view s) {
    std::string out(s);
    std::transform(out.begin(), out.end(), out.begin(), [](unsigned char c) {
        return static_cast<char>(std::tolower(c));
    });
    return out;
}

std::string trim(std::string_view s) {
    std::size_t first = 0;
    while (first < s.size()
           && std::isspace(static_cast<unsigned char>(s[first]))) {
        ++first;
    }
    std::size_t last = s.size();
    while (last > first
           && std::isspace(static_cast<unsigned char>(s[last - 1]))) {
        --last;
    }
    return std::string(s.substr(first, last - first));
}

constexpr std::string_view kAuthHeader = "x-fleet-authorization";

} // namespace

// Both `canonicalizeHeaders` and `canonicalizeQuery` length-prefix each
// individual name and value with an 8-byte big-endian unsigned tag. This
// is the same encoding `canonicalizePayload` uses for its five top-level
// fields, and it makes both sub-canonicalizers byte-injective in their
// input map: a parser reads <tag, name, tag, value, tag, name, ...> until
// the buffer (itself length-prefixed by canonicalizePayload) is exhausted,
// with no byte inside any name or value capable of being misread as a
// record boundary.
//
// Earlier revisions joined records with '\n' / '&' and fields inside each
// record with ':' / '='. That encoding admitted the "header smuggling"
// collision shape: a value containing "\nname:forged" parsed as an extra
// record under a forged header name (the failure shape behind real-world
// signature-confusion CVEs). Cryptol properties `P24_HeaderCanonInjective`
// and `P25_QueryCanonInjective` in `cryptol/SDEP.cry` mechanise injectivity
// of the length-prefixed encoding used here.

std::string
canonicalizeHeaders(const std::map<std::string, std::string>& headers) {
    std::vector<std::pair<std::string, std::string>> normalized;
    normalized.reserve(headers.size());
    for (const auto& [name, value] : headers) {
        auto lname = to_lower(name);
        if (lname == kAuthHeader) continue; // exclude the authorization header
        normalized.emplace_back(std::move(lname), trim(value));
    }
    std::sort(normalized.begin(), normalized.end(),
              [](const auto& a, const auto& b) { return a.first < b.first; });

    std::string out;
    for (const auto& [name, value] : normalized) {
        appendLengthPrefixed(out, name);
        appendLengthPrefixed(out, value);
    }
    return out;
}

std::string
canonicalizeQuery(const std::map<std::string, std::string>& query) {
    std::vector<std::pair<std::string, std::string>> normalized;
    normalized.reserve(query.size());
    for (const auto& [key, value] : query) {
        normalized.emplace_back(to_lower(key), value);
    }
    std::sort(normalized.begin(), normalized.end(),
              [](const auto& a, const auto& b) { return a.first < b.first; });

    std::string out;
    for (const auto& [key, value] : normalized) {
        appendLengthPrefixed(out, key);
        appendLengthPrefixed(out, value);
    }
    return out;
}

std::string canonicalizePayload(const DeviceRequest& request) {
    const std::string_view body_view(
        reinterpret_cast<const char*>(request.body.data()),
        request.body.size());
    const std::string canonHeaders = canonicalizeHeaders(request.headers);
    const std::string canonQuery   = canonicalizeQuery(request.query);

    // Encode the timestamp as 8 raw big-endian bytes so it has a fixed
    // serialised shape — no length tag needed because the width is known.
    const auto ts_u = static_cast<std::uint64_t>(request.timestamp);
    char ts_bytes[8];
    ts_bytes[0] = static_cast<char>((ts_u >> 56) & 0xFF);
    ts_bytes[1] = static_cast<char>((ts_u >> 48) & 0xFF);
    ts_bytes[2] = static_cast<char>((ts_u >> 40) & 0xFF);
    ts_bytes[3] = static_cast<char>((ts_u >> 32) & 0xFF);
    ts_bytes[4] = static_cast<char>((ts_u >> 24) & 0xFF);
    ts_bytes[5] = static_cast<char>((ts_u >> 16) & 0xFF);
    ts_bytes[6] = static_cast<char>((ts_u >>  8) & 0xFF);
    ts_bytes[7] = static_cast<char>( ts_u        & 0xFF);
    const std::string_view ts_view(ts_bytes, sizeof(ts_bytes));

    std::string out;
    // Five 8-byte length tags + the five variable-length payloads + the
    // 8-byte fixed-width timestamp suffix.
    out.reserve(5 * sizeof(std::uint64_t)
                + request.method.size()
                + body_view.size()
                + canonHeaders.size()
                + request.path.size()
                + canonQuery.size()
                + sizeof(ts_bytes));

    // Length-prefixed concatenation. Each variable-length field is preceded
    // by its byte length as a 64-bit big-endian unsigned integer. This makes
    // the canonical byte stream byte-injective in the request: no byte inside
    // any field can be confused with a record boundary, eliminating the
    // newline-smuggling collision that affects delimiter-based encoders
    // (the failure shape behind real-world signature-confusion CVEs such as
    // AWS SigV4 ambiguity and HTTP request smuggling). See
    // cryptol/SDEP.cry §6 / property P23_CanonicalizationInjective for the
    // mechanised proof.
    appendLengthPrefixed(out, request.method);
    appendLengthPrefixed(out, body_view);
    appendLengthPrefixed(out, canonHeaders);
    appendLengthPrefixed(out, request.path);
    appendLengthPrefixed(out, canonQuery);
    // Timestamp suffix: bound into the signed bytes so the verifier's
    // freshness check (against request.timestamp) cannot be decoupled from
    // the signature. Mechanised as P29_TimestampBound in cryptol/SDEP.cry.
    out.append(ts_view);
    return out;
}

} // namespace sdep
