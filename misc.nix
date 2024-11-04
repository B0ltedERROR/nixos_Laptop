{ config, pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # set defualts
  environment.variables.EDITOR = "nvim";

  # zsh options
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # neovim options
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # gpg pinentry fix
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    # pinentryPackage  = "curses";
    enableSSHSupport = true;
  };

  # Tmux configurations
    programs.tmux = {
        enable = true;
        escapeTime = 0;
        
        plugins = with pkgs; [
            tmuxPlugins.vim-tmux-navigator
            tmuxPlugins.resurrect
            tmuxPlugins.continuum
            tmuxPlugins.catppuccin
        ];
	
        extraConfig = ''
            set -g default-terminal "xterm-256color"
            set -ga terminal-overrides ",*256col*:Tc"
            set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q'
            set-environment -g COLORTERM "truecolor"
            set -g prefix C-a
            unbind C-b
            bind-key C-a send-prefix

            unbind %
            bind | split-window -h

            unbind '"'
            bind - split-window -v

            unbind r
            bind r source-file ~/.tmux.conf

            bind -r j resize-pane -D 5
            bind -r k resize-pane -U 5
            bind -r l resize-pane -R 5
            bind -r h resize-pane -L 5

            bind -r m resize-pane -Z

            set -g mouse on

            set-window-option -g mode-keys vi

            bind-key -T copy-mode-vi 'v' send -X begin-selection
            bind-key -T copy-mode-vi 'y' send -X copy-selection

            unbind -T copy-mode-vi MouseDragEnd1Pane

            set -g @resurrect-capture-pane-contents 'on'
            set -g @continuum-restore 'on'
            set -g @catppuccin-flavour 'macchiato'
        '';
    };

}
