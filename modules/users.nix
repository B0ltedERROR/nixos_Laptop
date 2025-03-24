{ config, pkgs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.b0lt = {
    isNormalUser = true;
    description = "B0LT";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

}
