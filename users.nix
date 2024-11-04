{ config, pkgs, ... }:

{
  users.users.b0lt = {
    isNormalUser = true;
    description = "b0lt";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
}

