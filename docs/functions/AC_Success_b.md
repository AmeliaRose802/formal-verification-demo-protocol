# `AC_Success_b`  📄

> 📄 **Spec-only.** This definition lives in the Cryptol model on purpose — typically as a gap-exhibiting reference function — and has **no production implementation**.

### Formal definition (Cryptol)

```haskell
AC_Success_b         = 0 : [8]
```

ActivationResult — types.hpp declares Success, AlreadyActive, IoFailure.
Note: SDEP.cry uses the same ordering, so AC_*_b = AC_*.

### Related Properties
- [P16 — Authenticated Enrollment Succeeds](../properties/protocol-liveness.md#p16--authenticated-enrollment-succeeds)
- [P22 — Activation Io Failure Is Internal Error](../properties/error-handling.md#p22--activation-io-failure-is-internal-error)
- [KS2 — Success Implies Active](../properties/prove).md#ks2--success-implies-active)

