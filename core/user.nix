{ pkgs, inputs, username, host, profile, ... }:
let
  inherit (import ../hosts/${host}/variables.nix)
    gitUsername;
in
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs username host profile; };
    users.${username} = {
      imports = [./../modules];
      home = {
        username = "${username}";
	homeDirectory = "/home/${username}";
	stateVersion = "24.11";
      };
      programs.home-manager.enable = true;
    };
  };

  users.mutableUsers = true;
  
  users.users.${username} = {
    isNormalUser = true;
    description = "${gitUsername}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };

  nix.settings.allowed-users = [ "${username}" ];
}
