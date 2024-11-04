
{ config, ... }:

{

  networking.hostName = "nixos-surface"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

}
