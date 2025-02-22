{...}: {
  imports = [
    ./local-hardware-clock.nix
    ./nvidia-drivers.nix
    ./vm-guest-services.nix
  ];
}
