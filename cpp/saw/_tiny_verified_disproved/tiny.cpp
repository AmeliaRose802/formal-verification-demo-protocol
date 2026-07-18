#include <cstdint>

namespace tiny {

struct Inner {
    uint8_t b;
};

struct Outer {
    Inner inner;
};

// Matches spec: returns the nested byte unchanged.
uint8_t readNested_good(Outer o) {
    return o.inner.b;
}

// Violates the same spec: flips the low bit.
uint8_t readNested_bad(Outer o) {
    return static_cast<uint8_t>(o.inner.b ^ 0x01u);
}

} // namespace tiny
