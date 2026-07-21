# `PR_Succeeded_b`  📄

> 📄 **Spec-only.** This definition lives in the Cryptol model on purpose — typically as a gap-exhibiting reference function — and has **no production implementation**.

### Formal definition (Cryptol)

```haskell
PR_Succeeded_b       = 0 : [8]
```

ProvisionResult — declared in types.hpp as

```text
  { Succeeded, Unauthorized, BadRequest, Disabled, InternalError }.
```

### Related Properties
- [P15 — Authorized Request On Inactive Key Succeeds](../properties/protocol-liveness.md#p15--authorized-request-on-inactive-key-succeeds)

