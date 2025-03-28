{ config, lib, pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      neo-tree = {
	enable = true;
      };
    };

    keymaps = [
      {
	key = "<C-n>";
	action = ":Neotree toggle<CR>";
      }
      {
	key = "<C-m>";
	action = ":Neotree reveal<CR>";
      }
    ];
  };
}


