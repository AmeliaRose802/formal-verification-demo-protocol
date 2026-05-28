// SPDX-License-Identifier: MIT
// SDEP — Canonicalization (§4.4).
#pragma once

#include <map>
#include <string>

#include "sdep/request.hpp"

namespace sdep {

[[nodiscard]] std::string
canonicalizeHeaders(const std::map<std::string, std::string>& headers);

[[nodiscard]] std::string
canonicalizeQuery(const std::map<std::string, std::string>& query);

[[nodiscard]] std::string canonicalizePayload(const DeviceRequest& request);

} // namespace sdep
