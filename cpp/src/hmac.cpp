// SPDX-License-Identifier: MIT
#include "sdep/hmac.hpp"

#include <algorithm>
#include <bit>
#include <cstring>

namespace sdep::crypto {

namespace {

// FIPS 180-4 SHA-256 constants.
constexpr std::uint32_t kK[64] = {
    0x428a2f98u, 0x71374491u, 0xb5c0fbcfu, 0xe9b5dba5u, 0x3956c25bu, 0x59f111f1u,
    0x923f82a4u, 0xab1c5ed5u, 0xd807aa98u, 0x12835b01u, 0x243185beu, 0x550c7dc3u,
    0x72be5d74u, 0x80deb1feu, 0x9bdc06a7u, 0xc19bf174u, 0xe49b69c1u, 0xefbe4786u,
    0x0fc19dc6u, 0x240ca1ccu, 0x2de92c6fu, 0x4a7484aau, 0x5cb0a9dcu, 0x76f988dau,
    0x983e5152u, 0xa831c66du, 0xb00327c8u, 0xbf597fc7u, 0xc6e00bf3u, 0xd5a79147u,
    0x06ca6351u, 0x14292967u, 0x27b70a85u, 0x2e1b2138u, 0x4d2c6dfcu, 0x53380d13u,
    0x650a7354u, 0x766a0abbu, 0x81c2c92eu, 0x92722c85u, 0xa2bfe8a1u, 0xa81a664bu,
    0xc24b8b70u, 0xc76c51a3u, 0xd192e819u, 0xd6990624u, 0xf40e3585u, 0x106aa070u,
    0x19a4c116u, 0x1e376c08u, 0x2748774cu, 0x34b0bcb5u, 0x391c0cb3u, 0x4ed8aa4au,
    0x5b9cca4fu, 0x682e6ff3u, 0x748f82eeu, 0x78a5636fu, 0x84c87814u, 0x8cc70208u,
    0x90befffau, 0xa4506cebu, 0xbef9a3f7u, 0xc67178f2u,
};

constexpr std::uint32_t kInitState[8] = {
    0x6a09e667u, 0xbb67ae85u, 0x3c6ef372u, 0xa54ff53au,
    0x510e527fu, 0x9b05688cu, 0x1f83d9abu, 0x5be0cd19u,
};

inline std::uint32_t rotr(std::uint32_t x, unsigned n) noexcept {
    return std::rotr(x, static_cast<int>(n));
}

} // namespace

void Sha256::reset() noexcept {
    std::memcpy(state_, kInitState, sizeof(kInitState));
    bitlen_ = 0;
    buffer_len_ = 0;
}

void Sha256::transform(_In_reads_(kSha256BlockSize)
                           const std::uint8_t block[kSha256BlockSize]) noexcept {
    std::uint32_t w[64];
    for (int i = 0; i < 16; ++i) {
        w[i] = (static_cast<std::uint32_t>(block[i * 4 + 0]) << 24)
             | (static_cast<std::uint32_t>(block[i * 4 + 1]) << 16)
             | (static_cast<std::uint32_t>(block[i * 4 + 2]) << 8)
             |  static_cast<std::uint32_t>(block[i * 4 + 3]);
    }
    for (int i = 16; i < 64; ++i) {
        const std::uint32_t s0 = rotr(w[i - 15], 7) ^ rotr(w[i - 15], 18) ^ (w[i - 15] >> 3);
        const std::uint32_t s1 = rotr(w[i - 2], 17) ^ rotr(w[i - 2], 19) ^ (w[i - 2] >> 10);
        w[i] = w[i - 16] + s0 + w[i - 7] + s1;
    }

    std::uint32_t a = state_[0], b = state_[1], c = state_[2], d = state_[3];
    std::uint32_t e = state_[4], f = state_[5], g = state_[6], h = state_[7];

    for (int i = 0; i < 64; ++i) {
        const std::uint32_t S1 = rotr(e, 6) ^ rotr(e, 11) ^ rotr(e, 25);
        const std::uint32_t ch = (e & f) ^ (~e & g);
        const std::uint32_t t1 = h + S1 + ch + kK[i] + w[i];
        const std::uint32_t S0 = rotr(a, 2) ^ rotr(a, 13) ^ rotr(a, 22);
        const std::uint32_t mj = (a & b) ^ (a & c) ^ (b & c);
        const std::uint32_t t2 = S0 + mj;
        h = g; g = f; f = e; e = d + t1;
        d = c; c = b; b = a; a = t1 + t2;
    }

    state_[0] += a; state_[1] += b; state_[2] += c; state_[3] += d;
    state_[4] += e; state_[5] += f; state_[6] += g; state_[7] += h;
}

void Sha256::update(std::span<const std::uint8_t> data) noexcept {
    for (std::uint8_t byte : data) {
        buffer_[buffer_len_++] = byte;
        if (buffer_len_ == 64) {
            transform(buffer_);
            bitlen_ += 512;
            buffer_len_ = 0;
        }
    }
}

void Sha256::update(std::string_view data) noexcept {
    update(std::span<const std::uint8_t>{
        reinterpret_cast<const std::uint8_t*>(data.data()), data.size()});
}

Sha256Digest Sha256::finalize() noexcept {
    const std::uint64_t total_bits = bitlen_ + static_cast<std::uint64_t>(buffer_len_) * 8;

    // Append 0x80 then zero-pad until length ≡ 56 (mod 64).
    buffer_[buffer_len_++] = 0x80;
    if (buffer_len_ > 56) {
        while (buffer_len_ < 64) buffer_[buffer_len_++] = 0;
        transform(buffer_);
        buffer_len_ = 0;
    }
    while (buffer_len_ < 56) buffer_[buffer_len_++] = 0;

    // Big-endian length in bits.
    for (int i = 7; i >= 0; --i) {
        buffer_[buffer_len_++] = static_cast<std::uint8_t>((total_bits >> (i * 8)) & 0xff);
    }
    transform(buffer_);

    Sha256Digest digest{};
    for (int i = 0; i < 8; ++i) {
        digest[i * 4 + 0] = static_cast<std::uint8_t>((state_[i] >> 24) & 0xff);
        digest[i * 4 + 1] = static_cast<std::uint8_t>((state_[i] >> 16) & 0xff);
        digest[i * 4 + 2] = static_cast<std::uint8_t>((state_[i] >> 8) & 0xff);
        digest[i * 4 + 3] = static_cast<std::uint8_t>(state_[i] & 0xff);
    }
    reset();
    return digest;
}

Sha256Digest sha256(std::span<const std::uint8_t> data) noexcept {
    Sha256 h;
    h.update(data);
    return h.finalize();
}

Sha256Digest sha256(std::string_view data) noexcept {
    return sha256(std::span<const std::uint8_t>{
        reinterpret_cast<const std::uint8_t*>(data.data()), data.size()});
}

Sha256Digest hmac_sha256(std::span<const std::uint8_t> key,
                         std::span<const std::uint8_t> message) noexcept {
    constexpr std::size_t kBlock = 64;
    std::array<std::uint8_t, kBlock> k0{};

    if (key.size() > kBlock) {
        const auto kh = sha256(key);
        std::copy(kh.begin(), kh.end(), k0.begin());
    } else {
        std::copy(key.begin(), key.end(), k0.begin());
    }

    std::array<std::uint8_t, kBlock> ipad{}, opad{};
    for (std::size_t i = 0; i < kBlock; ++i) {
        ipad[i] = static_cast<std::uint8_t>(k0[i] ^ 0x36);
        opad[i] = static_cast<std::uint8_t>(k0[i] ^ 0x5c);
    }

    Sha256 inner;
    inner.update(std::span<const std::uint8_t>{ipad.data(), ipad.size()});
    inner.update(message);
    const auto inner_digest = inner.finalize();

    Sha256 outer;
    outer.update(std::span<const std::uint8_t>{opad.data(), opad.size()});
    outer.update(std::span<const std::uint8_t>{inner_digest.data(), inner_digest.size()});
    return outer.finalize();
}

Sha256Digest hmac_sha256(std::span<const std::uint8_t> key,
                         std::string_view message) noexcept {
    return hmac_sha256(key, std::span<const std::uint8_t>{
        reinterpret_cast<const std::uint8_t*>(message.data()), message.size()});
}

bool constant_time_equals(std::span<const std::uint8_t> a,
                          std::span<const std::uint8_t> b) noexcept {
    if (a.size() != b.size()) return false;
    std::uint8_t diff = 0;
    for (std::size_t i = 0; i < a.size(); ++i) {
        diff = static_cast<std::uint8_t>(diff | (a[i] ^ b[i]));
    }
    return diff == 0;
}

} // namespace sdep::crypto

// --- C-style SAL-annotated boundary API ------------------------------------

extern "C" void
sdep_hmac_sha256(_In_reads_bytes_(key_len) const std::uint8_t* key,
                                           std::size_t         key_len,
                 _In_reads_bytes_(msg_len) const std::uint8_t* message,
                                           std::size_t         msg_len,
                 _Out_writes_all_(32)      std::uint8_t*       out_digest) noexcept {
    const auto digest = sdep::crypto::hmac_sha256(
        std::span<const std::uint8_t>{key, key_len},
        std::span<const std::uint8_t>{message, msg_len});
    std::memcpy(out_digest, digest.data(), digest.size());
}

extern "C" int
sdep_constant_time_equals(_In_reads_bytes_(a_len) const std::uint8_t* a,
                                                  std::size_t         a_len,
                          _In_reads_bytes_(b_len) const std::uint8_t* b,
                                                  std::size_t         b_len) noexcept {
    return sdep::crypto::constant_time_equals(
        std::span<const std::uint8_t>{a, a_len},
        std::span<const std::uint8_t>{b, b_len}) ? 1 : 0;
}
