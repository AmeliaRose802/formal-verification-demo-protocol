# Exception Lowering and Verification Boundaries

This page explains how C++ exception handling is transformed into ordinary control flow so SAW-based verification can reason about it.

The implementation discussed here comes from the companion project [llvm-exception-lower](https://github.com/AmeliaRose802/llvm-exception-lower), and the harness integration is implemented in [saw-spec-gen](https://github.com/AmeliaRose802/saw-spec-gen).

## Why Lower Exceptions

Raw LLVM exception constructs (`invoke`, `landingpad`, `catchswitch`, funclets, personality handlers) are difficult to model directly in many symbolic-execution workflows.

The lowering pass rewrites EH into explicit flag-and-branch logic:

- throw sites set module globals describing in-flight exception state,
- former `invoke` sites become `call` plus an `.ehcheck` branch,
- catch dispatch becomes typed `icmp` branching over canonicalized type descriptors.

This produces IR that is much closer to ordinary CFG reasoning.

## Non-Lowered IR Example

The following excerpt (Windows/MSVC EH) is from `add_one_multi_catch.cpp` before lowering:

```llvm
; Function Attrs: mustprogress noinline optnone uwtable
define dso_local i32 @add_one(i32 noundef %0) #0 personality ptr @__CxxFrameHandler3 {
...
8:
  invoke void @_CxxThrowException(ptr %4, ptr @"_TI1?AUHarmlessTag@@") #2
          to label %28 unwind label %13
...
13:
  %14 = catchswitch within none [label %15, label %22] unwind to caller

15:
  %16 = catchpad within %14 [ptr @"??_R0?AUHarmlessTag@@@8", i32 8, ptr null]
  %17 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_09GKHPPLMP@harmless?6?$AA@") [ "funclet"(token %16) ]
  catchret from %16 to label %18
```

## Lowered IR Example

After running `exception-lower`, the same function contains explicit globals and branches:

```llvm
@__exclow_error_flag = internal global i1 false
@__exclow_error_typeinfo = internal global ptr null
@__exclow_error_value = internal global ptr null
@"__exclow.td.?AUHarmlessTag@@" = internal constant i8 0, align 1
@"__exclow.td.?AUHarmfulTag@@" = internal constant i8 0, align 1

define dso_local i32 @add_one(i32 noundef %0) #0 {
...
8:
  store ptr @"__exclow.td.?AUHarmlessTag@@", ptr @__exclow_error_typeinfo, align 8
  store ptr %4, ptr @__exclow_error_value, align 8
  store i1 true, ptr @__exclow_error_flag, align 1
  br label %.ehcheck
...
13:
  %exclow.ti = load ptr, ptr @__exclow_error_typeinfo, align 8
  %exclow.match = icmp eq ptr %exclow.ti, @"__exclow.td.?AUHarmlessTag@@"
  br i1 %exclow.match, label %14, label %exclow.catch.next
...
.ehcheck:
  %exclow.err = load i1, ptr @__exclow_error_flag, align 1
  br i1 %exclow.err, label %13, label %25
```

## Source-Level Lowering Mechanics

In `llvm-exception-lower/ExceptionLowerPass.cpp`, key transformations include:

1. Synthesizing module-level error-state globals.

```cpp
constexpr StringRef kInFlightFlagName   = "__exclow_error_flag";
constexpr StringRef kThrownTypeInfoName = "__exclow_error_typeinfo";
constexpr StringRef kThrownValuePtrName = "__exclow_error_value";
```

2. Rewriting `invoke` into `call` plus an `.ehcheck` block that branches on the in-flight flag.

```cpp
Value *InFlight = EHBuilder.CreateLoad(Type::getInt1Ty(Ctx),
                                       State.inFlightFlag, kErrFlagLabel);
EHBuilder.CreateCondBr(InFlight, UnwindDest, NormalDest);
```

3. Lowering typed catch dispatch to direct type comparisons.

```cpp
%exclow.match = icmp eq ptr %exclow.ti, @"__exclow.td.<type-tag>"
```

4. Stripping funclet operand bundles after funclet lowering, since those bundles are dead/no-longer-valid in the lowered shape.

## SAW Harness Integration in saw-spec-gen

Lowered EH introduces globals that are not visible in Clang AST extraction, so SAW harness generation must add them explicitly.

In `saw-spec-gen/src/transform/eh_globals.rs`, `inject_exclow_globals` detects lowered IR and inserts:

- `__exclow_error_flag` (`TypeInfo::Bool`, initialized to `0`),
- `__exclow_error_typeinfo` (`ptr`),
- `__exclow_error_value` (`ptr`).

The comment in that source captures why zero-initializing the flag matters: `.ehcheck` branches on it, so leaving it unconstrained would permit spurious exception paths in non-throwing executions.

## Where Overrides Enter

Exception lowering itself is a control-flow rewrite, not an override. Overrides are still needed at verification boundaries:

- virtual calls modeled by havoc contracts,
- external/foreign calls modeled via assume-specs,
- instrumentation intrinsics such as `llvm.var.annotation.p0.p0` modeled by no-op overrides.

Representative no-op override emitted by `verify_script_steps.rs`:

```saw
let var_annotation_spec = do {
    p1 <- llvm_fresh_pointer (llvm_int 8);
    p2 <- llvm_fresh_pointer (llvm_int 8);
    p3 <- llvm_fresh_pointer (llvm_int 8);
    line <- llvm_fresh_var "line" (llvm_int 32);
    p4 <- llvm_fresh_pointer (llvm_int 8);
    llvm_execute_func [p1, p2, p3, llvm_term line, p4];
};
ov_var_annotation <- llvm_unsafe_assume_spec m "llvm.var.annotation.p0.p0" var_annotation_spec;
```

## Practical Boundary Statement

For lowered exception paths, the strongest defensible claim is:

- the verification script reasons over the lowered CFG semantics,
- plus any explicit override assumptions included in the harness,
- under the stated preconditions and memory model.

It does not automatically prove properties about code outside that modeled boundary.

## Reproducing the Snippets

The before/after snippets above were produced from `llvm-exception-lower/tests/add_one_multi_catch.cpp` by:

1. Compiling to LLVM IR with exceptions enabled.
2. Running `exception-lower`.
3. Inspecting the resulting IR for `invoke`/`catchswitch` (before) and `__exclow_*`/`.ehcheck`/`icmp eq` dispatch (after).
