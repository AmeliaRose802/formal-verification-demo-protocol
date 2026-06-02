// SPDX-License-Identifier: MIT
// SDEP — Access enforcement (§4.5).
//
// Body lives in cpp/src/decision.cpp alongside the other pure decision
// targets so the SAW pipeline can verify one bitcode TU directly.
#pragma once

#include "sdep/types.hpp"

namespace sdep {

[[nodiscard]] EnforceOutcome
enforceAccess(AccessMode mode, AccessDecision decision) noexcept;

} // namespace sdep
