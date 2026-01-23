#!/usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p bash nodejs
#! nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/nixos-unstable

npx @11ty/eleventy --serve
