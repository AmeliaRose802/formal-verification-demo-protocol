# SAW and saw-spec-gen

Solvers such as [Z3](https://github.com/Z3Prover/z3) reason over formulas, not source code. To verify C++ and Rust implementations, we need a translation layer from compiled artifacts to solver-friendly constraints.

[Software Analysis Workbench (SAW)](https://saw.galois.com/) provides that layer.

## What SAW Does

SAW symbolically executes compiled code and produces verification conditions for an SMT solver. For background on the execution model, see this [symbolic execution lecture](https://courses.cs.washington.edu/courses/csep590b/26sp/lecture/l07/02-theory/). In this project, the inputs are typically [LLVM bitcode](https://llvm.org/docs/BitCodeFormat.html) for C/C++ and [MIR](https://rustc-dev-guide.rust-lang.org/mir/index.html) for Rust.

Rather than evaluating a function on concrete values, SAW evaluates it on symbolic variables and tracks path conditions, memory effects, and return values. The resulting formulas are discharged by Z3 against the reference properties.

## The Bottleneck: Humans

Manual SAW scripting is precise but labor-intensive. Even small functions may require substantial setup code for memory layout, symbolic inputs, preconditions, and postconditions. That overhead can become the dominant cost in large verification campaigns.

## `saw-spec-gen`

[`saw-spec-gen`](https://github.com/AmeliaRose802/saw-spec-gen) automates much of that setup. It consumes source-level structure (for example, C++ through [Clang AST](https://clang.llvm.org/docs/IntroductionToTheClangAST.html)) and high-level specifications, then generates SAW scripts that connect implementation functions to specification predicates.

The objective is to reduce repetitive harness code while keeping proof obligations explicit and reviewable.

### A Generated SAW Script

The excerpt below is taken from the script `saw-spec-gen` produces for `enrollDevice`
(`cpp/saw/out_enrollDevice/verify.saw`, lightly trimmed). It shows the four steps every
generated equivalence harness follows: declare symbolic inputs, constrain them, run the
compiled function, then assert the result equals the Cryptol reference.

```saw
let enrollDevice_equiv_spec = do {
    // 1. Symbolic inputs (the "unknowns"). C++ `bool` is one bit (i1);
    //    the two enum parameters are one byte (i8).
    fleetEnabled    <- llvm_fresh_var "fleetEnabled"     (llvm_int 1);
    validMetadata   <- llvm_fresh_var "validMetadata"    (llvm_int 1);
    authResult      <- llvm_fresh_var "authResult"       (llvm_int 8);
    activationResult <- llvm_fresh_var "activationResult" (llvm_int 8);

    // 2. Preconditions: each enum only has 3 valid variants (0..2), so
    //    restrict the byte to the inhabited range (see Type Constraint Generation).
    llvm_precond {{ authResult       <= (2 : [8]) }};
    llvm_precond {{ activationResult <= (2 : [8]) }};

    // 3. Execute the matched C++ function on the symbolic inputs.
    llvm_execute_func
        [ llvm_term fleetEnabled, llvm_term validMetadata
        , llvm_term authResult,   llvm_term activationResult ];

    // 4. Postcondition: the C++ return value must equal the Cryptol spec.
    //    `! 0` extracts the single bit of an i1 input as a Cryptol Bool.
    llvm_return (llvm_term
        {{ enrollDevice (fleetEnabled ! 0) (validMetadata ! 0) authResult activationResult }});
};

// Run the prover: empty override list `[]`, discharge with Z3.
llvm_verify m "?enrollDevice@sdep@@YA?AW4EnrollmentResult@1@_N0W4AuthResult@1@W4ActivationResult@1@@Z"
    [] false enrollDevice_equiv_spec z3;
```

The long string passed to `llvm_verify` is the MSVC-mangled symbol name of the C++
`sdep::enrollDevice` function in the bitcode; `saw-spec-gen` resolves it automatically.

In practice, this approach shifts effort from boilerplate harness authoring to specification quality and model accuracy. When a proof fails, the pipeline reports a concrete counterexample suitable for debugging at the implementation level.

## Overrides and Type Constraints

For implementation details that are now in dedicated pages, see:

- [Override Specifications and Havoc Modeling](override-specs.md)
- [Type Constraint Generation](type-constraints.md)

## Exceptions and Lowering

See [Exception Lowering and Verification Boundaries](exception-lowering.md) for a detailed walkthrough of:

- non-lowered vs lowered LLVM IR,
- how exception control flow is rewritten,
- and what extra globals/overrides SAW harnesses must include.

## What Is Overridden in This Repository

For the core SDEP equivalence proofs in this demo project, the generated scripts pass an empty override list (`[]`) to `llvm_verify`. In other words, these checks are direct function-level equivalence proofs over the loaded module bodies.

What is modeled explicitly (and is not an override):

- Input-domain preconditions, such as enum/range constraints.
- Memory setup and shape constraints (for example, pointer allocation and points-to assertions).
- ABI details such as structure returns (`sret`) for functions like `getStatus`.

What would require overrides or assumptions if introduced:

- Calls into external libraries not present in the loaded module.
- Dynamic dispatch boundaries where only interface-level behavior is available.
- System interactions (network, clock, filesystem, hardware) when modeled abstractly.
