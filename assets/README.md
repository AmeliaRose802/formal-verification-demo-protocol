# Branding assets

Drop a logo and favicon in this folder. The pretty-specs pipeline copies
them into `docs/images/` on every build (survives the `docs/` regen), and
docfx then picks them up via the resource entry + `_appLogoPath` /
`_appFaviconPath` keys in [`../docfx.json`](../docfx.json).

## Expected files

| File | Used as | Recommended format |
| ---- | ------- | ------------------ |
| `sat-pudding.png` | Navbar logo (top-left) | currently a 2.4 MB PNG; consider a downscaled / SVG version |
| `fabicon.png`     | Browser tab icon       | currently a 688 KB PNG; a 32×32 `.ico` would be lighter   |

Filenames are referenced from `docfx.json`. If you change them here,
update `_appLogoPath` / `_appFaviconPath` to match.

## How to rebuild with branding

The canonical wrapper is [`../scripts/regen-docs.ps1`](../scripts/regen-docs.ps1)
— just run `pwsh -NoProfile -File scripts/regen-docs.ps1`. It drives
pretty-specs' native `--pipeline` orchestrator with the branding flags already
wired in. To invoke pretty-specs directly:

```powershell
# From the repo root
& C:\Users\ameliapayne\pretty-specs\target\release\pretty-specs.exe cpp\saw\SDEP_cpp.cry `
    --pipeline `
    --impl cpp\src\decision.cpp --impl-lang cpp `
    --saw-spec-gen C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe `
    --cxx-include-dir cpp\include --cxx-standard c++20 `
    --clang-flag -fexceptions --clang-flag -fno-inline `
    -o docs --verify-output verify_out --docfx `
    --logo    assets\sat-pudding.png `
    --favicon assets\fabicon.png
```

`--logo` and `--favicon` are optional — omit them for a plain build.

The native pipeline passes `--spec-only-on-missing` to `saw-spec-gen` by
default so that private Cryptol-only helpers (e.g. `packPad`, `derivePin`, the
ABI extractor lemmas, etc.) — which by design have no separate C++
implementation symbol — show up in the rendered docs as "not attempted /
spec-only helper" rather than as red `error` entries. Pass `--strict-on-missing`
to restore the old strict-error behaviour.
