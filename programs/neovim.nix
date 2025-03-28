{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    neovim
    luajitPackages.luarocks
  ];

  home.file = {
    ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "/home/wayne/.dotfiles/config/nvim";
  };
}
