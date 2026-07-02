# cuzic/homebrew-isekai-terminal

Homebrew (Linuxbrew) tap for [isekai-terminal](https://github.com/cuzic/isekai-terminal).

## Install

```sh
brew install cuzic/isekai-terminal/isekai-helper
```

## What is `isekai-helper`?

A minimal Rust binary that runs on your SSH server and relays a single QUIC
stream to `127.0.0.1:22`, letting the isekai-terminal Android app keep an SSH
session alive across Wi-Fi/cellular network switches via QUIC connection
migration. See the [isekai-terminal](https://github.com/cuzic/isekai-terminal)
`HELPER_PROTOCOL.md` for the wire protocol and `PLAN.md` (Phase 7) for the
design background.

Prebuilt as a static `musl` binary for `x86_64` and `aarch64` Linux; this
tap only ships those Linux binaries (no macOS build).

This is a low-priority, manual-install fallback -- isekai-terminal normally
bootstraps `isekai-helper` onto the server automatically over SSH the first
time you enable it in a connection profile. Use this tap if you'd rather
install it yourself ahead of time.
