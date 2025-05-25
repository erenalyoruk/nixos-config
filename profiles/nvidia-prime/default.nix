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

  drivers.amdgpu.enable = true;
  drivers.nvidia-prime = {
    enable = true;
    amdgpuBusId = "${amdgpuBusId}";
    nvidiaBusId = "${nvidiaBusId}";
  };
}
