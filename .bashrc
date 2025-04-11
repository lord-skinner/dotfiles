source ~/dotfiles/.export.sh
source ~/dotfiles/.alias.sh
source ~/dotfiles/.python.sh

if [ -f ~/.env.sh ]; then
    source ~/.env.sh
else
    echo "~/dotfiles/.env.sh not found, skipping..."
fi

eval "$(starship init bash)"
