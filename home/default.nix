{ config, pkgs, lib, ... }:

{

imports = [
    ./user
  ];

    home = {
      username = "b0lt";
      homeDirectory = "/home/b0lt";
      stateVersion = "24.11";
    };
}
