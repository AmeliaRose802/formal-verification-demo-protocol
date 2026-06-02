// SPDX-License-Identifier: MIT
// SDEP — Length-prefixed canonicalization (§4.4 fix; SDEP.cry P24).
//
// The existing canonicalizePayload in src/canonical.cpp joins variable-length
// byte fields with a literal '\n' delimiter and no escaping or length tag.
// SDEP.cry property P23 exhibits a concrete byte-level collision for that
// scheme: a newline smuggled into one field shifts the parse boundary into
// the next, so two distinct logical requests can hash to the same HMAC input.
//
// canonicalize_lp below is the structural fix: each field is prefixed by its
// 1-byte length. SDEP.cry P24 proves the resulting byte stream is injective
// at bounded sizes; the SAW spec in cpp/saw/custom/canonicalize_lp.saw
// proves the function below matches that Cryptol model byte-for-byte for all
// nm,nb <= 16 — i.e. Hoare-logic verification of the actual C++ binary's
// LLVM IR, not just a paper model.

#pragma once

#include <cstddef>
#include <cstdint>

namespace sdep {

// Length-prefixed canonicalization of two byte fields.
//
// Writes the byte stream
//
//     out[0]              = nm
//     out[1..1+nm)        = m[0..nm)
//     out[1+nm]           = nb
//     out[2+nm..2+nm+nb)  = b[0..nb)
//
// (total 2 + nm + nb bytes) into `out`. Caller must size `out` to at
// least 2 + nm + nb bytes. Bytes past index 2+nm+nb in `out` are not
// touched. Returns the number of bytes written.
//
// Body lives in cpp/src/decision.cpp; SAW verifies that bitcode TU
// directly against the canonicalize_lp_post Cryptol model in SDEP_cpp.cry.
[[nodiscard]] std::size_t
canonicalize_lp(std::uint8_t* out,
                const std::uint8_t* m, std::uint8_t nm,
                const std::uint8_t* b, std::uint8_t nb) noexcept;

} // namespace sdep
