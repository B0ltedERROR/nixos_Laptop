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
	zsh
	zoxide
	zsh-powerlevel10k
	oh-my-zsh
	eza
	bat

	# Visual Applications
	kitty
	firefox
	github-desktop
	vlc
	discord
	lutris
	gimp
	vial
	obsidian
	
	# compilers
	rustup
	gnumake
	zig_0_12
	
  ];
	environment.variables.EDITOR = "nvim";
	environment.variables.VISUAL = "nvim";

	programs.neovim.defaultEditor = true;
}
