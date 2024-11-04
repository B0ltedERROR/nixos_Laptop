{ pkgs, ... }:

{

  # Fonts install
  fonts.packages = with pkgs; [
    font-awesome
    jetbrains-mono

    (nerdfonts.override { fonts = [
      "JetBrainsMono"
      ]; })
  ];
}
