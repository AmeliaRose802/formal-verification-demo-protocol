# `hasUserinfo`  `internal helper`

### Signature

**Parameters**
- `host`: [32][8]
- `hostLen`: [8]

**Returns**
- Bit

<details><summary>Raw signature</summary>

`[32][8] -> [8] -> Bit`

</details>

### Formal definition (Cryptol)

```haskell
hasUserinfo host hostLen =
    or [ (i < hostLen) /\ ((host @ i) == 0x40)
       | i <- ([0 .. 31] : [32][8]) ]
```

Compares computed and provided values over `host` and `hostLen`, returning `True` on match.

