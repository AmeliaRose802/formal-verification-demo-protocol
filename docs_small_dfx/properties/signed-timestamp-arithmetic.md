# signed timestamp arithmetic

### P1 — Self In Window Iff Window Nonnegative

At the moment a request arrives (reqTs == now), the request is in-window
iff the window is non-negative. Captures the boundary case exactly.

**Involved:** [`inWindow`](../SDEP_small/functions/inWindow.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
inWindow a a w == (zero <=$ w)
```

</details>

### P2 — Zero Duration Always In Nonnegative Window

A non-negative window always admits a zero-duration request (reqTs == now).

**Involved:** [`inWindow`](../SDEP_small/functions/inWindow.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
(w >=$ 0) ==> inWindow a a w == True
```

</details>

