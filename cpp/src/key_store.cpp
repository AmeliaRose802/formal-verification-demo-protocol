// SPDX-License-Identifier: MIT
#include "sdep/key_store.hpp"

namespace sdep {

std::optional<EnrollmentKey> KeyStore::provision(EnrollmentKey newKey) {
    std::scoped_lock lock(mu_);
    // P1: once active, never overwrite.
    if (key_.has_value() && key_->isActive) {
        return std::nullopt;
    }
    // TOFU lock (cryptol/spec.md §6.0 A2): refuse to overwrite an existing
    // provisional key. The device provisions exactly once per epoch
    // and any subsequent provision attempt — from the device or
    // anyone else — must wait for activation or an admin reset that
    // clears `key_`. This makes the pre-activate race window in §6.1
    // (G30) non-exploitable in code, not just by assumption.
    if (key_.has_value()) {
        return std::nullopt;
    }
    newKey.isActive = false;
    key_ = std::move(newKey);
    return key_;
}

ActivationResult KeyStore::activate(const Uuid& keyId) {
    std::scoped_lock lock(mu_);
    if (!key_.has_value()) {
        return ActivationResult::IoFailure; // no key to activate
    }
    if (key_->keyId != keyId) {
        return ActivationResult::IoFailure; // mismatched id
    }
    if (key_->isActive) {
        return ActivationResult::AlreadyActive; // P1
    }
    key_->isActive = true;
    return ActivationResult::Success;
}

bool KeyStore::hasKey() const noexcept {
    std::scoped_lock lock(mu_);
    return key_.has_value();
}

bool KeyStore::isActive() const noexcept {
    std::scoped_lock lock(mu_);
    return key_.has_value() && key_->isActive;
}

std::optional<EnrollmentKey> KeyStore::current() const {
    std::scoped_lock lock(mu_);
    return key_;
}

} // namespace sdep
