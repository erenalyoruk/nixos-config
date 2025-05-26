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

      font = {
        size = 11;
        normal = {
          family = "JetBrainsMono Nerd Font";
	        style = "Regular";
	      };
      };
    };
  };
}
