// SPDX-License-Identifier: MIT
// SDEP — Protocol-level exceptions.
//
// The pure decision functions (§4) never throw; they take pre-resolved
// inputs. Exceptions are reserved for the *parsing/boundary* layer:
// malformed UUIDs in URLs, malformed base64, etc. The controller
// (FleetController) is responsible for catching ProtocolError and mapping
// it to a protocol response code.
#pragma once

#include <stdexcept>
#include <string>

namespace sdep {

// Base class for any error raised by the protocol parsing/boundary layer.
class ProtocolError : public std::runtime_error {
public:
    using std::runtime_error::runtime_error;
};

// Raised when an input string cannot be parsed as a valid UUID.
class InvalidUuidError final : public ProtocolError {
public:
    explicit InvalidUuidError(std::string message)
        : ProtocolError(std::move(message)) {}
};

// Raised when a request URL does not match an expected route template.
class InvalidRouteError final : public ProtocolError {
public:
    explicit InvalidRouteError(std::string message)
        : ProtocolError(std::move(message)) {}
};

} // namespace sdep
