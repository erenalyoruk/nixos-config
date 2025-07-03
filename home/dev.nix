{ pkgs, ... }: {
  home.packages = with pkgs; [
    nodejs_22
#    llvmPackages_20.clang-tools
    llvmPackages_20.clang-unwrapped
    gnumake
    ninja
    cmake
    jq
    yq
    docker-compose
  ];
}
