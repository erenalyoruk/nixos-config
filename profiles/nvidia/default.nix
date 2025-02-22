{host, ...}: {
  imports = [
    ../../hosts/${host}
    ../../drivers
    ../../core
  ];

  drivers.nvidia.enable = true;
}
