{pkgs, ...}: {
  stylix = {
    enable = true;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.nerdfonts.override {fonts = ["FiraMono"];};
        name = "FiraMonoNerdFont Regular";
      };
      sansSerif = {
        package = pkgs.liberation_ttf;
        name = "LiberationSans Regular";
      };
      serif = {
        package = pkgs.liberation_ttf;
        name = "LiberationSerif Regular";
      };
      sizes = {
        applicaitons = 12;
        terminal = 12;
        desktop = 12;
        popups = 12;
      };
    };
  };
}
