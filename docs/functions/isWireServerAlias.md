# `isWireServerAlias`  `internal helper`

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
isWireServerAlias host hostLen =
       (hostLen == 13 /\ hostEqLit13 host "168.63.129.16")
    \/ (hostLen == 10 /\ hostEqLit10 host "2822734096")
    \/ (hostLen == 10 /\ hostEqLit10 host "0xa83f8110")
    \/ (hostLen == 18 /\ hostEqLit18 host "[::ffff:a83f:8110]")
```

Checks whether the wire server alias is valid by comparing the computed and expected values.

