# Override Specifications and Havoc Modeling

Pretty much all testing requires establishing some sort of boundary and mocking things outside it. After all, you probably don't want your tests relying on the network or making real updates to your database, right?

Override specs are how SAW verification defines this boundary. `saw-spec-gen` helps generate these override specifications using an approach based on Murphy's law: if it can go wrong, it will.

## What an Override Is

An override tells SAW to use a contract in place of a callee body while verifying a caller.

Two common cases:

- Proved override: contract obtained from a prior proof (`llvm_verify ... [ov] ...`). 
- Assumed override: trusted contract bound with `llvm_unsafe_assume_spec`. 

Using a proven override is common in compositional verification. It's analogous to injecting a mock of an object which itself has unit tests, so you can verify your business logic. This is the approach I'd recommend for testing complex code.

`llvm_unsafe_assume_spec` is like injecting a mock but not testing the object you rely on. This is fine most of the time. You probably don't want to write unit tests for `std::string` -- you just assume it works so you can move on with your day.


Example:

```saw
// Proved helper contract
hmac_ov <- llvm_verify m "hmacSha256" [] false hmac_spec z3;
llvm_verify m "authenticate" [hmac_ov] false authenticate_spec z3;

// Assumed helper contract
ov_helper <- llvm_unsafe_assume_spec m "helper" helper_spec;
llvm_verify m "authenticate" [ov_helper] false authenticate_spec z3;
```

## Havoc Overrides

Now for the Murphy's law part. Let's say I call an external function `foo`:

```cpp
int foo();
```

What should I assume about foo? What can calling it do to the provability of my codebase?

The obvious: it may return any valid signed 32-bit integer value.

We model this in saw-spec-gen by allowing SAW to pick any return value it wants:

```saw
let foo_havoc_spec = do {
    // No parameters to set up.

    llvm_execute_func [];

    // Return value is havoced: the solver may pick ANY 32-bit value.
    foo_ret <- llvm_fresh_var "foo_ret" (llvm_int 32);
    llvm_return (llvm_term foo_ret);
};

ov_foo <- llvm_unsafe_assume_spec m "foo" foo_havoc_spec;
```

But wait, it gets worse. In C++, functions can have side effects.

Along with returning any int, foo can also modify any global mutable state. Now, I know you are all good little devs who don't have any `G_CONFIG_PATH` values in your code anywhere, but a lot of codebases do. And remember, singletons are still shared state.

So to correctly model what foo may do to you, we now also need to apply havoc to any global mutable vars:

```saw
let foo_havoc_spec = do {
    // No parameters to set up.

    llvm_execute_func [];

    // foo may scribble over any reachable global: give it a fresh value.
    g_config_after <- llvm_fresh_var "g_config_after" (llvm_int 32);
    llvm_points_to (llvm_global "G_CONFIG_PATH") (llvm_term g_config_after);

    foo_ret <- llvm_fresh_var "foo_ret" (llvm_int 32);
    llvm_return (llvm_term foo_ret);
};

ov_foo <- llvm_unsafe_assume_spec m "foo" foo_havoc_spec;
```

If any later verified behavior relies on your global not being modified, the proof can no longer be SAT.

If foo happened to be a member of a class, then it can modify any member of that class (provided it is non-const). saw-spec-gen models this by allowing SAW to pick any post value for any class member after a non-const call.

And if foo accepts pointers as inputs, they aren't safe either:

```cpp
int foo(char* path);
```

After a call to `foo`, we can't trust that `path` still contains the same value:

```saw
let foo_havoc_spec = do {
    path_ptr <- llvm_alloc (llvm_array 256 (llvm_int 8));

    llvm_execute_func [path_ptr];

    // The buffer foo was handed is now untrusted: clobber every byte.
    path_after <- llvm_fresh_var "path_after" (llvm_array 256 (llvm_int 8));
    llvm_points_to path_ptr (llvm_term path_after);

    foo_ret <- llvm_fresh_var "foo_ret" (llvm_int 32);
    llvm_return (llvm_term foo_ret);
};
```

This obviously makes it challenging to verify much of anything, so feel free to modify auto-generated override specs to pinky-promise they won't break things... just know the risk you are taking. Remember, even `printf` can modify memory!

### How saw-spec-gen decides what to havoc

You don't have to write all of that by hand. saw-spec-gen decides which parameters to clobber automatically, using whatever read-only evidence the source gives it:

- `const` parameters and SAL `_In_*` annotations mean the memory is preserved.
- SAL `_Out_*`, SAL `_Inout_`, and plain mutable parameters mean the memory is havoced.
- On a mutable non-const method, even `this` is treated as fully havoced object state.

The rule of thumb: if the type system or a SAL annotation *proves* something is read-only, it's left alone; everything else gets the fresh-symbolic treatment shown above.

## Virtual Dispatch and Stub Binding

For interface methods, `saw-spec-gen` emits stub-based bindings in a generated `interface_overrides.saw`:

```saw
ov_ivalidator_validate_stub <-
  llvm_unsafe_assume_spec m "ivalidator_validate_stub" ivalidator_validate_stub_havoc;
```

This makes vtable dispatch hit a stub symbol whose contract is the havoc spec.

Devirtualized direct calls are intentionally not overridden by default; commented-out lines are emitted so you can opt in if you want to force havoc for direct calls too.

## Bitcode-Derived Extern Overrides

Overrides for external symbols discovered from bitcode are emitted with conservative adversarial semantics:

- call arguments are symbolic,
- pointer pointees are havoced conservatively (often byte-level when pointee width is unknown),
- only globals proven to be written by that callee are clobbered.

This balances two opposite failure modes:

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

When sub-callee overrides are present, there is a caveat worth remembering: if helper returns are modeled as fresh symbolic values, you should thread those symbolic values into the top-level postcondition when attempting full compositional functional correctness claims.

## Practical Interpretation

The strongest claim from an override-based proof is always conditional on the override contracts themselves.

- Proved overrides preserve an end-to-end proof chain.
- Assumed overrides introduce trusted assumptions that must be tracked in the final claim.
