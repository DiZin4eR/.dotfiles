set -U fish_greeting

alias vim="nvim"

bind \cl 'clear; fastfetch; commandline -f repaint'

if status is-interactive
    # Commands to run in interactive sessions can go here
    
    fastfetch
end
