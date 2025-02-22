{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      noto-fonts-emoji
      noto-fonts-cjk-sans
      font-awesome
      symbola
      material-icons
      liberation_ttf
      fira-code
      fira-code-symbols
      (nerdfonts.override {fonts = ["FiraMono"];})
    ];
  };
}
