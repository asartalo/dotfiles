let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11"; 
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
{
  fira-code-nf-complete = pkgs.callPackage ./fira-code-nf-complete.nix { };
  # hello = pkgs.callPackage ./hello.nix { };
}
