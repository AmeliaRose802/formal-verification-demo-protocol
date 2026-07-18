# One-pager: verifying stateful methods (the R3 gap)

**Tool:** saw-spec-gen · **Status:** corrected / partially implemented · **Motivating gap:** `KeyStore::provision` / `KeyStore::activate`

## The gap in one sentence

saw-spec-gen **can** express stateful methods today, but this repo's real
`KeyStore` methods still are not verified because their concrete STL layout and
lock/override behavior make the generated proof path fail on this specific
implementation surface.

## Why this matters here

The whole point of `KeyStore` is the state machine, not a return value:

```text
[No Key] --provision--> [Provisional] --activate--> [Active]   (sealed)
```

From `cpp/src/key_store.cpp`, the object's entire state is one member:

```cpp
std::optional<EnrollmentKey> key_;   // guarded by mu_
```

and the two transitions read **and write** it:

```cpp
std::optional<EnrollmentKey> KeyStore::provision(EnrollmentKey newKey) {
    if (key_.has_value() && key_->isActive) return std::nullopt; // P1: never overwrite Active
    if (key_.has_value())                   return std::nullopt; // TOFU: never overwrite Provisional
    newKey.isActive = false;
    key_ = std::move(newKey);
    return key_;
}

ActivationResult KeyStore::activate(const Uuid& keyId) {
    if (!key_.has_value())        return ActivationResult::IoFailure;
    if (key_->keyId != keyId)     return ActivationResult::IoFailure;
    if (key_->isActive)           return ActivationResult::AlreadyActive; // P1
    key_->isActive = true;                                                // the mutation
    return ActivationResult::Success;
}
```

The property we want to machine-check is **relational over the pre/post heap**:

> For all reachable states *s*, `activate` never produces a state where a key
> that *was* `isActive` becomes not-active; and `provision` never overwrites a
> key that *was* `isActive`.

`provisionKey` (the **decision** function, already ✅ proven) captures the
*pure* truth table — given booleans `keyIsActive`, etc., what outcome should
result. But it is given `keyIsActive` as an **input**; it never demonstrates
that the real object's stored `isActive` bit actually obeys the transition. That
last mile — "the stored state evolves as the truth table says" — is the R3 gap.

## What SAW and saw-spec-gen can already do

SAW's LLVM frontend natively supports stateful contracts. A hand-written spec
looks like:

```saw
let activate_spec = do {
    this <- llvm_alloc (llvm_struct "class.sdep::KeyStore");
    // PRE-state: a provisional key is present
    isActive_pre <- llvm_fresh_var "isActive_pre" (llvm_int 8);
    llvm_points_to (llvm_field this "key_.isActive") (llvm_term isActive_pre);
    llvm_precond {{ isActive_pre == 0 }};            // start Provisional
    keyId <- llvm_alloc_readonly ...;

    llvm_execute_func [this, keyId];

    // POST-state: the stored bit is now set, and the return code agrees
    llvm_points_to (llvm_field this "key_.isActive") (llvm_term {{ 1 : [8] }});
    llvm_return (llvm_term {{ `ActivationResult_Success }});
};
```

and the dual *negative* spec asserts that from `isActive_pre == 1` the method
**leaves the bit set** and returns `AlreadyActive`. SAW verifies both against the
real bitcode. **The prover handles this fine** — there is no missing SAW
capability here.

More importantly, saw-spec-gen now supports this general stateful shape too:
model the object/`this` pointer as a writable region using the existing
out-buffer / post-state machinery, so the generated contract allocates the
region, captures a pre-state value, executes the method, and asserts the
post-state via a Cryptol post function.

## What is still needed for this repo

The generic stateful-spec capability exists. What remains is the repo-specific
last mile:

1. **Member-layout resolution for the real object.** Map `KeyStore::key_`
  (`std::optional<EnrollmentKey>`) to concrete field offsets. The
  `optional<EnrollmentKey>` engaged-flag + payload is the same STL-layout
  problem as R2, so in practice the first cut should target a **plain-struct
  state** (e.g. a `struct { bool present; bool isActive; Uuid id; }`), or a
  `-O1` build where the optional is inlined to byte stores — the same
  workaround already used for `getStatus` / `enforceAccess`.

2. **A convenient way to package the dual obligation.** For an irreversibility
  invariant, we still want the matched pair automatically: the *forward*
  transition spec **and** the *no-revert* spec from the already-Active
  precondition. This is now an ergonomics/authoring improvement, not a missing
  foundational capability.

## Blockers found when the proof was actually attempted (updated Jul 2026)

The general pre/post spec shape is already supported. But the real demo repros
still expose follow-on issues after generation succeeds.

Current status of the historical blocker list:

- **status primitive success-sentinel override:** fixed in current local build;
  `_Mtx_lock` / `_Mtx_unlock` overrides are emitted and applied.
- **spurious vtable-stub path:** fixed in current local build; no longer the
  first blocker on `activate`.
- **mutex ownership-level helper path:** still a real blocker for
  `activate` / `hasKey` / `isActive`.
- **`std::optional<EnrollmentKey>` return/layout handling:** still a real
  blocker for `current` / `provision`.
- **`memcmp` interior-pointer modeling:** not yet re-hit in the current repros,
  because the mutex ownership-level failure fires first on `activate`.

A WIP harness
(`cpp/saw/_ks_probe/`) that hand-wrote that spec and ran SAW against the real
`key_store.bc` exposed three further generator gaps — all about what happens when
SAW *executes the body*, which the lock-guarded `activate` does on every path
(`std::scoped_lock lock(mu_);`). None are SAW-prover limitations; each is a
missing piece of saw-spec-gen's **override generation**.

1. **Pin declare-only status primitives to a success sentinel.**
   `bitcode_overrides.rs` emits `_Mtx_lock` / `_Mtx_unlock` overrides with a
   *fresh symbolic* `[32]` return. The solver picks `rv = -1`, so
   `_Mutex_base::lock` takes its error path → `_Throw_Cpp_error` → LLVM
   `unreachable` → the subgoal fails. The generator needs a curated "return the
   success sentinel" rule for known status primitives (`0` = `_Thrd_success`),
   or a sidecar flag to pin a declare-only override's return value.

  **Current status:** fixed in the current local build; the generated proof
  now applies `_Mtx_lock` / `_Mtx_unlock` overrides successfully.

1. **Abstract *defined* STL wrappers as no-op `assume_spec`s.** `std::scoped_lock`'s
   ctor (`??0?$scoped_lock@...`) and dtor are **defined** in the bitcode, so the
   extern-override scan never replaces them. SAW steps into the ctor →
   `mutex::lock()` → `_Verify_ownership_levels` does a memory load on
   uninitialized symbolic mutex storage → "Error during memory load." The
   generator has no notion of "treat this *defined* STL helper as an abstract
   no-op." It needs an **opt-in override list for defined functions**
  (e.g. `--assume-noop ??0?$scoped_lock@...`) so the lock/unlock pair becomes
  memory-neutral, matching the modeling assumption that the mutex bytes are
  opaque.

  **Current status:** still a real blocker in changed form. The current repro
  gets past `_Mtx_lock/_Mtx_unlock` overrides but still fails inside the
  defined helper `?_Verify_ownership_levels@_Mutex_base@std@@IEAA_NXZ` with an
  `Error during memory load`.

1. **A faithful `memcmp` model that matches interior pointers.** The id check
   `key_->keyId != keyId` lowers to `Uuid::operator==` → `std::array<u8,16>::==`
   → `std::equal` → `memcmp`, which is declare-only and gets a fresh return. For
   the id-match subgoal the C++ result must equal the Cryptol `ksIdMatch` (byte
   equality of `[80..96)` vs `keyId`). The generator needs a `memcmp` override
   returning `0` iff the two buffers are equal — and crucially it must match
  **interior pointers** (the stored `Uuid` lives at `this+80`, not at the head
  of an allocation), which is the genuinely hard part of SAW override matching.

  **Current status:** not yet re-confirmed as the first live blocker in the
  latest repros, because the proof fails earlier in `_Verify_ownership_levels`.

The current repros refine that story:

- `activate`, `hasKey`, and `isActive` are presently blocked first by mutex
  ownership-level modeling.
- `current` and `provision` are presently blocked first by unsupported
  `std::optional<EnrollmentKey>` type/return handling.

So the two still-live families are mutex-helper abstraction and heterogeneous
`std::optional` layout/return support.

## Suggested scope (smallest useful step)

Wire the existing stateful-method support through a concrete `KeyStore` proof
configuration that, given:

- the method symbol (`KeyStore::activate`),
- a model file exposing `activate_pre` / `activate_post` over a declared
  `KeyState` record, and
- a `--state-struct class.sdep::KeyStore` layout hint,

emits a SAW script that allocates `this`, constrains the pre-state members from
`activate_pre`, runs the method, and asserts the post-state members and return
value from `activate_post`. Prove it against `key_store_o1.bc` (optional inlined,
per the existing `-O1` workaround). Ship the `KeyStore` P1 pair as the first
fixture.

## Definition of done

- `KeyStore::activate` carries a ✅ **Proven** badge for *both* the
  Provisional→Active transition **and** the Active→Active no-revert case,
  verified against real bitcode — not the pure `provisionKey` truth table alone.
- `KeyStore::provision`'s "never overwrite Active / never overwrite Provisional"
  guards are proven the same way.
- The generator path is general enough that any non-`const` mutating method with
  a declared pre/post model gets a stateful spec without bespoke hand-written
  proof scaffolding for the stateful part.
- For a proof against the **real mutex-guarded body** (not the lock-free
  `-O1` plain-struct fixture), the generator also auto-supplies the three
  override pieces from §"Blockers found": success-sentinel lock primitives,
  no-op `scoped_lock` ctor/dtor, and an interior-pointer `memcmp` — so no
  hand-edited override list is needed.

## Honest caveats

- **Concurrency is out of scope.** The real `KeyStore` is mutex-guarded; SAW
  verifies the *sequential* transition. The "no two threads race the
  provision/activate window" claim (G30) is a separate argument and must not be
  implied by this proof.
- **Optional/STL layout is the practical blocker (R2), not the spec form.** The
  stateful spec is straightforward; getting SAW to see through
  `std::optional`'s engaged flag at `-O0` is the same heap-types wall. The
  `-O1`-inlined-state workaround keeps this tractable for the demo but should be
  documented as a modeling assumption, not hidden.
- **The lock plumbing is a separate wall from the spec form (items 5–7).** Even
  with a perfect pre/post spec, SAW won't get through `activate`'s body until the
  `scoped_lock` / `_Mtx_*` / `memcmp` overrides are generated. The WIP harness in
  `cpp/saw/_ks_probe/` is the reproduction; it stays untracked until the
  generator can emit those overrides rather than relying on a hand-massaged
  `verify.saw`.
