# `ek_off_isActive`  🧩

> 🧩 **Model abstraction.** byte offset of EnrollmentKey.isActive within the 64-byte key record. No production function is proven equivalent to this definition on this page.

### Formal definition (Cryptol)

```haskell
ek_off_isActive = 48 : Integer
```

> **Not yet verified.**

── KeyStore::provision — Trust-On-First-Use (TOFU) enrollment ─────────
`provision(EnrollmentKey newKey) -> optional<EnrollmentKey>` is the
other half of the KeyStore lifecycle: it installs the FIRST key into
an empty store and is otherwise inert. Its body (held under the same
scoped_lock, modelled as a memory-neutral no-op here) does:

```text
  if key_ already engaged           -> return nullopt, store UNCHANGED
  else  newKey.isActive := false;   -> store newKey, engage; return Some
```

This is the TOFU latch: once any key exists, provision can never
overwrite it (re-enrolment must go through the wipe path, out of
scope). The freshly stored key is always written INACTIVE — activation
is a separate, explicit step (`activate`), so provisioning alone never
yields a usable (active) credential.
EnrollmentKey is a 64-byte POD: keyId@0 (16) · secret@16 (32) ·
isActive@48 (bool) · createdAt@56 (i64). Inside the KeyStore optional
it sits at object offset 80, so its isActive lands at 80+48 = 128 and
the optional engaged flag at 80+64 = 144 (consistent with activate).

### Related Properties
- [PROV4 — Returned Key Inactive](../properties/prove).md#prov4--returned-key-inactive)

