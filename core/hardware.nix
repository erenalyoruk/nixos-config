{ pkgs, ... }: {
  hardware = {
    enableRedistributableFirmware = true;
    graphics.enable = true;
    bluetooth.enable = true;
    bluetooth.powerOnBoot = false;
  };
}
