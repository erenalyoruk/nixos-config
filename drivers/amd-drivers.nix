{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.drivers.amdgpu;
in
{
  options.drivers.amdgpu = {
    enable = mkEnableOption "Enable AMDG Drivers";
  };

  config = mkIf cfg.enable {
    services.xserver.videoDrivers = [ "amdgpu" ];

    boot.initrd.kernelModules = [ "amdgpu" ];

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };
  };
}
