{
  description = "pygobject-stubs-patches";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      utils,
      ...
    }:
    utils.lib.eachDefaultSystem (
      system:
      let
        overlay = import ./overlay.nix;
        pkgs = nixpkgs.legacyPackages.${system}.extend;
      in
      {
        formatter = pkgs.nixfmt-rfc-style;
        overlays = overlay;
        # packages.default = pkgs.callPackage ./derivation.nix { };
      }
    );
}
