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

