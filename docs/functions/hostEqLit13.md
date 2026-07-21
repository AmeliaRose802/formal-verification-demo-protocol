# `hostEqLit13`  `internal helper`

### Signature

**Parameters**
- `host`: [32][8]
- `lit`: [13][8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[32][8] -> [13][8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
hostEqLit13 host lit = and [ asciiLower (host @ i) == asciiLower (lit @ i)
                             | i <- ([0 .. 12] : [13][8]) ]
```

Compares computed and provided values over `host` and `lit`, returning `True` on match.

