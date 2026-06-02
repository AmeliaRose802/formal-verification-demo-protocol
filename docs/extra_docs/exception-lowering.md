# Exception Lowering and Verification Boundaries

This page explains how C++ exception handling is transformed into ordinary control flow so SAW-based verification can reason about it.

The implementation discussed here comes from the companion project [llvm-exception-lower](https://github.com/AmeliaRose802/llvm-exception-lower), and the harness integration is implemented in [saw-spec-gen](https://github.com/AmeliaRose802/saw-spec-gen).

## Why Lower Exceptions

SAW does not currently natively support verifying code with exceptions, which is a problem because pretty much all production C++ has exceptions (think you're safe? Don't forget that even making a new string can throw on out of memory).

To work around this, saw-spec-gen bakes in an exception lowering pass which converts exception operators into normal control flow. This approach lets you reason about the flow of programs that throw and catch exceptions.

However, like many quick and dirty, good enough hacks has some downsides and gaps as well. When you verify lowered code, you are not verifying your real production code and there is no true guarantee they will be equalivent.

These tools also don't yet handle catching and throwing dervived class exceptions, stackunwinding, or nested exceptions. 

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


## Reproducing the Snippets

The before/after snippets above were produced from `llvm-exception-lower/tests/add_one_multi_catch.cpp` by:

1. Compiling to LLVM IR with exceptions enabled.
2. Running `exception-lower`.
3. Inspecting the resulting IR for `invoke`/`catchswitch` (before) and `__exclow_*`/`.ehcheck`/`icmp eq` dispatch (after).
