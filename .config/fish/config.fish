set -U fish_greeting

alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

bind \cl 'clear; fastfetch; commandline -f repaint'

# Start ssh-agent if not running
if not pgrep -u (id -u) ssh-agent > /dev/null
    eval (ssh-agent -c)
end

# Add key if not already added
ssh-add -l | grep "ED25519" > /dev/null; or ssh-add ~/.ssh/id_ed25519 > /dev/null


if status is-interactive
    # Commands to run in interactive sessions can go here
    
    fastfetch
end
