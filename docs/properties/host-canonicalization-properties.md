# Host canonicalization properties

> **How to read these verdicts.** A property's ✓ means a solver discharged the logical claim against the **Cryptol model**. That guarantee carries over to the compiled implementation only when every function the property mentions *also* has a SAW equivalence proof — surfaced below each property as an **Implementation equivalence** callout. A green property over a partly-proven function set still tells you the design is sound; it does **not** by itself certify the binary.

### P33 — Imds Aliases Canonicalize

P33: IMDS host aliases all canonicalize to Destination::Imds.

<details><summary>Formal property (Cryptol)</summary>

```haskell
classifyCanonicalHost ("169.254.169.254" # zero : [32][8]) 15 == CH_Imds_b
/\ classifyCanonicalHost ("2852039166"      # zero : [32][8]) 10 == CH_Imds_b
/\ classifyCanonicalHost ("0xa9fea9fe"      # zero : [32][8]) 10 == CH_Imds_b
/\ classifyCanonicalHost ("[::ffff:a9fe:a9fe]" # zero : [32][8]) 18 == CH_Imds_b
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `classifyCanonicalHost`

**Involved:** [`CH_Imds_b`](../functions/CH_Imds_b.md), [`classifyCanonicalHost`](../functions/classifyCanonicalHost.md)

### P34 — Wire Aliases Canonicalize

P34: WireServer host aliases all canonicalize to Destination::WireServer.

<details><summary>Formal property (Cryptol)</summary>

```haskell
classifyCanonicalHost ("168.63.129.16"   # zero : [32][8]) 13 == CH_WireServer_b
/\ classifyCanonicalHost ("2822734096"      # zero : [32][8]) 10 == CH_WireServer_b
/\ classifyCanonicalHost ("0xa83f8110"      # zero : [32][8]) 10 == CH_WireServer_b
/\ classifyCanonicalHost ("[::ffff:a83f:8110]" # zero : [32][8]) 18 == CH_WireServer_b
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `classifyCanonicalHost`

**Involved:** [`CH_WireServer_b`](../functions/CH_WireServer_b.md), [`classifyCanonicalHost`](../functions/classifyCanonicalHost.md)

### P35 — Userinfo Rejected

P35: Userinfo smuggling is rejected before endpoint classification.

<details><summary>Formal property (Cryptol)</summary>

```haskell
classifyCanonicalHost (("attacker@" # tail) : [32][8]) 12 == CH_UserinfoPresent_b
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `classifyCanonicalHost`

**Involved:** [`CH_UserinfoPresent_b`](../functions/CH_UserinfoPresent_b.md), [`classifyCanonicalHost`](../functions/classifyCanonicalHost.md)

### P36 — Empty Or Oversized Unknown

P36: Empty or oversized hosts are treated as Unknown.

<details><summary>Formal property (Cryptol)</summary>

```haskell
(classifyCanonicalHost host 0 == CH_Unknown_b)
/\ (classifyCanonicalHost host 33 == CH_Unknown_b)
```

</details>

> ⚠ **Implementation equivalence is incomplete.** This property holds against the Cryptol model. For the guarantee to carry over to the compiled code, every involved function must also have a SAW equivalence proof.
>
> - ✗ equivalence proof **not yet attempted**: `classifyCanonicalHost`

**Involved:** [`CH_Unknown_b`](../functions/CH_Unknown_b.md), [`classifyCanonicalHost`](../functions/classifyCanonicalHost.md)

