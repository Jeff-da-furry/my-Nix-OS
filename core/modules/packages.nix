{ config, pkgs, ...}:

{
  programs = {

    firefox = {
      enable = true;
    };

    steam = {
    enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
  (prismlauncher.override {
    # Add binary required by some mod
    additionalPrograms = [ ffmpeg ];

    # Change Java runtimes available to Prism Launcher
    jdks = [
      pkgs.graalvmPackages.graalvm-ce 
      zulu8
      zulu17
      zulu
    ];
  })
];

}
