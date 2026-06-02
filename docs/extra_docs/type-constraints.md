# Type Constraint Generation

Most engeneers don't relize that their languages type system is actually a form of proof. When we write a definition like 

```cpp
unsigned short foo()
```

we are asserting a claim enforced by the compiler that foo will only ever return a `unsigned sort`. The compiler simply will not allow it to return float or a long or anything else.

Saw-spec-gen piggy backs on this built in verification to constrain the search space that SAW and Z3 must deal with when proving things.

## Turning Types Into Preconditions

When saw-spec-gen reads a function signature, it turns each parameter's type into a constraint that tells SAW which values are actually possible. The idea is simple: the fewer values SAW has to consider, the smaller the search space Z3 has to chew through and the faster it will exit.

### Rules

- Full-domain scalars (`Bool`, plain ints, pointers, raw bytes) get no extra clause — every bit pattern is already legal.
- Enums get a range bound, like `var <= max_variant`, because only the named variants are valid.
- Options and results get a tag constraint.
- Structs recurse into their fields.

### Enum example 

For an enum parameter, that shows up in the generated script as a fresh variable plus a range precondition. Here is the real output for `enrollDevice`:

```saw
authResult <- llvm_fresh_var "authResult" (llvm_int 8);
llvm_precond {{ authResult <= (2 : [8]) }};
activationResult <- llvm_fresh_var "activationResult" (llvm_int 8);
llvm_precond {{ activationResult <= (2 : [8]) }};
```

Without that `<= 2` bound, SAW would happily explore all 256 byte values for an enum that only has three variants — and any "bug" it found in the other 253 would be meaningless.

> [!WARNING]
> Enum based type constrains assumes you wrote well behaved C++. The language technically lets you cast any value, in range or not, into an enum, so a malformed input could carry an out-of-range tag. Don't do this! Most static analysis tools flag this.

## Bounding Buffers With SAL

Scalars are easy because they have a fixed size. Pointers are not — a `_In_reads_` buffer could be any length. To keep the symbolic buffer finite, saw-spec-gen reads SAL annotations like `_In_reads_(n)` and `_Out_writes_(n)` and turns them into an explicit length bound, defaulting to a max of 16 when the size is given by another parameter:

```text
llvm_precond {{ (buf_len : [64]) <= 16 }}
```

That bound is the same trick as a [bounded loop](sdep-in-action.md) — it keeps the proof finite and writes the assumption down in plain sight instead of hiding it.

## When There Is No Annotation

If a pointer has no size annotation at all, saw-spec-gen does not guess. It allocates a single element and leaves a loud TODO in the generated script for you to fill in:

```saw
// TODO[saw-spec-gen]: pointer parameter `keyId` has no size annotation.
//   No obvious length-companion parameter was found.
//   The auto-spec allocates a single element, which is almost certainly wrong
```

## The Catch

These constraints are only as good as the types and annotations they come from. The usual things to watch for:

- pointer buffers with no SAL,
- enums with non-contiguous discriminants that the bound doesn't fully capture,
- aliasing or deep pointer shapes that a signature alone can't express.

The same derived constraints feed both the LLVM (`llvm_precond`) and Rust MIR (`mir_precond`) backends, so the bounds you read in one `verify.saw` are the bounds that actually held during the proof. For anything high-assurance, read those preconditions and tighten them by hand where the auto-generated ones are too loose.
