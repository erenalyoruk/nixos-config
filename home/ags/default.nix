{ inputs, pkgs, ... }: {
  imports = [ inputs.ags.homeManagerModules.default ];

  programs.ags = {
    enable = true;
    configDir = ./config;

    extraPackages = with pkgs; [
      inputs.astal.packages.${pkgs.system}.battery
    ];
  };

  home.packages = [
    inputs.astal.packages.${pkgs.system}.io
    inputs.astal.packages.${pkgs.system}.notifd
  ];
}
