# SDEP in Action

## The Specification (Cryptol)

One of the advantages of using formal veirifcaiton with SAW is that once you have proven that your code is equlivent to a design specificaiton you can take things a step further and prove that your design holds certain properties.

For example `P1_ActiveKeyCannotBeReactivated` states that if authentication is valid and the key is already active, then `enrollDevice` with `AC_AlreadyActive` must not return `ER_Succeeded`.

```cryptol
property P1_ActiveKeyCannotBeReactivated fleetEnabled validMetadata authResult keyAlreadyActive =
  isAuthResult authResult ==>
    keyAlreadyActive ==>
      enrollDevice fleetEnabled validMetadata authResult AC_AlreadyActive
        != ER_Succeeded
```
 
Practically this means that we cannot enroll devices twice. Using SAW gives us this additional proof for free.  

## Protocol Properties vs Implementation Equivalence

This project uses two distinct proof layers.

1. Protocol-property proofs at the Cryptol level.
2. Implementation-equivalence proofs at the compiled-code level (C++/Rust function equals Cryptol function).

These layers compose:

- If `impl_f(x) == spec_f(x)` for all `x` in scope, and
- A protocol property is proved over `spec_f`,
- Then the same property holds for `impl_f` over that scope.

In practical terms, the `P1_*`, `P2_*`, and related properties express protocol intent, while SAW equivalence scripts establish that selected compiled functions implement the corresponding Cryptol definitions.

## What Is In Scope (and What Is Not)

In scope for these proofs:

- Enumerated decision logic in SDEP functions such as enrollment, provisioning, authentication, and status computation.
- ABI-accurate memory behavior for modeled buffers and returns (for example, `sret` layout in status-returning functions).
- Input-domain constraints encoded as preconditions (for example, enum value ranges).

Out of scope unless separately modeled and verified:

- Unverified functions outside the selected target set.
- External subsystems (network transport, storage, runtime environment).
- Any behavior behind explicitly trusted assumptions, if assumptions are used.

## Bounded Loops

SAW works by symbolically executing code all the way to the end, then handing the resulting formula to Z3. That is great for straight-line decision logic, but it runs into trouble the moment a loop can run an unbounded number of times. If the trip count depends on a symbolic value, there is no single formula to hand off — the symbolic executor would have to unroll the loop forever.

Some of the SDEP functions do have loops. The request canonicalization helpers (the length-prefixed encoders like `canonicalize_lp` and the bounded `encodeLP2`/`encodeRecs` model encoders) walk over input bytes field by field. To verify them we bound the input so the loop has a fixed, finite trip count. Concretely we fix a maximum length `MAX_LEN = K`, and SAW unrolls the loop `K` times into ordinary straight-line code that Z3 can reason about.

The trade-off is that the proof only covers inputs up to that bound. A proof at `MAX_LEN = 16` says nothing about a 17-byte input. So we pick a bound that covers the real protocol's field sizes and treat anything beyond it as out of scope.

The bound also has a real cost. Each extra byte multiplies the work the solver has to do, and the proof time grows fast:

| `MAX_LEN` | Approx. Z3 time |
| --------- | --------------- |
| 4         | seconds         |
| 8         | ~10 seconds     |
| 12        | ~2 minutes      |
| 16        | ~13 minutes     |
| 32        | times out (>25 min) |

A small modeling choice can swing this dramatically. Writing the index arithmetic as a Cryptol modulo (`(i - 1) % 16`) instead of a bit-extract (`drop`\``{4} (i - 1)`) makes Z3 well over ten times faster, because the solver handles the modulo form far more cheaply.

So bounded loops are the practical answer here: we get a real, machine-checked proof of the canonicalization logic, at the price of fixing a maximum input size and accepting that the proof time climbs steeply as that size grows.
