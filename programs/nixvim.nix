{ config, lib, pkgs, ... }:

{

  imports = [
    ./nixvim/plugins/neo-tree.nix
  ];

  # Use catpuccin theme https://github.com/catppuccin/nix
  catppuccin = {
    enable = lib.mkDefault true;
    flavour = lib.mkDefault "mocha";
  };

  programs.nixvim = {
    enable = true;
    clipboard.register = "unnamedplus";

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      showmode = false;
      breakindent = true;
      undofile = true;
      ignorecase = true;
      smartcase = true;

      # Keep signcolumn on by default
      signcolumn = "yes";

      # Configure how new splits should be opened
      splitright = true;
      splitbelow = true;

      # Sets how neovim will display certain whitespace in the editor.
      #  See `:help 'list'`
      #  and `:help 'listchars'`
      list = true;
      listchars = { tab = "» "; trail = "·"; nbsp = "␣"; };


      # Preview substitutions live, as you type!
      inccommand = "split";

      # Show which line your cursor is on
      cursorline = true;

      # Minimal number of screen lines to keep above and below the cursor.
      scrolloff = 10;

      # Set highlight on search, but clear on pressing <Esc> in normal mode
      hlsearch = true;
    };

    globals = {
      mapleader = " ";
      maplocalleader = " ";
      have_nerd_font = true;
    };

    plugins = {
      # Detect tabstop and shiftwidth automatically 
      sleuth.enable = true;

      # "gc" to comment visual regions/lines
      comment.enable = true;
    };

    keymaps = [
      {
	mode = "n"; 
	key = "<Esc>";
	action = "<cmd>nohlsearch<CR>";
      }
    ];

    colorschemes.catppuccin.enable = true;
  };
}

