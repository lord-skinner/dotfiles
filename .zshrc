source ~/dotfiles/.export.sh
source ~/dotfiles/.alias.sh
source ~/dotfiles/.python.sh
source ~/dotfiles/.functions.sh

if [ -f ~/.env.sh ]; then
    source ~/.env.sh
else
    echo "~/.env.sh not found, skipping..."
fi

eval "$(starship init zsh)"