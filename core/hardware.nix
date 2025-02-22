{ pkgs, ... }: {
  hardware = {
    graphics.enable = true;

    enableRedistributableFirmware = true;
  };

  local.hardware-clock.enable = false;
}
