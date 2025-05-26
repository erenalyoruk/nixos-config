{ pkgs, ... }: {
  imports = [
    ./hyprland
    ./scripts
    ./neovim
    ./rofi
    ./zsh
    ./alacritty.nix
    ./brave.nix
    ./git.nix
    ./gtk.nix
    ./stylix.nix
    ./xdg.nix
  ];

  home.packages = with pkgs; [
    eza
  ];
}
