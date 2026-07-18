---- MODULE MSP ----
EXTENDS Naturals, TLC

(***************************************************************************)
(* A small state-machine model of the MSP/SDEP control surface.            *)
(*                                                                          *)
(* The model tracks:                                                        *)
(*  - key lifecycle (NoKey -> Provisional -> Active),                       *)
(*  - authentication state used by activation, and                           *)
(*  - access-control outcome semantics for Off/Audit/Enforce modes.         *)
(***************************************************************************)

CONSTANTS
    ModeSet,
    KeyStateSet,
    AuthSet,
    DecisionSet

ASSUME ModeSet = {"Off", "Audit", "Enforce"}
ASSUME KeyStateSet = {"NoKey", "Provisional", "Active"}
ASSUME AuthSet = {"Unauthenticated", "Authenticated", "VaultUnavailable"}
ASSUME DecisionSet = {"Allow", "Deny", "NoRule"}

VARIABLES
    mode,
    keyState,
    auth,
    decision,
    allowed,
    logged

Vars == <<mode, keyState, auth, decision, allowed, logged>>

Outcome(m, d) ==
    IF m = "Off" THEN [allowed |-> TRUE, logged |-> FALSE]
    ELSE IF m = "Audit" THEN [allowed |-> TRUE, logged |-> (d = "Deny")]
    ELSE [allowed |-> (d # "Deny"), logged |-> (d = "Deny")]

TypeOK ==
    /\ mode \in ModeSet
    /\ keyState \in KeyStateSet
    /\ auth \in AuthSet
    /\ decision \in DecisionSet
    /\ allowed \in BOOLEAN
    /\ logged \in BOOLEAN

Init ==
    /\ mode = "Enforce"
    /\ keyState = "NoKey"
    /\ auth = "Unauthenticated"
    /\ decision = "NoRule"
    /\ allowed = Outcome(mode, decision).allowed
    /\ logged = Outcome(mode, decision).logged

SetMode ==
    \E m \in ModeSet:
        /\ mode' = m
        /\ UNCHANGED <<keyState, auth, decision>>
        /\ allowed' = Outcome(m, decision).allowed
        /\ logged' = Outcome(m, decision).logged

SetAuth ==
    \E a \in AuthSet:
        /\ auth' = a
        /\ UNCHANGED <<mode, keyState, decision, allowed, logged>>

SetDecision ==
    \E d \in DecisionSet:
        /\ decision' = d
        /\ UNCHANGED <<mode, keyState, auth>>
        /\ allowed' = Outcome(mode, d).allowed
        /\ logged' = Outcome(mode, d).logged

Provision ==
    /\ keyState = "NoKey"
    /\ keyState' = "Provisional"
    /\ UNCHANGED <<mode, auth, decision, allowed, logged>>

Activate ==
    /\ keyState = "Provisional"
    /\ auth = "Authenticated"
    /\ keyState' = "Active"
    /\ UNCHANGED <<mode, auth, decision, allowed, logged>>

Next ==
    \/ SetMode
    \/ SetAuth
    \/ SetDecision
    \/ Provision
    \/ Activate
    \/ UNCHANGED Vars

Spec == Init /\ [][Next]_Vars

Rank(s) ==
    IF s = "NoKey" THEN 0
    ELSE IF s = "Provisional" THEN 1
    ELSE 2

AccessOutcomeSound ==
    []((allowed = Outcome(mode, decision).allowed)
      /\ (logged = Outcome(mode, decision).logged))

NoRollback == [](Rank(keyState) <= Rank(keyState'))

ActiveSticky == [](keyState = "Active" => keyState' = "Active")

ActivateRequiresAuth ==
    []((keyState = "Provisional" /\ keyState' = "Active") => auth = "Authenticated")

=============================================================================
