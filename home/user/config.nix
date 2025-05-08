let configDir = ../dots;
in
{
  home.file = {
      ".config/nvim".source = "${configDir}/nvim";
      ".config/cinnamon".source = "${configDir}/cinnamon";
      ".config/kitty".source = "${configDir}/kitty";
      ".config/btop".source = "${configDir}/btop";
  };
}
