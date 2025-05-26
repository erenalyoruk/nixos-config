{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    settings = {
      general = {
        live_config_reload = true;
      };

      terminal = {
        shell = "${pkgs.zsh}/bin/zsh";
      };
    };
  };
}
