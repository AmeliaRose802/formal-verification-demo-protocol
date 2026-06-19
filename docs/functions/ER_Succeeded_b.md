# `ER_Succeeded_b`  ⚠️

> ⚠️ **Implemented, unverified.** This function exists in the codebase but **no machine-checked equivalence proof** has been discharged.

### Formal definition (Cryptol)

```haskell
ER_Succeeded_b       = 0 : [8]
```

EnrollmentResult — { Succeeded, Unauthorized, Disabled, InternalError }

### Related Properties
- [P1 — Active Key Cannot Be Reactivated](../properties/key-lifecycle-safety.md#p1--active-key-cannot-be-reactivated)
- [P16 — Authenticated Enrollment Succeeds](../properties/protocol-liveness.md#p16--authenticated-enrollment-succeeds)
- [P32 — Authenticated Implies Enrolled](../properties/intentional-counterexamples.md#p32--authenticated-implies-enrolled)

