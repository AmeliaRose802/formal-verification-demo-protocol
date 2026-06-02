# Verification findings

Concrete defects and tool-limitation gaps surfaced by the demo_protocol
verification pipeline. Each entry is something the implementation, the
spec, or one of the proof tools got wrong — recorded so the next round
of verification doesn't re-discover them and so we can argue, with
evidence, that verification produced value beyond paper review.

Pipeline: `verify_all.ps1`
- Layer 0: C++ unit tests (Catch2-style, 118 cases)
- Layer 1: SAW proves C++ LLVM IR ≡ `cpp/saw/SDEP_cpp.cry`
- Layer 2: SAW proves Rust LLVM IR ≡ `rust/saw/SDEP_rust.cry`
- Layer 3: Cryptol/Z3 proves 29 properties about `cpp/saw/SDEP_cpp.cry`
- Layer 4: Cryptol/Z3 *finds* counterexamples for known gap properties

---

## 1. `isValidRequestDate` — signed-overflow UB on adversary-controlled timestamp

**Status:** Found by SAW Layer 1 on 2026-05-30. Fixed.
**Severity:** Real UB, reachable from the wire.
**Files:**
[cpp/include/sdep/auth.hpp](cpp/include/sdep/auth.hpp#L17-L45),
[cpp/saw/SDEP_cpp.cry](cpp/saw/SDEP_cpp.cry#L131-L150)

### What SAW found

While checking `?isValidRequestDate@sdep@@YA_N_J00@Z` against the Cryptol
shim `isValidRequestDate_cpp`, SAW's path-condition tracker hit:

```
Undefined behavior encountered
Details:
  Poison value created
  Signed subtraction caused wrapping even though the `nsw` flag was set
----------Counterexample----------
  requestTimestamp: 9223372036856935500   (≈ INT64_MIN as signed)
  currentTime:      9223372036854775806   (= INT64_MAX − 1)
----------------------------------
```

(`9223372036856935500` is bigger than `INT64_MAX = 9223372036854775807`
so SAW is showing the unsigned bit pattern of a large-magnitude
**negative** `int64_t` — roughly `INT64_MIN + 2_159_693`.)

### Root cause

The original implementation was:

```cpp
return requestTimestamp <= currentTime
    && (currentTime - requestTimestamp) <= windowSeconds;
```

With both operands `std::int64_t`, the subtraction `currentTime − requestTimestamp`
is signed and Clang/MSVC emit it with the `nsw` (no-signed-wrap) flag
under standard C++ rules. If `requestTimestamp` is near `INT64_MIN` and
`currentTime` is positive then:

- The short-circuit check `requestTimestamp <= currentTime` is **true**
  (very negative ≤ very positive), so the second clause **does** execute.
- `currentTime − requestTimestamp` mathematically exceeds `INT64_MAX`
  and wraps. The compiler is entitled to assume that never happens.
- Result: the function may return `true` for a request whose timestamp
  is essentially "as long ago as it is possible to express", silently
  letting in a request that should be rejected.

`requestTimestamp` is the timestamp field on a `DeviceRequest` — i.e.
adversary-controlled — so this is a real authentication bypass primitive,
not a theoretical one.

### Fix

Reject the negative half of the input space up front. With both
non-negative and `requestTimestamp ≤ currentTime`, the subtraction is in
`[0, currentTime] ⊆ [0, INT64_MAX]` and provably cannot wrap:

```cpp
[[nodiscard]] constexpr bool
isValidRequestDate(std::int64_t requestTimestamp,
                   std::int64_t currentTime,
                   std::int64_t windowSeconds = kDefaultDateWindowSeconds) noexcept {
    if (requestTimestamp < 0 || currentTime < 0 || windowSeconds < 0) {
        return false;
    }
    return requestTimestamp <= currentTime
        && (currentTime - requestTimestamp) <= windowSeconds;
}
```

The Cryptol shim `isValidRequestDate_cpp` was updated to mirror the
guard, so the equivalence proof now goes through for **all** i64 inputs.
Properties `P17_TimestampAtBoundaryAccepted` and
`P18_TimestampBeyondBoundaryRejected` continue to pass — their stated
preconditions already excluded negative timestamps, and the new
implementation simply makes that exclusion an explicit `false` return
rather than UB.

### Why hand review missed it

The naive form is what you would write in any code review:
"comparison + difference ≤ window". Both clauses look like ordinary
signed integer arithmetic. The bug only manifests on inputs that no
test would ever choose by hand because *they're not valid timestamps* —
which is precisely the adversarial input model. Z3, asked to find
*any* `int64_t` that satisfies `nsw`-violation, picked it instantly.

### Value-of-verification summary

This is the case study to point at when someone asks "what did we
actually get out of running SAW?" — a wire-reachable UB in 4 lines of
"obviously correct" header code, caught not by a fuzzer, not by code
review, not by 118 unit tests, but by symbolic execution on the LLVM
IR with a Cryptol equivalence model.

---

## 2. `getStatus` — saw-spec-gen does not detect MSVC sret aggregate return

**Status:** Open. saw-spec-gen bug, worth filing.
**Files:**
[cpp/include/sdep/decision.hpp](cpp/include/sdep/decision.hpp) (return type),
auto-generated [cpp/saw/out_getStatus/verify.saw](cpp/saw/out_getStatus/verify.saw)

### What SAW reported

```
Type mismatch in argument 0 when verifying
  "?getStatus@sdep@@YA?AUEnrollmentStatus@1@_N00AEBUUuid@1@@Z"
Argument is declared with type: ptr
but provided argument has incompatible type: i1
```

### Root cause

`sdep::getStatus` returns an `EnrollmentStatus` struct by value.
The mangling `?AUEnrollmentStatus@1@` in the symbol confirms a
struct return. On the MSVC x64 ABI, aggregates above a certain size
(or containing non-trivial members like the nested `Uuid`) are returned
via a hidden `sret` pointer that is **inserted as argument 0**. The
actual LLVM signature is therefore:

```
declare void @"?getStatus..."(ptr sret(EnrollmentStatus),    // hidden arg 0
                              i1 fleetEnabled,
                              i1 hasKey,
                              i1 keyIsActive,
                              ptr Uuid)
```

The auto-generated `verify.saw` puts the *first source-level argument*
(`fleetEnabled`, i1) into LLVM arg position 0. saw-spec-gen does have
sret handling (commit `a57513b saw_emit/gen_verify: sret aggregate returns,
container-class this, ctor filtering`), but it isn't firing for this
return type — most likely because `EnrollmentStatus` contains a nested
struct (`Uuid`) and the detector doesn't recurse, or because it's
matching on the textual form of the source return type rather than the
mangled-name evidence of sret-ness.

### Workaround

None applied in-tree. A hand-rolled `verify.saw` for `getStatus` would
allocate the sret buffer, pass it as arg 0, then `llvm_points_to` after
execute. We have not written that override because (a) the property
proofs about `getStatus_cpp` go through at the Cryptol layer, and
(b) we want to give the saw-spec-gen authors a clean reproducer.

### Suggested upstream fix

When emitting argument bindings for a function whose LLVM signature
has `sret` on parameter 0, insert an allocated buffer of the return
type as that argument and move the original Cryptol equivalence into
an `llvm_points_to` postcondition on that buffer (instead of an
`llvm_return`). The same logic should apply per-target whether or not
the return type happens to contain a nested struct.

---

## 3. `canonicalize_lp` — saw-spec-gen cannot size pointer buffers from runtime parameters

**Status:** Open. saw-spec-gen feature gap.
**Files:**
[cpp/include/sdep/canonical_lp.hpp](cpp/include/sdep/canonical_lp.hpp),
auto-generated [cpp/saw/out_canonicalize_lp/verify.saw](cpp/saw/out_canonicalize_lp/verify.saw),
parser [`saw-spec-gen/src/parsers/clang_ast/sal.rs`](https://github.com/AmeliaRose802/saw-spec-gen)

### What SAW reported

The generated `verify.saw` allocates each pointer as a 1-byte buffer
and passes a single `[8]` for each, then calls
`canonicalize_lp_post out m nm b nb`. The Cryptol shim expects
`[4][8]` arrays (fixed-bound MAX_LEN=4 model) and the right argument
order, so Cryptol fails type-checking:

```
Expected type: [8]
Inferred type: Bit
Expected type: 4
Inferred type: 8
```

### Root cause

The C++ signature is

```cpp
std::size_t canonicalize_lp(std::uint8_t* out,
                            const std::uint8_t* m, std::uint8_t nm,
                            const std::uint8_t* b, std::uint8_t nb);
```

The buffer lengths are conveyed at runtime via the `nm`/`nb` arguments.
saw-spec-gen *does* understand SAL annotations on pointer parameters
(`_In_reads_(n)`, `_Out_writes_(n)`) — they're used successfully on the
HMAC primitives in [cpp/include/sdep/hmac.hpp](cpp/include/sdep/hmac.hpp) —
but the SAL parser in
[`saw-spec-gen/src/parsers/clang_ast/sal.rs`](https://github.com/AmeliaRose802/saw-spec-gen)
only accepts a **decimal integer literal** inside the parentheses:

```rust
fn inner_count(prefix: &str) -> Option<usize> {
    value.strip_prefix(prefix)?
         .strip_suffix(')')?
         .parse::<usize>()
         .ok()
}
```

So `_In_reads_(nm)` — which is the SAL form that names another
parameter — silently produces no `Annotation::InReads`, and the
generator falls back to "raw pointer, no length, allocate 1 byte and
emit `// NOTE: m may be null -- spec assumes non-null`". For a function
whose entire contract is "the length is in another parameter", that
fallback is unusable.

### Past behaviour the user asked about

We checked: saw-spec-gen previously *did not* emit a `// TODO: fill in
buffer length by hand` comment for this case either. The "NOTE: x may
be null -- spec assumes non-null" comment is the only marker, and it's
attached to every unannotated pointer regardless of whether the
function obviously has a length-companion parameter. There is a
`// TODO: Compositional postcondition — fill in by hand.` emit
([`verify_script_steps.rs:336`](https://github.com/AmeliaRose802/saw-spec-gen))
but that fires for sub-callee overrides, not unsized pointers. So the
"more verbose TODO for hand-fix" the user remembered seems to have
been there briefly or was specific to a different code path; either
way, **the current emit is too quiet for unsized pointers** and that
is a separate, fileable saw-spec-gen issue on its own.

### Suggested fixes (file as separate saw-spec-gen issues)

1. **SAL parameter-reference support.** Extend `sal.rs::classify` to
   handle `_In_reads_(<paramName>)` by storing
   `Annotation::InReadsParam(name)`, and have `havoc_params.rs` resolve
   that to "buffer length = the value of the named integer parameter".
2. **Loud TODO for unsized pointers.** When a pointer parameter has
   no length annotation and the function isn't obviously scalar (i.e.
   the pointee size is just 1–8 bytes and `nullptr` is a sensible call
   site), emit:
   ```
   // TODO[saw-spec-gen]: unsized pointer parameter `m` — auto-spec
   // allocated 1 byte. Replace with `_In_reads_(N)` annotation on the
   // C++ declaration, or hand-edit the alloc + llvm_points_to below.
   ```
   Same shape for `_Out_writes_`.
3. **Bounded-buffer Cryptol shim contract.** If the buffer length is a
   runtime value, generated specs currently can't bridge that to a
   compile-time-sized Cryptol input. Either generate a bounded-foreach
   harness (verify the function at every size in `0..=MAX`) or accept
   that variable-length-buffer functions are hand-spec territory.

### Current workaround

For canonicalize_lp specifically, the existing Cryptol property `P24`
proves the bounded model is injective at `nm,nb ≤ MAX_LEN`, and we
intend to ship a hand-rolled `cpp/saw/custom/canonicalize_lp.saw` that
binds `MAX_LEN=4` and proves the C++ matches it byte-for-byte. That
file is referenced in [cpp/include/sdep/canonical_lp.hpp](cpp/include/sdep/canonical_lp.hpp#L12-L15)
but is not yet checked in; the auto-spec route is not viable here.

---

## Layer 1 current status (2026-05-30)

| Target              | Verdict   | Notes |
|---------------------|-----------|-------|
| `authenticate`      | VERIFIED  | |
| `provisionKey`      | VERIFIED  | (Bug B fix, saw-spec-gen 2071230) |
| `enrollDevice`      | VERIFIED  | (Bug B fix) |
| `enforceAccess`     | VERIFIED  | (Bug B fix) |
| `isValidRequestDate`| VERIFIED  | After §1 fix |
| `getStatus`         | FAIL      | §2 — saw-spec-gen sret detection miss |
| `canonicalize_lp`   | FAIL      | §3 — needs SAL paramref or hand spec |

**Layers 2/3/4:** Rust 6/6 VERIFIED, Cryptol 29/29 PASS, Gaps 6/6
counterexamples exhibited as expected.
