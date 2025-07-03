{ username, ... }: {
  nix = {
    settings = {
      auto-optimise-store = true;
      system-features = [ "nix-command" "flakes" ];
      substituters = ["https://hyprland.cachix.org"];
      trusted-substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
      allowed-users = [ "${username}" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Istanbul";
  i18n.supportedLocales = [ "en_US.UTF-8/UTF-8" "tr_TR.UTF-8/UTF-8" ];
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ALL = "en_US.UTF-8";
  };
  console.keyMap = "us";
  system.stateVersion = "25.05";
}
