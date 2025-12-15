{ config, pkgs, ... }:

{

  # console.useXkbConfig = true;
  # services.xserver.xkbOptions = "ctrl:nocaps";

  services.xserver.xkb.options = "ctrl:swapcaps";

}

