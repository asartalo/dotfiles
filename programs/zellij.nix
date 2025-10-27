{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    zellij
  ];

  # programs.zellij = {
  #   enable = true;
  #   enableZshIntegration = true;
  #   catppuccin.enable = true;

  #   settings = {
  #     keybinds.normal = {
  #       unbind = "Ctrl q";
  #       bind = ("Alt g" { SwitchToMode = "Normal"; } );
  #     };
  #   };
  # };

  # home.file = {
  #   ".config/zellij/config.kdl".source = ../config/zellij/config.kdl;
  # };
}
