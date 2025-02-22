{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      general.live_config_reload = true;
      terminal.shell = "${pkgs.zsh}/bin/zsh";
    };
  };
}
