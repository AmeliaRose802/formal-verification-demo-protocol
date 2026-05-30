# signed max

### P5 — Result Is At Least First Input

The result is at least the first input (signed comparison).

**Involved:** [`pickGreater`](../SDEP_small/functions/pickGreater.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(pickGreater a b >=$ a)
```

</details>

### P6 — Result Is At Least Second Input

The result is at least the second input (signed comparison).

**Involved:** [`pickGreater`](../SDEP_small/functions/pickGreater.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(pickGreater a b >=$ b)
```

</details>

### P7 — Result Is One Of The Inputs

The result is exactly one of the two inputs (never a fresh value).

**Involved:** [`pickGreater`](../SDEP_small/functions/pickGreater.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(pickGreater a b == a) || (pickGreater a b == b)
```

</details>

