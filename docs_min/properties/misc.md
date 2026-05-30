# Miscellaneous

### P — Authenticate Is And

Authenticate is and: asserts the expected outcome for all `dv`, `sv`, and `cv`.

**Involved:** [`authenticate`](../SDEP_min/functions/authenticate.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
authenticate dv sv cv == (dv && sv && cv)
```

</details>

