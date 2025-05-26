{ pkgs, ... }: {
  imports = [
    ./hyprland
    ./scripts
    ./neovim
    ./zsh
    ./alacritty.nix
    ./brave.nix
    ./git.nix
    ./rofi.nix
    ./xdg.nix
  ];

  home.packages = with pkgs; [
    eza
  ];
}
