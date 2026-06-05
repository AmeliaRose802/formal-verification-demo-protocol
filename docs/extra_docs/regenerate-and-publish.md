# Regenerating Specs & Publishing to GitHub Pages

This page is the runbook for the **next agent** (human or AI) who needs to
regenerate the verification documentation and republish the site at
<https://ameliarose802.github.io/formal-verification-demo-protocol/>.

If you only want the answer, scroll to [TL;DR](#tldr). Everything below it
explains *why* each step exists and what to do when something breaks.

---

## TL;DR

From the repo root (`demo_protocol/`):

```powershell
pwsh -NoProfile -File scripts\regen-docs.ps1
git add -A
git commit -m "docs: regen verification site"
git checkout main
git merge --ff-only ameliapayne/ci-verify  # or whichever feature branch
git push origin main
```

That's it. Pushing `main` with changes under `docs/`, `docfx.json`, or
`proof_manifest.json` triggers `.github/workflows/pages.yml`, which renders
DocFX and publishes to the `gh-pages` deployment.

To watch the deploy:

```powershell
gh run list --workflow=pages.yml --limit 1
gh run watch  # picks the most recent run
```

---

## What `scripts/regen-docs.ps1` actually runs

The script is a thin wrapper around the
[`pretty-specs`](https://github.com/AmeliaRose802/pretty-specs) pipeline
(`pipeline.ps1`). The canonical invocation is:

```powershell
& C:\Users\ameliapayne\pretty-specs\pipeline.ps1 `
    -Spec cpp\saw\SDEP_cpp.cry `
    -Impl cpp\src\decision.cpp -ImplLang cpp `
    -CxxIncludeDirs cpp\include -CxxStandard c++20 `
    -ExtraClangFlags '-fexceptions','-fno-inline' `
    -PrettySpecs    C:\Users\ameliapayne\pretty-specs\target\release\pretty-specs.exe `
    -SawSpecGen     C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe `
    -SawSpecGenRoot C:\Users\ameliapayne\saw-spec-gen `
    -Output docs -VerifyOutput verify_out `
    -ExtraDocs 'extra_docs:Formal Verification' `
    -Logo assets\sat-pudding.png -Favicon assets\fabicon.png `
    *>&1 | Tee-Object pipeline.log
```

A few non-obvious bits:

| Flag | Why |
| --- | --- |
| `-Spec cpp\saw\SDEP_cpp.cry` | The **8-bit-ABI** Cryptol shim, *not* `cryptol\SDEP.cry`. `SDEP.cry` uses 2-bit enum encodings that don't line up with the C++ `enum class : uint8_t` ABI. `SDEP_cpp.cry` re-exports the same semantics with `[8]` byte returns so SAW's `llvm_return` matches the i8/i16 the MSVC ABI hands back. |
| `*>&1` (not `2>&1`) | Pipes **all** streams (success + warning + verbose + error) into `Tee-Object`. Using `2>&1` only redirects stderr and leaves spurious exit-1 noise. |
| `-ExtraDocs 'extra_docs:Formal Verification'` | Adds the `extra_docs/` folder as a top-level navbar entry titled "Formal Verification". This is how you (the page you're reading) ended up on the site. |
| `-Logo` / `-Favicon` | Sets the branding in the rendered DocFX site. Both files live in `assets/`. |

## Pipeline steps in plain English

`pipeline.ps1` runs 5 phases. Knowing them helps you skip steps when only
part of the world has changed:

| Step | What | Outputs |
| --- | --- | --- |
| 0 | Initial DocFX render *without* proof badges. | `docs/` (skeleton) |
| 1 | Emit list of top-level Cryptol functions. | `verify_out/function_list.json` |
| 2 | Foreach function, invoke `verify.ps1` (C++) or `verify-rust.ps1` (Rust) under `saw-spec-gen` to compile, lower, and verify each spec. | `verify_out/out_<fn>/result.json` |
| 3 | `pretty-specs --adapt-saw-results` — aggregate the per-function `result.json` into a single `proof_manifest.json`. | `proof_manifest.json` |
| 4 | Re-render DocFX with the manifest wired in so each function page gets a proof-status badge. | `docs/` (final) |

If only the docs source changed (e.g. you edited `extra_docs/*.md`) you can
skip Steps 1-3 with `-SkipVerify`. The script will reuse whatever is already
in `verify_out/` plus the existing `proof_manifest.json`.

## Expected results

The published site shows about **5 of 21** functions as auto-VERIFIED. That's
correct, not a regression:

- 5 functions (`provisionKey`, `enrollDevice`, `authenticate`,
  `enforceAccess`, `isValidRequestDate`) verify cleanly via the saw-spec-gen
  auto-generation path.
- `getStatus` and `canonicalize_lp_{post,ret}` need hand-curated specs in
  `cpp/saw/custom/` plus `-O1` bitcode tweaks. Those gaps are tracked in the
  user-memory notes and run separately via `verify_all.ps1`.
- The remaining ~15 Cryptol top-level names are private helpers
  (`packPad`, `derivePin`, predicate refinements, etc.) with no
  implementation counterpart. The pipeline treats them as
  `status: not_attempted` via saw-spec-gen's `--spec-only-on-missing`
  switch (default on).

The **README "7/7 SAW C++"** badge comes from `verify_all.ps1` (Layer 1),
not from `pipeline.ps1`. That script uses hand-curated overrides
(`cpp/saw/custom/*.saw`) and `-O1` bitcode for the three functions
auto-gen can't handle. Don't be alarmed by the discrepancy — they're
measuring different things.

## Things that go wrong (and how to fix them)

### Pipeline runs forever then "dies"

The `verify.ps1` script runs SAW symbolic execution per function. On a clean
machine the whole pipeline takes ~10-15 minutes; with stale caches or while
saw-spec-gen rebuilds itself it can hit 30 minutes. **Do not run the
pipeline inside a tool with a hard timeout** — detach it:

```powershell
Start-Process pwsh -ArgumentList '-NoProfile','-File','scripts\regen-docs.ps1' `
    -RedirectStandardOutput pipeline.stdout.log `
    -RedirectStandardError  pipeline.stderr.log `
    -PassThru | Tee-Object .pipeline.pid
```

Then poll `pipeline.log` until you see `----EXIT=0`.

### "The file `pipeline.log` is being used by another process"

A previous detached pipeline run is still alive holding the log open via
`Tee-Object`. Find and kill it:

```powershell
Get-Process pwsh | Where-Object { $_.StartTime -lt (Get-Date).AddMinutes(-30) -and $_.CPU -gt 100 }
Stop-Process -Id <PID> -Force
```

Then delete `pipeline.log`, `verify_out/`, `docs/`, and
`proof_manifest.json` and re-run.

### `getStatus` halts pipeline with "Error during memory load"

Known. At `-O0` MSVC emits `std::optional<Uuid>` ctors that SAW's symbolic
simulator can't synthesize. `pipeline.ps1`'s Step 2 catches the failure and
writes `status: error` to `result.json`, then continues. Steps 3 and 4 still
run — they just record `getStatus` as unverified in the manifest. If the
loop *halts* mid-Step-2 instead of continuing, the verify script probably
threw a terminating PowerShell error that escaped the try/catch in
`pipeline.ps1`. Workarounds:

1. Re-run with `-SkipVerify` and a hand-written
   `verify_out/out_getStatus/result.json`:
   ```json
   {
     "cryptol_fn": "getStatus",
     "status": "error",
     "message": "std::optional ctor at -O0 unsupported; verified via cpp/saw/run.ps1 with -O1 bitcode"
   }
   ```
2. Confirm `verify_all.ps1` still passes 7/7 — that's the real source of
   truth for C++↔Cryptol equivalence.

### `canonicalize_lp_post` / `canonicalize_lp_ret` show as `not_attempted`

That's expected from `pipeline.ps1` — those two functions need the custom
`cpp/saw/custom/canonicalize_lp.saw` script with specific argument-order
flags that the generic pipeline can't infer. Again, `verify_all.ps1` is the
authoritative pass.

### DocFX fails on Pages

Check `.github/workflows/pages.yml`. The workflow uses
`setup-dotnet@v4` (8.0.x), `dotnet tool update -g docfx`, then
`docfx docfx.json --warningsAsErrors false`. Any change to the docs that
introduces a DocFX warning is tolerated; *errors* (broken xref, malformed
front-matter) will fail the build. Test locally with:

```powershell
docfx docfx.json --warningsAsErrors false
```

(After `dotnet tool install -g docfx`.)

## What gets committed vs ignored

Commit the regenerated artifacts so GitHub Pages has something to deploy
without needing to run the proof pipeline in CI:

- `docs/` — DocFX source rendered with proof badges
- `proof_manifest.json` — aggregated SAW results
- Updates to `extra_docs/*.md` and `extra_docs/toc.yml` if you added pages

**Do not** commit (these are intermediates):

- `verify_out/` — multi-GB clang AST dumps and bitcode
- `pipeline.log`, `pipeline.stdout.log`, `pipeline.stderr.log`
- `_site/` — DocFX's local build output (the Pages workflow builds its own)
- `.pipeline.pid`

The repo's `.gitignore` should cover these. If you regenerated and `git
status` shows `verify_out/` as untracked, add it to `.gitignore` before
committing.

## End-to-end checklist

```text
[ ] Pull latest main
[ ] Make code/spec changes on a feature branch
[ ] Run `verify_all.ps1` locally — all 4 layers green
[ ] Run `pwsh -NoProfile -File scripts\regen-docs.ps1`
[ ] Confirm pipeline.log ends with `----EXIT=0`
[ ] Confirm `proof_manifest.json` exists and has ~21 entries
[ ] Confirm `docs/functions/*.md` exist and contain proof badges
[ ] `git add -A && git commit -m "docs: regen verification site"`
[ ] `git push origin <feature-branch>`
[ ] Fast-forward merge into main, push main
[ ] `gh run watch` on the pages workflow
[ ] Visit https://ameliarose802.github.io/formal-verification-demo-protocol/
```

## Related tooling locations

| Tool | Local path | Repo |
| --- | --- | --- |
| `pretty-specs` | `C:\Users\ameliapayne\pretty-specs\` | <https://github.com/AmeliaRose802/pretty-specs> |
| `saw-spec-gen` | `C:\Users\ameliapayne\saw-spec-gen\` | <https://github.com/AmeliaRose802/saw-spec-gen> |
| SAW | `…\saw-1.5\bin\saw.exe` (path is set in `verify_all.ps1`) | <https://github.com/GaloisInc/saw-script> |
| Cryptol | `…\saw-1.5\bin\cryptol.exe` (set via `CRYPTOL_EXE`) | <https://github.com/GaloisInc/cryptol> |
| Z3 | bundled with SAW | <https://github.com/Z3Prover/z3> |

If any of these binaries move, update `scripts/regen-docs.ps1` (and the
defaults in your `pipeline.ps1` checkout). The script accepts overrides
via parameters so you don't have to edit it for one-off runs.
