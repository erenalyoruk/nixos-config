{ pkgs, ... }: {
  home.packages = [
    (import ./rofi-launcher.nix { inherit pkgs; })
    (import ./nvidia-offload.nix { inherit pkgs; })
  ];
}
