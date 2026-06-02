# Protocol Liveness

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P15 — Authorized Request On Inactive Key Succeeds

P15: A valid, authorized provisioning request on an inactive key succeeds.

<details><summary>Formal property (Cryptol)</summary>

```haskell
provisionKey True True KV_Ok_b False == PR_Succeeded_b
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`KV_Ok_b`](../functions/KV_Ok_b.md), [`PR_Succeeded_b`](../functions/PR_Succeeded_b.md), [`provisionKey`](../functions/provisionKey.md)

### P16 — Authenticated Enrollment Succeeds

P16: An authenticated enrollment with a successful activation succeeds.

<details><summary>Formal property (Cryptol)</summary>

```haskell
enrollDevice True True AR_Authenticated_b AC_Success_b == ER_Succeeded_b
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`AC_Success_b`](../functions/AC_Success_b.md), [`AR_Authenticated_b`](../functions/AR_Authenticated_b.md), [`ER_Succeeded_b`](../functions/ER_Succeeded_b.md), [`enrollDevice`](../functions/enrollDevice.md)

### P17 — Timestamp At Boundary Accepted

P17: A timestamp exactly at the window boundary is accepted.
C++ uses std::int64_t with SIGNED comparison; preconditions guard
against signed overflow on the (requestTs + window) calculation.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(window    >=$ 0) ==>
(requestTs >=$ 0) ==>
(requestTs <=$ (0x7FFFFFFFFFFFFFFF - window)) ==>
isValidRequestDate requestTs (requestTs + window) window == True
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`isValidRequestDate`](../functions/isValidRequestDate.md)

### P18 — Timestamp Beyond Boundary Rejected

P18: A timestamp beyond the window boundary is rejected.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(window >=$ 0) ==>
(requestTs <=$ currentTime) ==>
((currentTime - requestTs) >$ window) ==>
isValidRequestDate requestTs currentTime window == False
```

</details>

> ✓ **Implementation equivalence proven.** All 1 involved function(s) have a SAW equivalence proof against the C++/Rust implementation, so this property's guarantee transfers to the compiled code.

**Involved:** [`isValidRequestDate`](../functions/isValidRequestDate.md)

