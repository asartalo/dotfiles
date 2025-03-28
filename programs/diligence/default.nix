let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/master";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
{
  # diligence = pkgs.callPackage ./derivation.nix { };
  diligence-appimage = pkgs.callPackage ./derivation-appimage.nix { };
}
