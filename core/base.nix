{ config, lib, pkgs, ... }:

{
  imports =[ 
      ./hardware-configuration.nix
      ./modules/modules.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "frosty"; 

  networking.networkmanager.enable = true;

  time.timeZone = "America/Chicago";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    jack.enable = true;
  };

  users.users.jeffrey = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; 
    packages = with pkgs; [
      tree
    ];
  };

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    neovim 
    wget
    # git
    discord
    alacritty
    rofi
    hyprshot
    # gcc
  ];

  system.stateVersion = "25.11"; # Did you read the comment?
}

