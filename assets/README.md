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

```powershell
# From the repo root
& C:\Users\ameliapayne\pretty-specs\pipeline.ps1 `
    -Spec cryptol\SDEP.cry `
    -Impl cpp\src\decision.cpp -ImplLang cpp `
    -CxxIncludeDirs cpp\include -CxxStandard c++20 `
    -ExtraClangFlags '-fexceptions','-fno-inline' `
    -PrettySpecs C:\Users\ameliapayne\pretty-specs\target\release\pretty-specs.exe `
    -SawSpecGen   C:\Users\ameliapayne\saw-spec-gen\target\release\saw-spec-gen.exe `
    -SawSpecGenRoot C:\Users\ameliapayne\saw-spec-gen `
    -Output docs -VerifyOutput verify_out `
    -Logo    assets\sat-pudding.png `
    -Favicon assets\fabicon.png
```

`-Logo` and `-Favicon` are optional — omit them for a plain build.

The pipeline driver passes `-SpecOnlyOnMissing` to `saw-spec-gen gen-verify` by
default so that private Cryptol-only helpers (e.g. `packPad`, `derivePin`, the
ABI extractor lemmas, etc.) — which by design have no separate C++
implementation symbol — show up in the rendered docs as "not attempted /
spec-only helper" rather than as red `error` entries. Pass
`-SpecOnlyOnMissing:$false` to restore the old strict-error behaviour.
