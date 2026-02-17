{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "bio-site";
  version = "1.0.0";
  src = ./.;

  buildInputs = [ pkgs.bun ];

  buildPhase = ''
    bun build index.js \
      --outdir dist \
      --minify \
      --target bun
  '';

  installPhase = ''
    mkdir -p $out
    cp -r dist/* $out/
    cp -r public $out/public
  '';
}
