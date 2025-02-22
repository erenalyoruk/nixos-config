{pkgs, ...}: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    extensions = [
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # ublock origin
      "nngceckbapebfimnlniiiahkandclblb" # bitwarden password manager
      "pkehgijcmpdhfbdbbnkijodmdjhbjlgp" # privacy badger
    ];
    commandLineArgs = [
      "--enable-features=UseOzonePlatform"
      "--ozone-platform=wayland"
      "--enable-features=VaapiVideoDecodeLinuxGL,VaapiVideoEncoder,VaapiVideoDecoder"
      "--enable-features=PlatformHEVCDecoderSupport,UseMultiPlaneFormatForHardwareVideo"
      "--enable-features=Vulkan,VulkanFromANGLE,DefaultANGLEVulkan"
      "--enable-features=WaylandWindowDecorations"
      "--enable-features=WaylandFractionalScaleV1"
      "--enable-features=WebRTCPipeWireCapturer"
    ];
  };
}
