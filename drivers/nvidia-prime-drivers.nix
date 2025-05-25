{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.drivers.nvidia-prime;
in
{
  options.drivers.nvidia-prime = {
    enable = mkEnableOption "Enable Nvidia Prime Drivers";
    amdgpuBusId = mkOption {
      type = types.str;
      default = "PCI:1:0:0";
    };
    nvidiaBusId = mkOption {
      type = types.str;
      default = "PCI:2:0:0";
    };
  };

  config = mkIf cfg.enable {
    hardware.nvidia = {
      prime = {
        offload = {
          enable = true;
	  enableOffloadCmd = true;
	};

	amdgpuBusId = "${cfg.amdgpuBusId}";
	nvidiaBusId = "${cfg.nvidiaBusId}";
      };

      powerManagement.finegrained = true;
    };
  };
}
