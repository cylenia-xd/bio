#!/usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p bash nodejs
#! nix-shell -I nixpkgs=github:NixOS/nixpkgs/nixos-unstable

npx @11ty/eleventy
