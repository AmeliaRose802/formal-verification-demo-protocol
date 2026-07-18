# One-pager: unverified controller and orchestration functions

**Status:** open · **Audience:** repo maintainers · **Group:** composition / orchestration / multi-helper control flow

## Functions in this group

These implementation functions are currently not verified against the model:

- `sdep::FleetController::handle_provision`
- `sdep::FleetController::handle_activate`
- `sdep::FleetController::handle_status`

Source file:

- `cpp/src/controller.cpp`

## Why this group is not verified today

These are not blocked because their internal decision logic is especially hard.
They are blocked because they compose many other surfaces, several of which are
still unverified.

`handle_activate` is the clearest example. It composes:

- header lookup and lowercasing,
- route parsing and UUID parsing,
- request-date checking,
- claims validation,
- authentication composition,
- key-store state transitions,
- final decision-table mapping.

The pure decision leaves inside that flow are already proved. The surrounding
string, parsing, crypto, and stateful helper layers are not.

## Why this is a distinct challenge group

This is a compositional proof problem, not just a parser problem and not just a
state problem.

The controller methods are where several previously separate helper contracts
need to come together. That makes them the natural top of the proof stack, not
the place to start.

## What would verify this group

These functions become practical verification targets once the lower helper
contracts exist:

- route/header parsing contracts,
- claims validation contract,
- signature verification contract or trusted boundary,
- key-store state transition contracts,
- the already-proved decision-table leaves.

At that point the generated proof for each controller method should mostly be a
composition proof over helper contracts plus a small amount of local control
flow.

## Why exceptions are not the main blocker

`handle_activate` catches `ProtocolError`, but exception lowering itself is not
the core difficulty here. The real issue is that the method spans too many
helper boundaries that are not yet packaged as reusable contracts.

## Recommendation

Do not treat controller verification as an isolated target. Treat it as the
final consumer of the lower proof groups:

- crypto/timing,
- string/parsing,
- key-store state.

If those groups are covered or cleanly assumed, the controller layer becomes a
natural compositional proof target.

## Acceptance criteria

1. Each controller method lists the helper contracts it depends on.
2. The docs can state which controller claims are direct and which are
   conditional on lower contracts.
3. `handle_provision`, `handle_activate`, and `handle_status` stop being an
   amorphous unverified bucket and become explicit composition targets.
