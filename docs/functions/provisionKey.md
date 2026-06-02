# `provisionKey`

### Signature

**Parameters**
- `fleetEnabled`: Bit
- `validRequest`: Bit
- `vaultResult`: [KeyVaultResult](../types.md#keyvaultresult)
- `keyIsActive`: Bit

**Returns**
- [ProvisionResult](../types.md#provisionresult)

<details><summary>Raw signature</summary>

`Bit -> Bit -> KeyVaultResult -> Bit -> ProvisionResult`

</details>

### Formal definition (Cryptol)

```haskell
provisionKey fleetEnabled validRequest vaultResult keyIsActive =
  if ~ fleetEnabled        then PR_Disabled
   | ~ validRequest        then PR_BadRequest
   | vaultResult != KV_Ok  then PR_InternalError
   | keyIsActive           then PR_Unauthorized
  else                          PR_Succeeded
```

Evaluates 5 conditions on `fleetEnabled`, `validRequest`, `vaultResult`, and `keyIsActive` in priority order, returning the first applicable `ProvisionResult`. Defaults to `PR_Succeeded` when no prior condition matches.

```mermaid
flowchart TD
  Start(["provisionKey"])
  Start --> C0{"~ fleetEnabled"}
  C0 -->|Yes| R0("PR_Disabled")
  C0 -->|No| C1{"~ validRequest"}
  C1 -->|Yes| R1("PR_BadRequest")
  C1 -->|No| C2{"vaultResult != KV_Ok"}
  C2 -->|Yes| R2("PR_InternalError")
  C2 -->|No| C3{"keyIsActive"}
  C3 -->|Yes| R3("PR_Unauthorized")
  C3 -->|No| R4("PR_Succeeded")
  classDef default fill:#e8f4fd,stroke:#2196F3,stroke-width:2px,color:#1565C0
  style Start fill:#1565C0,stroke:#0D47A1,color:#fff,stroke-width:2px
```

### Related Properties
- [P2 — Active Key Blocks Provisioning](../properties/key-lifecycle-safety.md#p2--active-key-blocks-provisioning)
- [P5 — Disabled Fleet Rejects Everything](../properties/key-lifecycle-safety.md#p5--disabled-fleet-rejects-everything)
- [P15 — Authorized Request On Inactive Key Succeeds](../properties/protocol-liveness.md#p15--authorized-request-on-inactive-key-succeeds)
- [P20 — Invalid Request Is Bad Request](../properties/error-handling.md#p20--invalid-request-is-bad-request)

