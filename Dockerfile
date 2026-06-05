# syntax=docker/dockerfile:1.7
#
# Pre-built CI image for demo_protocol's Linux verify job.
#
# Layers the same toolchain that scripts/ci-install.ps1 installs locally:
#   - LLVM 20.1.6 (clang, llvm-as, opt, llvm-link)
#   - SAW 1.5 with bundled solvers (z3, yices, cvc4/5, abc, cryptol)
#   - PowerShell 7.6.2 (verify_all.ps1 and per-language run.ps1 are pwsh)
#   - Rust stable with `llvm-tools-preview` (matching-version llvm-as for
#     the Rust pipeline's bitcode-reassembly step)
#   - saw-spec-gen (built from source; pinned by SAW_SPEC_GEN_TAG)
#
# Tools are dropped at the same paths ci-install.ps1 uses
# ($HOME/.demo_protocol/{llvm,saw,bin}) so the layout is identical to a
# local install, and the per-language run.ps1 scripts pick them up
# without any extra wiring. ENV vars below mean verify_all.ps1 skips
# sourcing ~/.demo_protocol/env.ps1 entirely inside the container.
#
# Built and published by .github/workflows/publish-ci-image.yml to:
#   ghcr.io/ameliarose802/formal-verification-demo-protocol-ci:latest
#
# Bump SAW_VERSION / LLVM_VERSION / PWSH_VERSION here when scripts/ci-install.ps1
# pins are bumped, then re-run the publish workflow.

FROM ubuntu:22.04

ARG SAW_VERSION=1.5
ARG LLVM_VERSION=20.1.6
ARG PWSH_VERSION=7.6.2
ARG RUST_TOOLCHAIN=stable
ARG SAW_SPEC_GEN_TAG=latest

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# System deps: curl/tar/xz for tarball installs, build-essential for
# native cargo deps + the cpp/ build-test job's gcc smoke build,
# libtinfo5/libncurses5 for the LLVM 20 binaries (clang dynamically
# links libtinfo.so.5), libicu70 + libssl3 for the PowerShell tarball.
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      ca-certificates curl wget tar gzip xz-utils unzip \
      git pkg-config build-essential cmake \
      zlib1g libtinfo5 libncurses5 \
      libicu70 libssl3 libssl-dev \
 && rm -rf /var/lib/apt/lists/*

# ── LLVM 20.1.6 (same asset scripts/ci-install.ps1 downloads) ─────────
RUN mkdir -p /root/.demo_protocol/llvm \
 && curl -fsSL -o /tmp/llvm.tar.xz \
      "https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/LLVM-${LLVM_VERSION}-Linux-X64.tar.xz" \
 && tar -xJf /tmp/llvm.tar.xz -C /root/.demo_protocol/llvm --strip-components=1 \
 && rm /tmp/llvm.tar.xz \
 && /root/.demo_protocol/llvm/bin/clang --version

# ── SAW 1.5 with bundled solvers (ubuntu-22.04 build) ─────────────────
RUN mkdir -p /root/.demo_protocol/saw \
 && curl -fsSL -o /tmp/saw.tar.gz \
      "https://github.com/GaloisInc/saw-script/releases/download/v${SAW_VERSION}/saw-${SAW_VERSION}-ubuntu-22.04-X64-with-solvers.tar.gz" \
 && tar -xzf /tmp/saw.tar.gz -C /root/.demo_protocol/saw --strip-components=1 \
 && rm /tmp/saw.tar.gz \
 && /root/.demo_protocol/saw/bin/saw --version \
 && /root/.demo_protocol/saw/bin/cryptol --version

# ── PowerShell 7 (self-contained tarball; skip Microsoft apt repo) ────
RUN mkdir -p /opt/pwsh \
 && curl -fsSL -o /tmp/pwsh.tar.gz \
      "https://github.com/PowerShell/PowerShell/releases/download/v${PWSH_VERSION}/powershell-${PWSH_VERSION}-linux-x64.tar.gz" \
 && tar -xzf /tmp/pwsh.tar.gz -C /opt/pwsh \
 && chmod +x /opt/pwsh/pwsh \
 && ln -s /opt/pwsh/pwsh /usr/local/bin/pwsh \
 && rm /tmp/pwsh.tar.gz \
 && pwsh -NoProfile -Command '$PSVersionTable.PSVersion'

# ── Rust toolchain + llvm-tools-preview ───────────────────────────────
# The Rust verify layer (rust/saw/run.ps1) reassembles patched LLVM IR
# with rustup's matching-version llvm-as so newer rustc IR attributes
# (dead_on_unwind, initializes, ...) round-trip cleanly. Without
# llvm-tools-preview the system clang's LLVM 20 rejects rustc's emitted
# IR and Layer 2 fails before SAW ever runs.
ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \
      | sh -s -- -y --default-toolchain ${RUST_TOOLCHAIN} --profile minimal --no-modify-path --component llvm-tools-preview \
 && /usr/local/cargo/bin/rustc --version \
 && ls /usr/local/rustup/toolchains/*/lib/rustlib/x86_64-unknown-linux-gnu/bin/llvm-as

# ── saw-spec-gen (built from source) ──────────────────────────────────
# Both per-language run.ps1 scripts read $env:SAW_SPEC_GEN to find this
# binary. We build from git rather than downloading a release tarball
# because the saw-spec-gen repo doesn't currently publish release
# binaries — its release.yml lives on a feature branch, not on master,
# so `releases/latest/download/...` returns 404 and every image build
# fails. Building once at image-bake time is fine: the Rust toolchain
# is already installed in the previous layer, and the resulting binary
# is baked into the image so the verify job pays nothing for it.
#
# SAW_SPEC_GEN_TAG controls which git ref to build:
#   - "latest"  → origin's default branch (HEAD)
#   - anything else (e.g. "v0.3.1" or a branch name) → that ref
RUN mkdir -p /root/.demo_protocol/bin \
 && if [ "${SAW_SPEC_GEN_TAG}" = "latest" ]; then \
        ref_args=""; \
    else \
        ref_args="--tag ${SAW_SPEC_GEN_TAG}"; \
    fi \
 && cargo install \
        --git https://github.com/AmeliaRose802/saw-spec-gen.git \
        ${ref_args} \
        --root /tmp/ssg-install \
        saw-spec-gen \
 && cp /tmp/ssg-install/bin/saw-spec-gen /root/.demo_protocol/bin/saw-spec-gen \
 && chmod +x /root/.demo_protocol/bin/saw-spec-gen \
 && rm -rf /tmp/ssg-install \
 && /root/.demo_protocol/bin/saw-spec-gen --version

# ── Env vars matching scripts/ci-install.ps1's GITHUB_ENV output ──────
# verify_all.ps1 auto-sources ~/.demo_protocol/env.ps1 only when
# $env:SAW_EXE is unset, so exporting SAW_EXE here is enough to short-
# circuit that. The per-language run.ps1 scripts probe these names via
# Resolve-ToolDir / Resolve-ToolExe and pick them up without further
# wiring.
ENV CLANG_BIN=/root/.demo_protocol/llvm/bin \
    SAW_EXE=/root/.demo_protocol/saw/bin/saw \
    SAW_SPEC_GEN=/root/.demo_protocol/bin/saw-spec-gen \
    SOLVER_BIN=/root/.demo_protocol/saw/bin \
    CRYPTOL_EXE=/root/.demo_protocol/saw/bin/cryptol

# Belt-and-braces PATH: SAW's bin dir ships every solver (z3, yices,
# abc, cvc4, cvc5) plus saw and cryptol themselves, so listing it
# covers the lot. Rust llvm-as is resolved at runtime by rust/saw/run.ps1
# via $env:RUSTUP_LLVM_BIN (set by the publish-time wrapper below).
ENV PATH=/root/.demo_protocol/llvm/bin:/root/.demo_protocol/saw/bin:/root/.demo_protocol/bin:/usr/local/cargo/bin:${PATH}

# Compute RUSTUP_LLVM_BIN once at build time. The toolchain dir is
# stable across container starts so we don't need a runtime probe.
RUN rustup_llvm_bin="$(dirname "$(find /usr/local/rustup/toolchains -type f -name llvm-as | head -1)")" \
 && echo "RUSTUP_LLVM_BIN=${rustup_llvm_bin}" >> /etc/environment \
 && echo "export RUSTUP_LLVM_BIN=${rustup_llvm_bin}" >> /etc/profile.d/rustup-llvm.sh
# Re-declare as ENV so GitHub Actions' container step also sees it.
# (Compute path twice to keep this layer cacheable independently of the
# echo above — `find` is fast against the small rustup tree.)
ENV RUSTUP_LLVM_BIN=/usr/local/rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin

LABEL org.opencontainers.image.source="https://github.com/AmeliaRose802/formal-verification-demo-protocol" \
      org.opencontainers.image.description="demo_protocol CI toolchain: SAW ${SAW_VERSION}, LLVM ${LLVM_VERSION}, PowerShell ${PWSH_VERSION}, Rust ${RUST_TOOLCHAIN}, saw-spec-gen ${SAW_SPEC_GEN_TAG}" \
      org.opencontainers.image.licenses="MIT"

WORKDIR /work
CMD ["/bin/bash"]
