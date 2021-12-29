#!/bin/sh

# install rust from the script
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install cargo-generate

# install rust_analyzer from arch repository
paru -S \
  rust-analyzer \
  --noconfirm

# install wasm-pack
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
