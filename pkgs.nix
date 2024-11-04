{ config, pkgs, ... }:

{


  environment.systemPackages = with pkgs; [
    firefox
    obsidian
    calibre
    vlc
    git
    gnupg
    pinentry-qt
    stow
    tldr
    curl
    ripgrep
    btop
    neofetch
    tmux
    neovim
    lazygit
    fzf
    ranger
    gnumake
    llvm
    zsh
    oh-my-zsh
  ];

}
