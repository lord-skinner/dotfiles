.PHONY: all shell git

all: shell git

shell:
	@if command -v zsh >/dev/null 2>&1; then \
		echo "Setting up zsh configuration..."; \
		ln -sf $(HOME)/dotfiles/.zshrc $(HOME)/.zshrc; \
		ln -sf $(HOME)/dotfiles/.zprofile $(HOME)/.zprofile; \
		echo "Zsh configuration linked."; \
	elif command -v bash >/dev/null 2>&1; then \
		echo "Setting up bash configuration..."; \
		ln -sf $(HOME)/dotfiles/.bashrc $(HOME)/.bashrc; \
		ln -sf $(HOME)/dotfiles/.bash_profile $(HOME)/.bash_profile; \
		echo "Bash configuration linked."; \
	else \
		echo "Error: Neither zsh nor bash is installed" >&2; \
		exit 1; \
	fi

git:
	@echo "Setting up git configuration..."
	@if command -v git >/dev/null; then \
		ln -sf $(HOME)/dotfiles/.gitignore_global $(HOME)/.gitignore_global; \
		ln -sf $(HOME)/dotfiles/.gitconfig $(HOME)/.gitconfig; \
		echo "Git configuration linked."; \
	else \
		echo "Git not found, skipping."; \
	fi
