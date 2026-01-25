{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  pname = "bio-site";
  version = "1.0.0";
  src = ./.;

  buildInputs = [ pkgs.cobalt ];

  buildPhase = ''
    cobalt build
  '';

  installPhase = ''
    mkdir -p $out
    cp -r _site/* $out/
    cp -r assets/* $out/
    rm -rf $out/assets
    rm -rf $out/default.nix
  '';
}

