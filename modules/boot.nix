{ config, pkgs, lib, ...}:

{

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  ############# lanzaboote #######################
  # boot.loader.systemd-boot.enable = lib.mkForce false;

  #boot.lanzaboote = {
  #  enable = true;
  #  pkiBundle = "/var/lib/sbctl";
  #};

}
