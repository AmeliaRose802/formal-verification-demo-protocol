# Override Specifications and Havoc Modeling

This page documents how override specifications work in this project, with emphasis on the `saw-spec-gen` generation strategy and verification boundaries.

## What an Override Is

An override tells SAW to use a contract in place of a callee body while verifying a caller.

Two common cases:

- Proved override: contract obtained from a prior proof (`llvm_verify ... [ov] ...`).
- Assumed override: trusted contract bound with `llvm_unsafe_assume_spec`.

Illustrative contrast:

```saw
// Proved helper contract
hmac_ov <- llvm_verify m "hmacSha256" [] false hmac_spec z3;
llvm_verify m "authenticate" [hmac_ov] false authenticate_spec z3;

// Assumed helper contract
ov_helper <- llvm_unsafe_assume_spec m "helper" helper_spec;
llvm_verify m "authenticate" [ov_helper] false authenticate_spec z3;
```

## How `saw-spec-gen` Generates Havoc Overrides

In `saw-spec-gen/src/emit/saw_emit/havoc.rs`, parameter behavior is classified using a strict-priority policy:

- `const` and SAL `_In_*` imply preserved memory.
- SAL `_Out_*`, SAL `_Inout_`, and mutable parameters imply havoced memory.
- For mutable non-const methods, `this` may be treated as fully havoced object state.

Core decision shape (`resolve_param_behavior`):

```rust
if type_says_const || sal_says_readonly {
    return HavocBehavior::Preserved;
}
if sal_says_writable {
    return HavocBehavior::Havoced;
}
```

Generated havoc specs are adversarial by design: writable memory receives fresh symbolic post-state values. Example from generated fixture output (`tests/e2e/.../IValidator_validate_havoc_spec.saw`):

```saw
// Parameter: val (mutable -> HAVOCED)
val_ptr <- llvm_alloc (llvm_int 32);
...
val_after <- llvm_fresh_var "val_after" (llvm_int 32);
llvm_points_to val_ptr (llvm_term val_after);
```

## Virtual Dispatch and Stub Binding

For interface methods, `saw-spec-gen` emits stub-based bindings in generated `interface_overrides.saw`:

```saw
ov_ivalidator_validate_stub <-
  llvm_unsafe_assume_spec m "ivalidator_validate_stub" ivalidator_validate_stub_havoc;
```

This makes vtable dispatch hit a stub symbol whose contract is the havoc spec.

In `saw-spec-gen/src/emit/saw_emit/overrides.rs`, devirtualized direct calls are intentionally not overridden by default; commented lines are emitted to opt in if you want to force havoc for direct calls too.

## Bitcode-Derived Extern Overrides

In `saw-spec-gen/src/emit/saw_emit/bitcode_overrides.rs`, overrides for external symbols discovered from bitcode are emitted with conservative adversarial semantics:

- call arguments are symbolic,
- pointer pointees are havoced conservatively (often byte-level when pointee width is unknown),
- only globals proven to be written by that callee are clobbered.

The source documents two opposite regressions this avoids:

- too little havoc can cause false proofs,
- too much havoc can cause false disprovals.

## What Is and Is Not Overridden in This Demo

For core SDEP equivalence scripts in this repository, generated `llvm_verify` calls for target functions typically pass an empty override list (`[]`).

That means those checks are direct function-level equivalence over loaded module bodies.

Overrides are still used in other contexts, for example:

- interface/vtable modeling,
- external/foreign functions,
- instrumentation intrinsics (for example, no-op modeling of `llvm.var.annotation.p0.p0`).

## Compositional Caveat

When sub-callee overrides are present, generated scripts include a TODO in `verify_script_steps.rs`: if helper returns are modeled as fresh symbolic values, users should thread those symbolic values into the top-level postcondition when attempting full compositional functional correctness claims.

## Practical Interpretation

The strongest claim from an override-based proof is always conditional on the override contracts themselves.

- Proved overrides preserve an end-to-end proof chain.
- Assumed overrides introduce trusted assumptions that must be tracked in the final claim.
