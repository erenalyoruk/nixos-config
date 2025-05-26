{ pkgs, host, ... }:
let
  inherit (import ../hosts/${host}/variables.nix)
    stylixImage;
in
{
  stylix = {
    enable = true;
    image = stylixImage;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
    opacity.terminal = 1.0;

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
      sansSerif = {
        package = pkgs.ubuntu_font_family;
        name = "Ubuntu Sans";
      };
      serif = {
        package = pkgs.ubuntu_font_family;
        name = "Ubuntu";
      };
      sizes = {
        applications = 12;
        terminal = 12;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
