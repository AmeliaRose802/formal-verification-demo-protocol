# One-pager: heterogeneous structs (the last stateful blocker)

**Tool:** saw-spec-gen · **Status:** open gap (workaround exists) · **Motivating gap:** `KeyStore::activate` / `provision` over `std::optional<EnrollmentKey>`

This is the sequel to [03-stateful-method-specs.md](03-stateful-method-specs.md).
Once the mutex plumbing was pinned (saw-spec-gen PR #54, the success-sentinel
override for `_Mtx_lock`/`_Mtx_unlock`), the *only* thing still standing between
us and a real implementation-level proof of `KeyStore::activate` is the **shape
of the object it mutates**.

## The gap in one sentence

The out-buffer machinery allocates an object as **one uniform shape** (`N`
bytes, `iW`, or `NxiW`), but a **heterogeneous** struct interleaves fields of
different widths and alignment padding, so no single uniform allocation matches
every access the compiled body makes — the `i64` store to one field collides
with the `i8`-array cell the allocation gave it, and SAW aborts with `Error
during memory load`.

## What "heterogeneous" means here

A struct is heterogeneous when its members do **not** share one access width.
The demo's `EnrollmentKey` (from [cpp/include/sdep/request.hpp](../../cpp/include/sdep/request.hpp))
is the canonical example:

```cpp
struct EnrollmentKey {
    Uuid          keyId;      // 16 bytes  (std::array<uint8_t,16>) — byte lanes
    std::array<uint8_t,32> secret;  // 32 bytes — byte lanes
    bool          isActive;   //  1 byte   — byte lane
    std::int64_t  createdAt;  //  8 bytes  — ONE i64 word, 8-byte aligned
};
```

The `KeyStore` holds it as `std::optional<EnrollmentKey> key_` (see
[cpp/src/key_store.cpp](../../cpp/src/key_store.cpp)), which adds an **engaged
flag** byte plus **alignment padding** so the whole object stays 8-byte aligned.
The resulting layout mixes:

- 49 bytes of byte-granular fields (`keyId` + `secret` + `isActive`),
- padding bytes with no source-level name,
- one 8-byte `i64` field (`createdAt`) the body loads/stores as a single word,
- the optional's engaged/discriminant byte.

## Why SAW's typed memory model rejects it

SAW (Crucible-LLVM) has a **typed** memory model: an allocation's cell type must
match the type of every load/store that touches it.

| `--out-buffer-param` SHAPE | SAW allocation              | What it satisfies                      |
|----------------------------|-----------------------------|----------------------------------------|
| `N`                        | `llvm_array N (llvm_int 8)` | byte-granular access only              |
| `iW`                       | `llvm_int W`                | one wide scalar of exactly width `W`   |
| `NxiW`                     | `llvm_array N (llvm_int W)` | a homogeneous array of width-`W` cells |
| `auto`                     | front-end inferred pointee  | whatever the parser inferred           |

Every one of these is **homogeneous**. Pick `N` (byte array) and the `createdAt`
field's single `i64` store fails to type-check against the `i8` cells. Pick
`8xi64` and the byte-granular `isActive`/`keyId` accesses fail against the `i64`
cells. There is no uniform shape that is simultaneously an `i8` lane *and* an
`i64` word, so the whole-object allocation can never match a mixed-width body.

## The missing capability

A faithful allocation for a heterogeneous struct is a **struct-typed** region
with per-field cells:

```
ks_ptr <- llvm_alloc (llvm_struct "struct.EnrollmentKey");   // NOT emitted today
```

`llvm_alloc (llvm_struct ...)` gives each field its own correctly-typed cell, so
the `i64` `createdAt` store and the `i8` `isActive` store both type-check. SAW
supports this natively; **saw-spec-gen's out-buffer path does not yet emit it** —
`--out-buffer-param` only knows the four uniform shapes above. That is the whole
of the gap.

## Why the single-byte model still passes

The stateful proof we *can* run today (the `key_store` fixture behind
[03-stateful-method-specs.md](03-stateful-method-specs.md)) models the object as
a **single homogeneous `isActive` byte** — the one field the P1 invariant
(*Active is irreversible*) actually turns on. It never touches `createdAt`, never
allocates the padding, and never sees the optional's engaged flag. It proves the
state-machine transition, not the full 49-plus-padding-plus-`i64` byte image. The
mutex around it is separately handled by the success-sentinel overrides — so with
PR #54 the mutex is no longer the blocker; the heterogeneous **struct layout** is.

## Workarounds available today

1. **`-O1` inlining.** Building the target at `-O1` frequently collapses
   `std::optional`'s engaged-flag machinery and small-field accesses into plain
   byte stores, letting a byte-array (`N`) shape model the object. This is the
   same `-O1`-inlined-state trick already used elsewhere in this repo for the
   `std::optional` / `scoped_lock` paths.
2. **Byte-lane split.** Where the body only ever touches the byte-granular fields
   (`keyId`, `secret`, `isActive`), model just those bytes with an `N` shape and
   leave the `i64`/padding out of the transition being proven — exactly what the
   single-byte latch model does.
3. **Hand-written struct spec.** Drop to a hand-authored `.saw` that uses
   `llvm_alloc (llvm_struct "...")` and per-field `llvm_points_to`, then compose
   it in. Sound and complete, but outside the generator (so it does **not** count
   toward auto-generated coverage — tag it `@coverage abstraction` accordingly).

## Definition of done (to close the gap in-tool)

- `--out-buffer-param NAME=struct:<LLVMTypeName>` (or an inferred struct shape)
  emits `llvm_alloc (llvm_struct <name>)` with per-field cells.
- The paired `--cryptol-fn-out` post-state model addresses fields by offset/name
  rather than a flat byte image.
- A mixed `uint8` + `int64` fixture proves end-to-end (verified + disproved), so
  the real `KeyStore::activate` over `std::optional<EnrollmentKey>` earns a
  ✅ **Proven** badge without the `-O1` / byte-lane caveats — and the
  `keyStoreActivate*` Cryptol helpers can drop their `@coverage abstraction`
  tags in favor of an implementation-level proof.

## Honest caveats

- This gap is **layout-only**, not a prover limitation: SAW handles struct-typed
  allocations fine; the generator just doesn't emit them yet.
- The `-O1` and byte-lane workarounds are **modeling assumptions**, not full
  proofs of the whole object — they must be documented as such wherever a badge
  is claimed, so a single-byte latch proof is never read as covering `createdAt`,
  the secret, or the optional's engaged flag.
- Padding bytes are genuinely un-modellable as source-level values; a faithful
  struct spec leaves them unconstrained (fresh) rather than pinning them.
