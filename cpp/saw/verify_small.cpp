// Slightly larger SAW TU for smoke-testing the pipeline.
// Mirrors cryptol/SDEP_small.cry.

#include <cstdint>

namespace sdep {

// 3 × std::int64_t, bool return.
[[nodiscard]] constexpr bool
inWindow(std::int64_t reqTs, std::int64_t now, std::int64_t window) noexcept {
    return reqTs <= now && (now - reqTs) <= window;
}

// void*, bool return.
[[nodiscard]] inline bool
isNonNull(void* p) noexcept {
    return p != nullptr;
}

// 2 × std::int64_t, std::int64_t return.
[[nodiscard]] constexpr std::int64_t
pickGreater(std::int64_t a, std::int64_t b) noexcept {
    return a > b ? a : b;
}

} // namespace sdep

namespace sdep::saw_force_emission {

[[gnu::used]] volatile auto kAddrInWindow =
    static_cast<bool (*)(std::int64_t, std::int64_t, std::int64_t) noexcept>(
        &::sdep::inWindow);

[[gnu::used]] volatile auto kAddrIsNonNull =
    static_cast<bool (*)(void*) noexcept>(&::sdep::isNonNull);

[[gnu::used]] volatile auto kAddrPickGreater =
    static_cast<std::int64_t (*)(std::int64_t, std::int64_t) noexcept>(
        &::sdep::pickGreater);

} // namespace sdep::saw_force_emission
