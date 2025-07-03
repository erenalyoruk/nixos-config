{ pkgs, ... }: {
  home.packages = with pkgs; [
    nodejs_22
    llvmPackages_20.clang-unwrapped
    gnumake
    ninja
    cmake
    python314
    jq
    yq
    docker-compose
    vulkan-tools
    vulkan-helper
    vulkan-headers
    vulkan-extension-layer
    vulkan-validation-layers
    vcpkg
  ];
}
