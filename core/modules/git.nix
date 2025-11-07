{ config, packages, ... }:

{
  services.openssh = {
    enable = true;
  };

  programs.ssh.startAgent = true;
  programs.git.enable = true;
}
