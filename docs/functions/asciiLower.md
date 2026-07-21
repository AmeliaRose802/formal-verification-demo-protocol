# `asciiLower`  `internal helper`

### Signature

**Parameters**
- `c`: [8]

**Returns**
- [8]

<details><summary>Raw signature</summary>

`[8] -> [8]`

</details>

### Formal definition (Cryptol)

```haskell
asciiLower c = if c >= 0x41 /\ c <= 0x5A then c + 32 else c
```

URL host canonicalization — LLVM: (ptr host, i8 hostLen) -> i8
Mirrors cpp/src/decision.cpp::classifyCanonicalHost. The function
lowercases ASCII host bytes, rejects userinfo-smuggling (`@`) in the
consumed prefix, and classifies common aliases for IMDS / WireServer.

