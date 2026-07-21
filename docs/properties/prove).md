# prove)

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### KS1 — Activate Latch Monotone

── Cryptol properties (design-level corollaries, provable by :prove) ──
KS1: the isActive latch is monotone — activate never clears an
already-active key, regardless of which key id is presented.

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_isActive) <= 1) ==>
(keyStoreActivatePost pre kid @ ks_off_isActive)
>= (pre @ ks_off_isActive)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`

**Involved:** [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### KS2 — Success Implies Active

KS2: a successful Success result implies the key is active afterwards,
and AlreadyActive implies it was active before (and stays active).

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_isActive) <= 1) /\ ((pre @ ks_off_engaged) <= 1) ==>
(keyStoreActivateRet pre kid == AC_Success_b ==>
(keyStoreActivatePost pre kid @ ks_off_isActive) == 1) /\
(keyStoreActivateRet pre kid == AC_AlreadyActive_b ==>
(keyStoreActivatePost pre kid @ ks_off_isActive) == 1)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`, `keyStoreActivateRet`

**Involved:** [`AC_AlreadyActive_b`](../functions/AC_AlreadyActive_b.md), [`AC_Success_b`](../functions/AC_Success_b.md), [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md), [`keyStoreActivateRet`](../functions/keyStoreActivateRet.md), [`ks_off_engaged`](../functions/ks_off_engaged.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### KS3 — Only Is Active Changes

KS3: activate only ever touches the isActive byte — every other byte
of the object image is preserved (frame condition). Stated as: the
slice before byte 128 and the slice after byte 128 are both carried
through unchanged.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(take`{128} (keyStoreActivatePost pre kid) == take`{128} pre) /\
(drop`{129} (keyStoreActivatePost pre kid) == drop`{129} pre)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`

**Involved:** [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md)

### KS4 — Io Failure No Effect

KS4: IoFailure (no key / wrong key) leaves isActive completely
unchanged — a failed activation has no side effect on the flag.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(keyStoreActivateRet pre kid == AC_IoFailure_b) ==>
(keyStoreActivatePost pre kid @ ks_off_isActive)
== (pre @ ks_off_isActive)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreActivatePost`, `keyStoreActivateRet`

**Involved:** [`AC_IoFailure_b`](../functions/AC_IoFailure_b.md), [`keyStoreActivatePost`](../functions/keyStoreActivatePost.md), [`keyStoreActivateRet`](../functions/keyStoreActivateRet.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### PROV1 — Tofu Frame

── Cryptol properties (provable by :prove) ───────────────────────────
PROV1: TOFU frame condition — provisioning into an already-engaged
store is a no-op on the object image (the existing key is never
overwritten).

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_engaged) == 1) ==>
(keyStoreProvisionPost pre nk == pre)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md), [`ks_off_engaged`](../functions/ks_off_engaged.md)

### PROV2 — Fresh Key Inactive

PROV2: a freshly provisioned key is always stored INACTIVE — provision
alone never produces an active credential.

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_engaged) == 0) ==>
((keyStoreProvisionPost pre nk @ ks_off_isActive) == 0)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md), [`ks_off_engaged`](../functions/ks_off_engaged.md), [`ks_off_isActive`](../functions/ks_off_isActive.md)

### PROV3 — Fresh Engages

PROV3: provisioning into an empty store engages it (sets the optional
flag), so a subsequent provision hits the TOFU lock.

<details><summary>Formal property (Cryptol)</summary>

```haskell
((pre @ ks_off_engaged) == 0) ==>
((keyStoreProvisionPost pre nk @ ks_off_engaged) == 1)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md), [`ks_off_engaged`](../functions/ks_off_engaged.md)

### PROV4 — Returned Key Inactive

PROV4: the returned key (fresh path) is itself inactive — the caller
receives a provisional, not-yet-usable credential.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(keyStoreProvisionRet pre nk @ ek_off_isActive) == 0
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionRet`

**Involved:** [`ek_off_isActive`](../functions/ek_off_isActive.md), [`keyStoreProvisionRet`](../functions/keyStoreProvisionRet.md)

### PROV5 — Mutex Preserved

PROV5: provision never touches the mutex bytes (object offsets 0..79),
on either path — the lock region is carried through verbatim.

<details><summary>Formal property (Cryptol)</summary>

```haskell
take`{80} (keyStoreProvisionPost pre nk) == take`{80} pre
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `keyStoreProvisionPost`

**Involved:** [`keyStoreProvisionPost`](../functions/keyStoreProvisionPost.md)

