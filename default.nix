{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "bio-site";
  version = "1.0.0";
  src = ./.;

  installPhase = ''
    mkdir -p $out/public
    cp -r public/* $out/public/
    cp index.js $out/
  '';
}
