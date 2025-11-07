{ config, lib,  ...}:
{
  imports = [
    ./packages.nix
    ./display.nix
    ./git.nix
  ];
}
