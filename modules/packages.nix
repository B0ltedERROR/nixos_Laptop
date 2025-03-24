{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

	# Command Applications
	ripgrep
	tmux
	neovim
	btop
	ranger
	nodejs_22
	curl
	fzf
	lazygit
	git

	# Visual Applications
	kitty
	firefox
	github-desktop
	vlc
	
	# compilers
	rustup
	gnumake
	
	
  ];
}
