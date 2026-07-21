# `boolOfByte`  `internal helper`

### Signature

**Parameters**
- `b`: [8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
boolOfByte b = (b @ 7) == 1
```

KeyStore read accessors - hasKey and isActive
Both take the lock, read the optional, and return a bool without
mutating the object. hasKey() reports whether a key is engaged;
isActive() reports engaged AND the key's isActive flag.
The implementation materializes C++ bool from stored bytes via i8->i1
truncation in LLVM (low-bit projection), not a strict byte == 1 test.
To match implementation behavior for fully symbolic object images, model
bool fields as low-bit views.

