{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-monochrome-emoji
      liberation_ttf
      nerd-fonts.jetbrains-mono
      ubuntu_font_family
      dejavu_fonts
      font-awesome
      inter
      ibm-plex
      material-icons
      roboto
      roboto-mono
    ];
  };
}
