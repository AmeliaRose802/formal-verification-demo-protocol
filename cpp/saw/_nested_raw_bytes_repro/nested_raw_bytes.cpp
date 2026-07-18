#include <cstdint>

namespace repro {

struct Inner {
    uint8_t engaged;
    uint8_t payload[3];

    bool hasData() const { return engaged != 0; }
    uint8_t firstByte() const { return engaged; }
};

struct Outer {
    Inner inner;

    bool hasInnerData() const { return inner.hasData(); }
};

bool outerHasData(const Outer* o) {
    return o->hasInnerData();
}

uint8_t outerFirstByte(const Outer* o) {
    return o->inner.firstByte();
}

} // namespace repro
