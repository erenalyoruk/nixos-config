{ pkgs, ... }: {
  imports = [
    ./hyprland
    ./scripts
    ./neovim
    ./rofi
    ./zsh
    ./alacritty.nix
    ./bat.nix
    ./brave.nix
    ./dev.nix
    ./eza.nix
    ./git.nix
    ./gtk.nix
    ./go.nix
    ./fzf.nix
    ./stylix.nix
    ./xdg.nix
  ];
}
