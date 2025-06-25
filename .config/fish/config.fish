set -U fish_greeting

alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

bind \cl 'clear; fastfetch; commandline -f repaint'

if status is-interactive
    # Commands to run in interactive sessions can go here
    
    fastfetch
end
