// Minimal SAW TU exercising saw-spec-gen bugs #11 and #12.
//
//   #12 — std::int64_t typedef should lower to llvm_int 64, not llvm_alias.
//   #11 — void* parameter should not emit `(// void)` (a comment) as the type.
//
// Both bugs are visible at saw-spec-gen codegen time; this TU keeps the AST
// tiny by avoiding all STL containers/strings.

#include <cstdint>

namespace sdep {

// Bug #12 fodder.
[[nodiscard]] constexpr bool
inWindow(std::int64_t reqTs, std::int64_t now, std::int64_t window) noexcept {
    return reqTs <= now && (now - reqTs) <= window;
}

// Bug #11 fodder: void* parameter.
[[nodiscard]] inline bool
isNonNull(void* p) noexcept {
    return p != nullptr;
}

} // namespace sdep

namespace sdep::saw_force_emission {

[[gnu::used]] volatile auto kAddrInWindow =
    static_cast<bool (*)(std::int64_t, std::int64_t, std::int64_t) noexcept>(
        &::sdep::inWindow);

[[gnu::used]] volatile auto kAddrIsNonNull =
    static_cast<bool (*)(void*) noexcept>(&::sdep::isNonNull);

} // namespace sdep::saw_force_emission
