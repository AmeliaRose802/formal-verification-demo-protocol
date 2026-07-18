#include <cstdint>

namespace tiny {

uint8_t id_good(uint8_t x) {
    return x;
}

uint8_t id_bad(uint8_t x) {
    return static_cast<uint8_t>(x ^ 0x01u);
}

} // namespace tiny
