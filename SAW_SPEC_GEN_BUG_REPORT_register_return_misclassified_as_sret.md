# saw-spec-gen bug report — register return misclassified as sret

**Tool:** `saw-spec-gen gen-verify`
**Branch tested:** `fix/sret-prestate-threading` @ `1d51ac5` (latest sret pre-state threading fixes applied)
**Downstream consumer:** `demo_protocol` (Layer 1, C++17/20 + MSVC ABI, target `x86_64-pc-windows-msvc`)
**Severity:** medium — blocks every small-POD-returning C++ function on MSVC; same "fix once, unblock a category" shape as the comment-stripper / sret-threading fixes already landed on this branch.

---

## TL;DR

`gen-verify` decides "is the return passed via an sret hidden output pointer?" from the **C++ AST** (i.e. "the return type is an aggregate"), not from the **LLVM IR signature**. On MSVC, any trivially-copyable aggregate ≤ 8 bytes comes back **packed in a register** (return type `iN`, no sret attribute, no extra arg). The generated spec then alloc's an output buffer that doesn't exist in the IR, executes the function with a phantom first argument, and writes a post-condition `llvm_points_to` on memory that is never written — SAW correctly rejects it as a type mismatch.

The existing sret-threading fixes (`ef102e4`, `1d51ac5`) live **inside** the "this is an sret function" code path; they don't touch the upstream classification.

---

## Minimal reproducer (demo_protocol::enforceAccess)

### Production source

```cpp
// cpp/include/sdep/types.hpp
struct EnforceOutcome {
    bool allowed;
    bool logged;
    // …trivially copyable, sizeof == 2…
};

// cpp/src/decision.cpp
EnforceOutcome enforceAccess(AccessMode mode, AccessDecision decision);
```

### Cryptol model (already correct)

```cryptol
// cpp/saw/SDEP_cpp.cry
enforceAccess : [8] -> [8] -> [16]
enforceAccess mode decision = …packOutcome…
```

Returns a 16-bit packed value, matching the register-return ABI.

### Actual LLVM IR (clang -emit-llvm -O0 -target x86_64-pc-windows-msvc)

```llvm
define dso_local i16 @"?enforceAccess@sdep@@YA?AUEnforceOutcome@1@W4AccessMode@1@W4AccessDecision@1@@Z"(
    i8 noundef %0, i8 noundef %1) #0 {
  …
  ret i16 %packed
}
```

* Return type: `i16` (register), not `void`.
* Two arguments: `i8`, `i8`. No leading `sret(T)` pointer.
* No `sret` parameter attribute anywhere in the signature.

### Generated spec (saw-spec-gen HEAD `1d51ac5`)

```saw
let enforceAccess_equiv_spec = do {
    mode <- llvm_fresh_var "mode" (llvm_int 8);
    llvm_precond {{ mode <= (2 : [8]) }};
    decision <- llvm_fresh_var "decision" (llvm_int 8);
    llvm_precond {{ decision <= (2 : [8]) }};

    // sret: aggregate return passed via hidden output pointer.
    result_ptr <- llvm_alloc (llvm_array 2 (llvm_int 8));

    llvm_execute_func [result_ptr, llvm_term mode, llvm_term decision];

    // Postcondition (sret): *result_ptr == Cryptol spec
    llvm_points_to result_ptr (llvm_term {{ enforceAccess mode decision }});
};
```

Three things are wrong, all symptoms of the same root cause:

1. Allocates `result_ptr` for a return that doesn't go through memory.
2. Passes three arguments to `llvm_execute_func` for a two-argument IR function.
3. Asserts `llvm_points_to result_ptr (…[16])` — writes a 16-bit Cryptol term into a 2-byte buffer.

### SAW failure

```
=== Checking: enforceAccess == enforceAccess (Cryptol) ===
types not memory-compatible:
[2 x i8]
i16
```

---

## Expected output

```saw
let enforceAccess_equiv_spec = do {
    mode <- llvm_fresh_var "mode" (llvm_int 8);
    llvm_precond {{ mode <= (2 : [8]) }};
    decision <- llvm_fresh_var "decision" (llvm_int 8);
    llvm_precond {{ decision <= (2 : [8]) }};

    llvm_execute_func [llvm_term mode, llvm_term decision];

    llvm_return (llvm_term {{ enforceAccess mode decision }});
};
```

For this case the existing Cryptol model already returns `[16]` (= `iN`-shaped register value), so the post-condition is a direct `llvm_return`. The same classifier should also drive the sret path correctly for the genuinely-sret functions that the recent threading fixes target — those already have `void` returns + `sret(T)` on arg0 in the IR.

---

## Root cause hypothesis

In `gen-verify`, the "is this function sret?" decision is presumably made from clang-AST type info ("`EnforceOutcome` is a `RecordType`, treat as sret"). On the Windows MSVC ABI this is wrong for any small trivially-copyable POD that fits in a register (`bool` pairs, `Result<T,E>` with byte-sized tag + byte-sized payload, `std::pair<bool,int32_t>`, status enums bundled with a flag, etc.). Clang/MSVC will lower those to:

* Return type `iN` where N ∈ {8, 16, 32, 64}, OR
* Return type `{ iA, iB }` (literal struct, still register-passed via two-element return),

and the C++-level argument list is preserved unchanged (no synthesized sret first argument).

The fix needs to read the truth from the LLVM `FunctionType` of the resolved symbol, not from the AST.

---

## Proposed fix

In the gen-verify emitter, after loading the bitcode and resolving the target symbol, branch on the IR signature:

```text
let fty = LLVMGetElementType(LLVMTypeOf(callee));    // function type
let ret = LLVMGetReturnType(fty);

if ret is void:
    if LLVMHasAttribute(arg0, "sret"):
        emit sret-pattern (existing code path — `ef102e4` / `1d51ac5` correctness)
    else:
        emit void-return pattern (no result, post-conditions only on out-pointer params)
else:
    # Direct register/value return (iN, fN, vector, small literal struct, etc.)
    emit:
        llvm_execute_func [<args lowered from real IR arg list>];
        llvm_return (llvm_term {{ <cryptol_call> }});
```

Concretely the diff is:

1. Drop the alloc of `result_ptr`.
2. Drop the leading `result_ptr` from the `llvm_execute_func` argument list.
3. Replace the trailing `llvm_points_to result_ptr (llvm_term …)` with `llvm_return (llvm_term …)`.
4. Continue lowering the rest of the args from the real IR `param_types`, so the count always matches what SAW expects.

The Cryptol-side type (`[16]` for `enforceAccess`) already matches the register-return shape, so no Cryptol changes are needed — the bug is purely in the SAW-script emission.

For literal-struct returns (`{ i64, i64 }` etc., which MSVC uses up to 16 bytes for some types), the same path applies — Cryptol would need to be written as a tuple `(_, _)` and emitted as `llvm_return (llvm_term {{ (a, b) }})`. Probably out of scope for the first cut; just the scalar `iN` case is enough to clear the demo_protocol blocker.

---

## Scope — what else this unblocks

Every small POD return on MSVC. Specifically the patterns that come up constantly in C++ network/protocol code:

* `Result<T,E>` / `Outcome<T,E>` with payloads ≤ 6 bytes
* `std::pair<bool, int32_t>` and friends
* Bit-packed status structs (`bool ok; bool retry; uint16_t code;`)
* Small fixed-width enum-class bundles
* Any custom "(`status`, `value`)" return type that's trivially copyable and small

On the Linux SysV ABI the same classes also tend to come back in `rdx:rax` (two-register return → literal-struct IR), so the same emitter fix carries over once literal-struct support lands.

---

## Why the recent sret-threading fixes don't cover this

For reference, the `1d51ac5` / `ef102e4` series fixed:

* Duplicate `llvm_points_to` on the same `result_ptr` — assumes sret, threading bug.
* Wrong `take`/`drop` offset of the pre-state slice into the post-state — assumes sret, threading bug.
* Cryptol type-parser tripping on inline comments — orthogonal, comment-stripping bug.

All three fixes execute on code paths reached only when the function has **already** been classified as sret. The misclassification reported here happens earlier, in the decision that selects between the sret and non-sret emission templates — so none of those fixes can rescue it.

---

## Suggested verification once fixed

In demo_protocol, regenerating against the patched saw-spec-gen should yield:

```
=== Checking: enforceAccess == enforceAccess (Cryptol) ===
…
=== VERIFIED: enforceAccess == enforceAccess ===
```

with no need for any hand-written `.saw` override and no changes to `cpp/saw/SDEP_cpp.cry`.
