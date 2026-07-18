# One-pager: Better compositional verification support in saw-spec-gen

**Status:** proposal · **Audience:** saw-spec-gen maintainers · **Owner:** (you)

## Problem

The demo already uses a compositional proof shape: prove small leaf functions,
then use those proven results when reasoning about larger functions. That is the
right model for scaling verification in this repo.

Today, though, saw-spec-gen mostly helps with the first half of that story. It
can generate direct function-equality specs for leaf functions, and it can pass
through some practical boundaries like out-buffer postconditions and trusted
assumptions. But once a larger function depends on helper contracts, mutable
state, or library-heavy code, the proof story becomes manual very quickly.

That means the tool supports compositional verification in principle, but it
does not yet support it *well enough* to make larger proofs routine.

## What “compositional” should mean here

For this repo, compositional verification should mean:

1. Prove small helper functions against precise contracts.
2. Reuse those contracts as assumptions when verifying larger functions.
3. Make the dependency chain visible in the docs so the reader can see which
   claims are direct proofs and which are conditional on helper specs.

That is already the right proof architecture for the protocol:

- `provisionKey`, `enrollDevice`, `authenticate`, `isValidRequestDate`,
  `enforceAccess`, `getStatus`, and `canonicalize_lp` are direct leaf targets.
- Larger surfaces like the controller, string canonicalization, keystore state
  transitions, and HMAC/signature verification need those leaf contracts as
  building blocks.

## Proposal: first-class contracts, not just direct equivalence

The next useful step for saw-spec-gen is to treat helper proofs as reusable
contracts and let generated specs compose them explicitly.

### 1. Generate contract-aware specs for helpers

Allow a leaf proof to be emitted not only as `impl == model`, but also as a
named contract object that other generated specs can reference.

Examples:

- `canonicalize_lp` becomes a bounded helper contract for canonical byte
  framing.
- `provisionKey` becomes a reusable truth-table contract for the key lifecycle.
- `authenticate` and `isValidRequestDate` become precondition contracts for
  higher-level verifier flows.

This does not require proving more code immediately; it requires packaging
already-proven results so the generator can reuse them.

### 2. Let generated specs import helper contracts by name

When a larger function calls a helper that already has a proof, saw-spec-gen
should be able to generate a spec that imports the helper’s contract instead of
inlining or rediscovering it.

That would make the dependency chain explicit:

- `handle_activate` depends on `authenticate`, `isValidRequestDate`, and
  `enrollDevice`.
- `canonicalizePayload` depends on the string canonicalization helpers.
- `KeyStore::activate` depends on a state transition contract for the stored
  key image.

The generated SAW script should show these dependencies in the proof text.

### 3. Improve stateful pre/post contracts for mutating methods

The tool already supports stateful pre/post-style contracts for methods that
mutate object state. The compositional gap here is making that support easier to
reuse, easier to discover, and better integrated with helper-contract
composition.

That means a generated spec needs to express:

- pre-state object layout,
- post-state object layout,
- return value,
- and which member updates are allowed.

This is the same idea as buffer postconditions, just applied to object state.

### 4. Keep trusted assumptions visible as contracts

Some code should remain assumed rather than proved, at least initially.
HMAC-SHA256 and constant-time comparison are examples where a trusted boundary is
reasonable in this repo.

Saw-spec-gen should support that explicitly, but it should also mark those
contracts as assumptions in the generated docs so the final claim stays honest.

## Why this would verify more code

This would not magically prove everything, but it would let the tool move
verification boundaries outward in a controlled way.

In practice, it would make the following surfaces more reachable:

- controller methods that orchestrate already-proven leaves,
- keystore methods that mutate state but follow a simple transition relation,
- string-processing pipelines that are built from reusable canonicalization
  helpers,
- and larger protocol flows that currently need too much hand-written SAW.

The important point is that compositional verification increases coverage only
if the contracts are explicit. Otherwise the tool just hides assumptions behind
the proof output.

## What saw-spec-gen would need

1. A way to name and reuse helper contracts.
2. Better ergonomics for generating, naming, and reusing stateful pre/post
  specs, not just pure equivalence.
3. A way to mark assumed boundaries and surface them in docs.
4. A way to render proof chains so the docs show which larger proof depends on
   which smaller proof.

## Acceptance criteria

1. A helper proof can be emitted once and reused by later generated specs.
2. Stateful methods can be generated as pre/post contracts over object memory.
3. Trusted assumptions render as explicit contracts, not as silent green checks.
4. A generated doc page can show the dependency chain for a larger function.
5. The docs can distinguish direct equivalence, bounded equivalence, and
   conditional proof dependencies.

## Bottom line

Yes, the repo already uses the compositional verification idea.
The missing piece is first-class tool support for contracts, stateful specs, and
visible proof dependencies.

If saw-spec-gen grew that support, it would let this repo verify more of the
real implementation without flattening everything into one giant direct
equivalence proof.
