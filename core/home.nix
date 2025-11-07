{ config, pkgs, ...}:

{
  home.username = "jeffrey";
  home.homeDirectory = "/home/jeffrey";
  home.stateVersion = "25.05";

  programs.kitty.enable = true;
}
