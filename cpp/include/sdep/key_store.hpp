// SPDX-License-Identifier: MIT
// SDEP — In-memory key store with an irreversible Active state (P1).
#pragma once

#include <mutex>
#include <optional>

#include "sdep/request.hpp"
#include "sdep/types.hpp"

namespace sdep {

// Thread-safe in-memory key store. The lifecycle is:
//   [No Key] --provision--> [Provisional] --activate--> [Active]
// Once Active, the key is sealed: provision returns no change, activate
// returns AlreadyActive. The active state never reverts.
class KeyStore {
public:
    // Provision a new key. Fails (returns nullopt) if a key is already active.
    // If a provisional key exists, it is replaced (re-provisioning).
    std::optional<EnrollmentKey> provision(EnrollmentKey newKey);

    // Activate the key matching keyId. Returns ActivationResult per §2.1+P22.
    ActivationResult activate(const Uuid& keyId);

    [[nodiscard]] bool hasKey() const noexcept;
    [[nodiscard]] bool isActive() const noexcept;
    [[nodiscard]] std::optional<EnrollmentKey> current() const;

private:
    mutable std::mutex mu_;
    std::optional<EnrollmentKey> key_;
};

} // namespace sdep
