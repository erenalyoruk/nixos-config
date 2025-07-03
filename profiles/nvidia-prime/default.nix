{ host, ... }:
let
  inherit (import ../../hosts/${host}/variables.nix)
    amdgpuBusId
    nvidiaBusId;
in
{
  imports = [
    ../../drivers
  ];

  services.xserver.videoDrivers = [ "amdgpu" "nvidia" ];

  drivers.amdgpu.enable = true;
  drivers.nvidia.enable = true;
  drivers.nvidia-prime = {
    enable = true;
    amdgpuBusId = "${amdgpuBusId}";
    nvidiaBusId = "${nvidiaBusId}";
  };

  environment.variables = {
    LIBVA_DRIVER_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    NVD_BACKEND = "direct";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
  };
}
