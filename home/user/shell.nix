{ config, pkgs, ... }:
let 
  myAliases = {
    cat = "bat";
    ls = "eza --icons=always";
    
    fullClean = '' 
        nix-collect-garbage --delete-old

        sudo nix-collect-garbage -d
    '';
    rebuild = "sudo nixos-rebuild switch";
    fullRebuild = "sudo nixos-rebuild switch && home-manager switch -b backup";
    homeRebuild = "home-manager switch -b backup";
    sdupe = "sudo -E -s"
};
in
{
  programs = {
	zsh = {
		enable = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		initExtra = '' 
            source ~/.p10k.zsh && 
            eval "$(zoxide init --cmd cd zsh)" && 
	    printf '\n%.0s' {1..$LINES}
        ''; 
		shellAliases = myAliases;
		oh-my-zsh = {
			enable = true;
			custom = "$HOME/.oh-my-custom";
			# theme = "powerlevel10k/powerlevel10k";
			plugins = [
				"git"
				"history"
				"wd"
			];
		};
	};
  };
}
