{ config, lib, pkgs, ... }:
{
  hardware.nvidia.open = true;

  services.seatd.enable = true;
  services.dbus.enable = true;

  services.xserver = {
    videoDrivers = ["nvidia"];
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland";
	user = "jeffrey";
      };
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
