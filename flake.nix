{
  description = "My Home Manager flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # nix will normally use the nixpkgs defined in home-managers inputs, we only want one copy of nixpkgs though
    # darwin.url = "github:lnl7/nix-darwin";
    # darwin.inputs.nixpkgs.follows = "nixpkgs"; # ...
  };

  outputs = {nixpkgs, home-manager, ...}: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
    defaultPackage.x86_64-darwin = home-manager.defaultPackage.x86_64-darwin;

    homeConfigurations = {
      "wayne" = home-manager.lib.homeManagerConfiguration {
        # system = "x86_64-linux"; # replace with x86_64-darwin on mac
        # homeDirectory = "/home/wayne";
        # username = "wayne";
        pkgs = nixpkgs.legacyPackages.x86_64-darwin;
        modules = [ ./config/nixpkgs/home.nix ];
      };
    };
  };
}
