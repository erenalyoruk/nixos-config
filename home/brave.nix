{ pkgs, ... }: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      { id = "nngceckbapebfimnlniiiahkandclblb"; }
    ];
  };
}
