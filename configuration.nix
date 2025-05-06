# NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-24.11.tar.gz";
in
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules
      (import "${home-manager}/nixos")
    ];

  home-manager.backupFileExtension = "hm-backup";
  home-manager.users.b0lt = {
    imports = [
      ./home
    ];
  };

  system.stateVersion = "24.11"; 
}
