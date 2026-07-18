# One-pager: unverified stateful key-store functions

**Status:** open · **Audience:** repo maintainers · **Group:** stateful object methods / mutex-guarded transitions

## Current blocker update (2026-07-09)

A direct native run through `saw-spec-gen verify-cpp` was executed for
multiple `KeyStore` methods using the current local saw-spec-gen build.

All five methods currently fail verification in this flow (none are proven):

- `activate`: `DISPROVED`
- `hasKey`: `DISPROVED`
- `isActive`: `DISPROVED`
- `current`: `UNKNOWN`
- `provision`: `UNKNOWN`

Observed results:

- `activate` reaches SAW proof obligations and fails at mutex ownership-level
   modeling: `_Verify_ownership_levels` → `Error during memory load`.
- `hasKey` and `isActive` fail at the same `_Verify_ownership_levels` surface.
- `current` and `provision` fail earlier with:
   `unsupported type: %"std::optional<EnrollmentKey>"` /
   `Unknown type alias Ident "std::optional<EnrollmentKey>"`.

So the current blocker split is now clear:

- **stateful support:** working in general,
- **vtable-stub issue:** no longer the first blocker,
- **mutex ownership modeling:** still a real blocker for `activate`/`hasKey`/
   `isActive`,
- **heterogeneous `std::optional<EnrollmentKey>` return/layout handling:**
   still a real blocker for `current`/`provision`.

See:

- `design/pretty-specs/08-activate-mutex-ownership-levels-bug.md`
- `design/pretty-specs/17-keystore-mutex-ownership-modeling-blocker.md`
- `design/pretty-specs/18-keystore-optional-enrollmentkey-layout-blocker.md`

## Functions in this group

These implementation functions are currently not verified against the model:

- `sdep::KeyStore::provision`
- `sdep::KeyStore::activate`
- `sdep::KeyStore::hasKey`
- `sdep::KeyStore::isActive`
- `sdep::KeyStore::current`

Source file:

- `cpp/src/key_store.cpp`

Related design notes already in this repo:

- `03-stateful-method-specs.md`
- `07-activate-vtable-stub-failure.md`
- `08-activate-mutex-ownership-levels-bug.md`
- `17-keystore-mutex-ownership-modeling-blocker.md`
- `18-keystore-optional-enrollmentkey-layout-blocker.md`

## Why this group is not verified today

These functions are still unverified, but the reason is no longer that
saw-spec-gen lacks general support for stateful methods. It does support
stateful pre/post-style contracts. The remaining blockers here are
demo-specific: concrete `std::optional<EnrollmentKey>` layout/return handling,
mutex/lock plumbing, and a few override details in the real `KeyStore` body.

These functions do still share the same semantic shape: they are not pure
input-output functions. Their main meaning is in how they mutate stored object
state.

That means the relevant contract is not:

> `f(args) == model(args)`

It is:

> given a pre-state of the object, the call returns the right result and leaves
> the object in the right post-state.

That stateful contract shape is already supported in saw-spec-gen. The real gap
for this repo is getting the generated/stateful contract through this specific
implementation surface cleanly.

## Why accessors belong in the same bucket

`hasKey`, `isActive`, and `current` are read-only, but they still depend on the
same concrete object layout and mutex-guarded optional state as `provision` and
`activate`. They are simpler proofs, but not a different problem family.

## What makes this group harder than the decision functions

1. The meaning lives in object state, not just return values.
2. The state is stored inside `std::optional<EnrollmentKey>`.
3. The methods all acquire a lock, so the proof surface includes mutex-related
   plumbing even though the intended claim is sequential.

That is why the repo already has several sub-issue notes for this family: the
spec form, STL layout, vtable-stub fallout, and mutex ownership-level behavior
are all facets of the same stateful-method challenge.

## What would verify this group

1. A wired-up stateful pre/post spec over the concrete `KeyStore` object
   memory.
2. Layout support for the actual key-store state representation, especially the
   `std::optional<EnrollmentKey>` storage/return shape.
3. A clean strategy for treating the mutex/lock layer as sequential plumbing
   rather than the thing being proved.

Once those exist, `activate` and `provision` become meaningful top-level
targets, and the accessors become easy follow-on proofs over the same state
model.

## Recommendation

Treat all five KeyStore methods as one verification campaign, not as unrelated
individual functions. `activate` and `provision` define the state transition;
`hasKey`, `isActive`, and `current` are simply observers over that same state.

## Acceptance criteria

1. `activate` and `provision` have stateful pre/post proofs against real
   implementation code.
2. The sequential proof claim is explicit and does not overclaim concurrency.
3. The accessors are proved against the same object-state model.
4. The docs state clearly that stateful methods are supported by saw-spec-gen in
   general, and that the remaining blockers are keystore-specific.
5. The docs refer to this as one stateful-method group and link the existing
   sub-issue notes as implementation blockers.
