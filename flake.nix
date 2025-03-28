{
  description = "My Home Manager flake";

  inputs = {
    catppuccin.url = "github:catppuccin/nix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixgl = {
      url = "github:nix-community/nixGL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    catppuccin,
    home-manager,
    nixgl,
    nixpkgs,
    nixvim,
    self,
    ...
  }@inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      hlib = home-manager.lib;
      pkgs = nixpkgs.legacyPackages.${system};
      overlays = [ nixgl.overlay ];
    in {
    nixosConfigurations = {
      alpha = lib.nixosSystem {
        # system = system;
	inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix

	  catppuccin.nixosModules.catppuccin
        ];
      };
    };

    # Home Manager Standalone
    homeConfigurations = {
      wayne = hlib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
	  catppuccin.homeManagerModules.catppuccin
	  nixvim.homeManagerModules.nixvim
        ];
        extraSpecialArgs = {
          inherit nixgl;
        };
      };
    };
  };
}
