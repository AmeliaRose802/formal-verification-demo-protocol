# Type Constraint Generation

This page explains how `saw-spec-gen` derives and emits type constraints, and how those constraints appear in generated SAW scripts.

## Why Type Constraints Are Needed

Machine representations often admit more bit patterns than the source-level type allows.

Examples:

- `enum class E : u8 { A, B, C }` occupies 8 bits, but only values `0..2` are valid.
- `Option<T>`/`Result<T, E>` tags are modeled as small discriminants.
- Struct fields that are enums inherit enum constraints recursively.

Without these constraints, SAW explores impossible states and may produce spurious counterexamples.

## Constraint Derivation Pipeline

At a high level:

1. Parse source types and annotations (`TypeInfo`, SAL, mutability).
2. Derive `SpecConstraint` objects (`constraints/derive.rs`).
3. Attach parameter preconditions (`ParamConstraint.preconditions`) and return postconditions (`ReturnConstraint.value_constraints`).
4. Emit constraints into generated SAW/MIR scripts.

Key files in `saw-spec-gen`:

- `src/constraints/types.rs`
- `src/constraints/value_clauses.rs`
- `src/constraints/derive.rs`
- `src/parsers/clang_ast/sal.rs`
- `src/emit/saw_emit/verify_script_steps.rs`

## Value-Set Constraints (`value_clauses`)

`src/constraints/value_clauses.rs` generates Cryptol expressions for inhabited-value restrictions.

Representative behavior:

- scalar full-domain types (`Bool`, ints, pointers, raw byte arrays) => no clause,
- enums => `var <= max_variant`,
- options/results => tag constraint,
- structs => recurse into constrained fields.

Example snippet from that module:

```rust
TypeInfo::Enum { variants, discriminant_bits, .. } if !variants.is_empty() => {
    let max = variants.len() as u64 - 1;
    out.push(format!("{var_name} <= ({max} : [{bits}])", bits = discriminant_bits));
}
```

These expressions are wrapped as:

- `llvm_precond {{ ... }}` for parameters,
- `llvm_postcond {{ ... }}` for return values.

## SAL-Driven Constraints

`src/parsers/clang_ast/sal.rs` parses SAL `AnnotateAttr` forms into internal annotations such as:

- `_In_reads_(N)` => `Annotation::InReads(N)`
- `_Out_writes_(N)` => `Annotation::OutWrites(N)`
- `_In_reads_(paramName)` => `Annotation::InReadsParam(paramName)`
- `_Out_writes_(paramName)` => `Annotation::OutWritesParam(paramName)`

In `derive.rs`, parameter-reference forms are bounded with a default max length (`DEFAULT_PARAMREF_MAX_LEN = 16`) and a generated precondition such as:

```text
llvm_precond {{ (buf_len : [64]) <= 16 }}
```

This keeps symbolic buffers finite while preserving an explicit bound in the proof contract.

## FreshVar vs Pointer Constraints

In `derive.rs`, type constraints from `value_clauses` are emitted for `FreshVar` parameters directly.

That means enum-like scalar parameters often get explicit range preconditions.

Generated example from this repository (`cpp/saw/out_enrollDevice/verify.saw`):

```saw
authResult <- llvm_fresh_var "authResult" (llvm_int 8);
llvm_precond {{ authResult <= (2 : [8]) }};
activationResult <- llvm_fresh_var "activationResult" (llvm_int 8);
llvm_precond {{ activationResult <= (2 : [8]) }};
```

For pointer parameters, generated scripts rely on allocation shape and points-to constraints, plus SAL-derived comments/bounds when available.

## Unsized Buffer Guardrails

If a pointer-like parameter lacks size annotations, `derive.rs` emits explicit TODO comments warning that a one-element allocation may be wrong for buffer semantics.

Generated example (`cpp/saw/out_getStatus/verify.saw`):

```saw
// TODO[saw-spec-gen]: pointer parameter `keyId` has no size annotation.
//   No obvious length-companion parameter was found.
//   The auto-spec allocates a single element, which is almost certainly wrong
```

This is an intentional “loud failure mode” to avoid silently unsound assumptions.

## Emission into SAW and MIR

For LLVM-mode scripts, `verify_script_steps.rs` emits precondition lines as-is from the derived list.

For MIR-mode scripts, `mir_spec.rs` maps `llvm_precond`/`llvm_postcond` to `mir_precond`/`mir_postcond`.

So the same derived constraints drive both backends with backend-specific wrappers.

## Practical Boundaries

Type constraints improve precision, but they are still only as strong as extracted type information and annotations.

Common limitations to watch:

- missing SAL on pointer buffers,
- enums with non-contiguous explicit discriminants (unless fully captured),
- aliasing or deep pointer-shape assumptions not expressible from signatures alone.

For high-assurance targets, review generated preconditions directly in each `verify.saw` and tighten them where needed.
