_: {
  programs.eza = {
    enable = true;
    icons = "auto";
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = false;
    git = true;

    extraOptions = [
      "--group-directories-first"
      "--no-quotes"
      "--header"
      "--git-ignore"
      "--icons=always"
      "--classify"
      "--hyperlink"
    ];
  };

  home.shellAliases = {
    ls = "eza";
    lt = "eza --tree --level=2";
    ll = "eza -lhh --no-user --long";
    la = "eza -lah";
    tree = "eza --tree";
  };
}
