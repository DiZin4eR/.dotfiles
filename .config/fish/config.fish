set -U fish_greeting

alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

bind \cl 'clear; fastfetch; commandline -f repaint'

# Start keychain and load your key
keychain --quiet id_ed25519
if test -f ~/.keychain/windel-fish
    source ~/.keychain/windel-fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    
    fastfetch
end
