{ profile, ... }: {
  services = {
    libinput.enable = true;
    fstrim.enable = true;
    openssh.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
