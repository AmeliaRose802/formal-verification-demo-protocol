// SPDX-License-Identifier: MIT
// SDEP — Access enforcement (§4.5).
#pragma once

#include "sdep/types.hpp"

namespace sdep {

[[nodiscard]] constexpr EnforceOutcome
enforceAccess(AccessMode mode, AccessDecision decision) noexcept {
    switch (mode) {
        case AccessMode::Off:
            return {true, false};
        case AccessMode::Audit:
            return (decision == AccessDecision::Deny)
                ? EnforceOutcome{true, true}
                : EnforceOutcome{true, false};
        case AccessMode::Enforce:
            switch (decision) {
                case AccessDecision::Allow:  return {true,  false};
                case AccessDecision::Deny:   return {false, true};
                case AccessDecision::NoRule: return {true,  false};
            }
            return {true, false}; // unreachable, defensive
    }
    return {true, false}; // unreachable
}

} // namespace sdep
