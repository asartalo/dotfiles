{
  description = "My Home Manager flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs: {
    defaultPackage.x86_64-linux = inputs.home-manager.defaultPackage.x86_64-linux;
    defaultPackage.x86_64-darwin = inputs.home-manager.defaultPackage.x86_64-darwin;

    homeConfigurations = {
      "wayne" = inputs.home-manager.lib.homeManagerConfiguration {
        system = "x86_64-linux"; # replace with x86_64-darwin on mac
        homeDirectory = "/home/wayne";
        username = "wayne";
        configuration.imports = [ ./config/nixpkgs/home.nix ];
      };
    };
  };
}
