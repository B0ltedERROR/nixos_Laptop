{ config, pkgs, ... }:

{

    services={
        xserver = {
            enable = true;

            windowManager.awesome = {
                enable = true;
                luaModules = with pkgs.luaPackages; [
                    luarocks # is the package manager for Lua modules
                    luadbi-mysql # Database abstraction layer
                ];

            };
        };

        displayManager = {
            sddm.enable = true;
            defaultSession = "none+awesome";
        };
    };

  environment.systemPackages = with pkgs; [
	blueman
	picom
	nitrogen
	gnome.nautilus
	dmenu
  ];

}

