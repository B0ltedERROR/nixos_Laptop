{ config, pkgs, ... }:

{

  # Cinnamon desktop
  services = {
    xserver = {
      # Configure keymap in X11
      xkb = {
        layout = "us";
        variant = "";
      };
      enable = true;
      displayManager.lightdm.enable = true;
      desktopManager = {
        cinnamon.enable = true;
      };
    };
    libinput.enable = true;
    displayManager.defaultSession = "cinnamon";
  };

}

