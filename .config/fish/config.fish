#!/bin/fish
if status is-interactive
    # Commands to run in interactive sessions can go here
set EDITOR /usr/bin/nvim
set VISUAL /usr/bin/nvim
set PAGER moar
set MANPAGER moar
set BROWSER /usr/bin/firefox
set MOAR -color=16M -style rrt

alias lg='lazygit'
alias rm='rm -I'
alias ls='exa --icons --color-scale --header'
alias reload='source ~/.config/fish/config.fish'
alias python='python3'
alias cls='clear'
alias :q='exit'
alias quit='exit'
alias n='nvim'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
end

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
