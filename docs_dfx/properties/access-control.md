# Access Control

### P11 — Access Off Allows Without Logging

[P11](../SDEP/properties/access-control.md#p11--access-off-allows-without-logging): Access-off mode allows every decision and logs nothing.

**Involved:** [`AM_Off`](../SDEP/types.md#accessmode), [`enforceAccess`](../SDEP/functions/enforceAccess.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isAccessDecision decision ==>
enforceAccess AM_Off decision == (True, False)
```

</details>

### P12 — Access Audit Never Denies

[P12](../SDEP/properties/access-control.md#p12--access-audit-never-denies): Access-audit mode never denies (regardless of the underlying decision).

**Involved:** [`AM_Audit`](../SDEP/types.md#accessmode), [`enforceAccess`](../SDEP/functions/enforceAccess.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
isAccessDecision decision ==>
(enforceAccess AM_Audit decision).0 == True
```

</details>

### P13 — Access Enforce Blocks Denials

[P13](../SDEP/properties/access-control.md#p13--access-enforce-blocks-denials): Access-enforce mode blocks any explicitly denied request.

**Involved:** [`AD_Deny`](../SDEP/types.md#accessdecision), [`AM_Enforce`](../SDEP/types.md#accessmode), [`enforceAccess`](../SDEP/functions/enforceAccess.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
enforceAccess AM_Enforce AD_Deny == (False, True)
```

</details>

### P14 — Access Enforce Allows Permitted

[P14](../SDEP/properties/access-control.md#p14--access-enforce-allows-permitted): Access-enforce mode allows any explicitly permitted request.

**Involved:** [`AD_Allow`](../SDEP/types.md#accessdecision), [`AM_Enforce`](../SDEP/types.md#accessmode), [`enforceAccess`](../SDEP/functions/enforceAccess.md)

<details><summary>Formal property (Cryptol)</summary>

```cryptol
enforceAccess AM_Enforce AD_Allow == (True, False)
```

</details>

