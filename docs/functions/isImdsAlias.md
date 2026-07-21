# `isImdsAlias`  `internal helper`

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
isImdsAlias host hostLen =
       (hostLen == 15 /\ hostEqLit15 host "169.254.169.254")
    \/ (hostLen == 10 /\ hostEqLit10 host "2852039166")
    \/ (hostLen == 10 /\ hostEqLit10 host "0xa9fea9fe")
    \/ (hostLen == 18 /\ hostEqLit18 host "[::ffff:a9fe:a9fe]")
```

Checks whether the imds alias is valid by comparing the computed and expected values.

