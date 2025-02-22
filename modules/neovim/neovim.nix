{ config, pkgs, ...}: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    extraConfig = ''
      set number
      set number relativenumber
      set tabstop=2
      set shiftwidth=2
      set softtabstop=2
      set expandtab
    '';
  };
}
