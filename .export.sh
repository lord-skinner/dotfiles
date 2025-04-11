export STARSHIP_CONFIG="$HOME/dotfiles/starship.toml"
export GIT_CONFIG_GLOBAL="~/dotfiles/.gitconfig"

# kubectl completion - handle both shells
if [ -n "$ZSH_VERSION" ]; then
    # Zsh-specific code
    if [[ $commands[kubectl] ]]; then
        # Enable zsh completion system before sourcing
        autoload -Uz compinit
        compinit
        source <(kubectl completion zsh)
    fi
elif [ -n "$BASH_VERSION" ]; then
    # Bash-specific code
    command -v kubectl >/dev/null 2>&1 && source <(kubectl completion bash)
fi