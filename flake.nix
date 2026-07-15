{
  description = "dotmatrix — Graphviz graph gallery, built with sigal";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      devShells = forAllSystems (system:
        let pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [ pkgs.sigal ];
          };
        });

      packages = forAllSystems (system:
        let pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          # The built static site. `nix build .#gallery` -> ./result
          gallery = pkgs.stdenv.mkDerivation {
            pname = "dotmatrix-gallery";
            version = "0.1.0";
            src = self;
            nativeBuildInputs = [ pkgs.sigal ];
            buildPhase = "sigal build";
            installPhase = "cp -r build $out";
          };
        });
    };
}
