{ config, lib , pkgs, ... }:

{
  programs.git = {
    enable = true;
    package =pkgs.gitFull;

    config = {
      user.name = "Jeff-da-furry";
      user.email = "jeffrey-w-holtman@outlook.com";
      init.defaultBranch = "main";
      core.editor = "nvim";
      pull.rebase = true;
    };
  };

  programs.ssh.startAgent = true;
  environment.variables.SSH_AUTH_SOCK = "/run/user/1000/ssh-agent";

  security.sudo.extraConfig = ''
    Defaults env_keep += "SSH_AUTH_SOCK"
  '';

}
