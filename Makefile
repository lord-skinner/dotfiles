.PHONY: all bash zsh starship git

all: bash zsh

bash:
	@echo "Setting up bash configuration..."
	@if command -v bash > /dev/null; then \
	    ln -sf $(HOME)/dotfiles/.bashrc $(HOME)/.bashrc; \
	    ln -sf $(HOME)/dotfiles/.bash_profile $(HOME)/.bash_profile; \
	    echo "Bash configuration linked."; \
	else \
	    echo "Bash not found, skipping."; \
	fi

zsh:
	@echo "Setting up zsh configuration..."
	@if command -v zsh > /dev/null; then \
	    ln -sf $(HOME)/dotfiles/.zshrc $(HOME)/.zshrc; \
	    ln -sf $(HOME)/dotfiles/.zprofile $(HOME)/.zprofile; \
	    echo "Zsh configuration linked."; \
	else \
	    echo "Zsh not found, skipping."; \
	fi
