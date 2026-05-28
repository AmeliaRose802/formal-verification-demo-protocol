# Bug report: `llvm_verify_fixpoint` / `llvm_verify_fixpoint_chc` implemented in `SAWCentral` but never registered as SAWScript primitives — unreachable from user scripts

**Repo:** `saw-script` (GaloisInc/saw-script)
**SAW build investigated:** local `saw-script` (HEAD around May 2026, includes `loop-fixpoint` example dir)
**Found by:** A real verification effort on a header‑only C++ function with two byte‑copy loops (`sdep::canonicalize_lp`). Bounded `llvm_verify` works (Z3 ~13.5 min at `MAX_LEN=16`, super‑linear blowup with length). The natural next step — unbounded inductive proof via the simple loop fixpoint — silently isn't available from SAWScript even though the Haskell implementation is sitting right there.
**Severity:** Medium‑High. The intended public API for unbounded LLVM loop reasoning is dead code from a SAWScript user's perspective. The published design doc and example file both describe this API as "not yet implemented", but it actually *is* implemented in `saw-central`; only the interpreter wiring is missing. Net effect: users believe the feature doesn't exist and either give up or fall back to the much more involved `llvm_verify_x86` path.

---

## TL;DR

The two functions

- `SAWCentral.Crucible.LLVM.Builtins.llvm_verify_fixpoint`
- `SAWCentral.Crucible.LLVM.Builtins.llvm_verify_fixpoint_chc`

are fully implemented, exported, and call `verifyMethodSpecWithFixpoint`, which is itself wired through `verifySimulate` to `Lang.Crucible.LLVM.SimpleLoopFixpoint(.simpleLoopFixpoint)` and `Lang.Crucible.LLVM.SimpleLoopFixpointCHC.simpleLoopFixpoint`. **But neither function appears in any `prim "..."` entry in `saw-script/src/SAWScript/Interpreter.hs`.** Only the `_x86` variants are registered. Therefore from SAWScript you can only call:

- `llvm_verify_fixpoint_x86` (machine‑code path, ELF only)
- `llvm_verify_fixpoint_chc_x86` (machine‑code path)
- `llvm_verify_x86_with_invariant` (machine‑code path)

…not the LLVM‑bitcode‑native counterparts that the codebase claims to support.

The doc `doc/developer/loop-fixpoint-llvm-verify.md` is also stale: it labels itself **"Proposed — April 2026"** and says Phase 1 (the LLVM bitcode wiring of `SimpleFixpoint` / `SimpleFixpointCHC`) is yet to be done, even though Phase 1 *is* done.

The fix is small (a few dozen lines in `Interpreter.hs`) and is described concretely below.

---

## Evidence

### 1. Functions are defined and exported in `SAWCentral`

`saw-central/src/SAWCentral/Crucible/LLVM/Builtins.hs`

Module export list:

```haskell
-- lines 34-35
    , llvm_verify_fixpoint
    , llvm_verify_fixpoint_chc
```

Imports:

```haskell
-- lines 163-164
import qualified Lang.Crucible.LLVM.SimpleLoopFixpoint    as Crucible.LLVM.Fixpoint
import qualified Lang.Crucible.LLVM.SimpleLoopFixpointCHC as Crucible.LLVM.FixpointCHC
```

`FixpointSelect` type and the two top‑level functions:

```haskell
-- lines 315-318
data FixpointSelect
  = NoFixpoint
  | SimpleFixpoint    TypedTerm
  | SimpleFixpointCHC TypedTerm

-- lines 322-345  (llvm_verify_fixpoint)
llvm_verify_fixpoint ::
  Some LLVMModule        ->
  Text                   ->
  [SomeLLVM MS.ProvedSpec] ->
  Bool                   ->
  TypedTerm              {- ^ fixpoint function -} ->
  LLVMCrucibleSetupM ()  ->
  ProofScript ()         ->
  TopLevel (SomeLLVM MS.ProvedSpec)
llvm_verify_fixpoint (Some lm) nm lemmas checkSat fixpointFn setup tactic =
  do start <- io getCurrentTime
     lemmas' <- checkModuleCompatibility lm lemmas
     withMethodSpec checkSat lm nm setup $ \cc method_spec ->
       do (stats, vcs, _) <-
            verifyMethodSpecWithFixpoint cc method_spec lemmas' checkSat
              (SimpleFixpoint fixpointFn) tactic Nothing
          ...

-- lines 349-370  (llvm_verify_fixpoint_chc, analogous)
```

Both call `verifyMethodSpecWithFixpoint` (lines 740–757), which threads `FixpointSelect` into `verifySimulate` (line 1792), which actually constructs and installs the fixpoint execution feature:

```haskell
-- lines 1826-1827
SimpleFixpoint func -> do
  f <- Crucible.LLVM.Fixpoint.simpleLoopFixpoint sym cfg mvar $ ...

-- lines 1886-1887
SimpleFixpointCHC func -> withKnownNat ?ptrWidth $ do
  (f, ref) <- Crucible.LLVM.FixpointCHC.simpleLoopFixpoint sym cfg mvar $ Just $ ...
```

So the LLVM‑bitcode fixpoint feature is genuinely available end‑to‑end in `saw-central`.

### 2. SAWScript never exposes them

`saw-script/src/SAWScript/Interpreter.hs` — every `prim "llvm_verify_fixpoint..."` registration matches only the x86 variants:

```
6313:  , prim "llvm_verify_fixpoint_x86"
6316:    (pureVal do_llvm_verify_fixpoint_x86)
6324:  , prim "llvm_verify_fixpoint_chc_x86"
6327:    (pureVal do_llvm_verify_fixpoint_chc_x86)
```

`Select-String -SimpleMatch 'llvm_verify_fixpoint' Interpreter.hs` returns only the two `_x86` entries plus their `do_*` wrappers (lines 2496–2506). There is no `prim "llvm_verify_fixpoint"` and no `prim "llvm_verify_fixpoint_chc"`.

### 3. The shipped example also concludes "not yet implemented"

`examples/loop-fixpoint/loop_fixpoint_demo.saw`:

```
// STATUS: This file will not run until the Haskell changes described in
//   doc/developer/loop-fixpoint-llvm-verify.md are implemented.
...
// DESIRED API (not yet implemented):
//
//   sum_spec <- llvm_verify_fixpoint m "sum_upto" [] true sum_fixpoint do {
//       ...
//   } z3;
```

…which is the exact API that *is* implemented in `Builtins.hs` (same name, same arity, same arg order). The status comment is wrong; the example would run if the `prim` entry were added.

### 4. Repro: tries to call from SAWScript today

```saw
m <- llvm_load_module "simple_loop.bc";
let f = {{ \(s : ([32], [32])) -> s }};   // placeholder
llvm_verify_fixpoint m "sum_upto" [] true f do {
   n <- llvm_fresh_var "n" (llvm_int 32);
   llvm_execute_func [llvm_term n];
   llvm_return (llvm_term {{ (n * (n - 1)) / 2 : [32] }});
} z3;
```

Result with the current build:

```
[error] unbound variable: llvm_verify_fixpoint
```

`:t llvm_verify_fixpoint` at the SAW REPL: same error. Same for `llvm_verify_fixpoint_chc`.

---

## Why this matters in practice

Concrete scenario that surfaced the gap: verifying an obviously‑correct C++ length‑prefixed canonicalizer:

```cpp
inline std::size_t sdep::canonicalize_lp(
    uint8_t* out,
    const uint8_t* m, uint8_t nm,
    const uint8_t* b, uint8_t nb) noexcept
{
    std::size_t pos = 0;
    out[pos++] = nm;
    for (uint8_t i = 0; i < nm; ++i) out[pos++] = m[i];
    out[pos++] = nb;
    for (uint8_t i = 0; i < nb; ++i) out[pos++] = b[i];
    return pos;
}
```

Two byte‑copy loops with symbolic bounds `nm, nb : uint8_t`. The natural proof is by induction on the loop counters, i.e. exactly the `SimpleLoopFixpoint` use case. With the implemented‑but‑unreachable LLVM `llvm_verify_fixpoint`, this is a few‑line script. Without it, the only options on a Windows/clang target are:

1. **Bounded `llvm_verify`** with `llvm_precond {{ nm <= K }}` — measured wall times against Z3, ABV/bit‑blasted, otherwise identical script:
   - `K =  4` : seconds
   - `K =  8` : ~10 s
   - `K = 12` : ~2 min
   - `K = 16` : ~13.5 min
   - `K = 32` : did not terminate in 25 min, killed
2. **`llvm_verify_fixpoint_x86`** — requires producing an ELF object for the function. On a Windows toolchain (clang targeting `x86_64-pc-windows-msvc`, producing COFF) this is a significant detour; it also forces machine‑code verification of optimized code, which is a much heavier proof obligation than verifying LLVM IR of the same function.

The bounded path is what we shipped, but it is exactly the kind of proof that `SimpleLoopFixpoint` exists to make unnecessary — and the SAW source already has the machinery, it just isn't reachable from SAWScript.

---

## Proposed fix

Three edits to `saw-script/src/SAWScript/Interpreter.hs`. No new types, no changes to `saw-central`.

### Edit 1 — add `do_*` wrappers (near the existing `do_llvm_verify_fixpoint_x86`, ~line 2496):

```haskell
do_llvm_verify_fixpoint ::
  Some CIR.LLVMModule -> Text -> [CIR.SomeLLVM CMS.ProvedSpec] -> Bool -> TypedTerm ->
    LLVMCrucibleSetupM () -> ProofScript () -> TopLevel (CIR.SomeLLVM CMS.ProvedSpec)
do_llvm_verify_fixpoint llvm nm lemmas checkSat tt spec ps =
  llvm_verify_fixpoint llvm nm lemmas checkSat tt spec ps

do_llvm_verify_fixpoint_chc ::
  Some CIR.LLVMModule -> Text -> [CIR.SomeLLVM CMS.ProvedSpec] -> Bool -> TypedTerm ->
    LLVMCrucibleSetupM () -> ProofScript () -> TopLevel (CIR.SomeLLVM CMS.ProvedSpec)
do_llvm_verify_fixpoint_chc llvm nm lemmas checkSat tt spec ps =
  llvm_verify_fixpoint_chc llvm nm lemmas checkSat tt spec ps
```

(These are trivial because the underlying Haskell functions already take `Text` for the name.)

### Edit 2 — register the primitives (near the existing `prim "llvm_verify"` block, ~line 6177):

```haskell
  , prim "llvm_verify_fixpoint"
    ("LLVMModule -> String -> [LLVMSpec] -> Bool -> Term -> " <>
     "LLVMSetup () -> ProofScript () -> TopLevel LLVMSpec")
    (pureVal do_llvm_verify_fixpoint)
    Experimental
    [ "Like 'llvm_verify', but with user-supplied loop fixpoint support."
    , "The Term parameter is a fixpoint function describing how the loop's"
    , "live variables evolve across iterations. This enables verification"
    , "of LLVM bitcode containing loops with symbolic bounds without"
    , "having to bound the loop in the specification."
    ]

  , prim "llvm_verify_fixpoint_chc"
    ("LLVMModule -> String -> [LLVMSpec] -> Bool -> Term -> " <>
     "LLVMSetup () -> ProofScript () -> TopLevel LLVMSpec")
    (pureVal do_llvm_verify_fixpoint_chc)
    Experimental
    [ "Like 'llvm_verify_fixpoint', but using Z3's constrained horn-clause"
    , "(CHC) functionality to synthesize the loop's properties automatically."
    , "The Term argument provides an optional CHC hint."
    ]
```

### Edit 3 — bring the symbols into scope

`llvm_verify_fixpoint` and `llvm_verify_fixpoint_chc` are already re‑exported through the SAWCentral LLVM Builtins module that `Interpreter.hs` imports; verify no `hiding (...)` clause is excluding them. (Quick `grep` on the import block in `Interpreter.hs` confirms the file imports `SAWCentral.Crucible.LLVM.Builtins`; the two functions are already in its export list at lines 34–35, so no further import changes are needed.)

### Then:

- Un‑gate `examples/loop-fixpoint/loop_fixpoint_demo.saw` (delete the "not yet implemented" STATUS comment, remove the `//` from the desired API blocks).
- Update `doc/developer/loop-fixpoint-llvm-verify.md` status from **Proposed** to **Implemented**, noting the only Phase‑1 task remaining was interpreter registration.
- Add an `intTests/test_llvm_loop_fixpoint/` integration test using `examples/loop-fixpoint/simple_loop.c` (the design doc already specifies this).

---

## Validation plan

1. **Build:** `cabal build saw` should compile cleanly — no new dependencies, only new top‑level value bindings.
2. **REPL smoke test:**
   ```
   saw
   sawscript> :t llvm_verify_fixpoint
   llvm_verify_fixpoint : LLVMModule -> String -> [LLVMSpec] -> Bool -> Term ->
                          LLVMSetup () -> ProofScript () -> TopLevel LLVMSpec
   ```
3. **`sum_upto` test** from `loop_fixpoint_demo.saw` (uncommented): expect Z3 to discharge in <1 s for the closed form `n*(n-1)/2`.
4. **`zero_fill` test** (memory‑writing loop): exercises the fixpoint feature with memory ops, as the existing example file already lays out.
5. **Regression:** existing `llvm_verify` tests untouched (no shared code paths altered).

---

## Risk

Essentially zero. The patch is purely interpreter wiring; nothing in `saw-central` is touched. The implementation it exposes is already used and tested via the `_x86` variants, which call into the same `Crucible.LLVM.SimpleLoopFixpoint(.simpleLoopFixpoint)` libraries.

---

## Suggested labels

`area:llvm` · `area:saw-script` · `kind:bug` · `kind:wiring` · `priority:medium` · `good first issue` (the patch itself) · `documentation` (the stale design doc + example)

---

## Appendix: minimal repro script

`repro.saw`:
```
m <- llvm_load_module "simple_loop.bc";
print "Trying llvm_verify_fixpoint...";
let f = {{ \(s : ([32],[32])) -> s }};
_ <- llvm_verify_fixpoint m "sum_upto" [] true f do {
       n <- llvm_fresh_var "n" (llvm_int 32);
       llvm_execute_func [llvm_term n];
       llvm_return (llvm_term {{ (n * (n - 1)) / 2 : [32] }});
     } z3;
print "ok";
```

Run:
```
saw repro.saw
```

Current behaviour:
```
[error] repro.saw:3:6-3:26: unbound variable: llvm_verify_fixpoint
```

Expected after fix: `ok`.

---

*Reporter context:* discovered while finishing an "Option B — Hoare logic via SAW" proof of a length‑prefixed canonicalizer. The bounded form proves at `MAX_LEN=16` in 13.5 min; making it unbounded was the next step, which is exactly the feature SAW already implements but doesn't surface.
