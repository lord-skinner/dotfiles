# Shell compatibility helpers
shell_type() {
    if [ -n "$ZSH_VERSION" ]; then
        echo "zsh"
    elif [ -n "$BASH_VERSION" ]; then
        echo "bash"
    else
        echo "unknown"
    fi
}

# Safe way to run shell-specific commands
run_if_shell() {
    local target_shell="$1"
    local command_to_run="$2"
    
    if [ "$(shell_type)" = "$target_shell" ]; then
        eval "$command_to_run"
    fi
}

# Existing functions
fcd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m) && cd "$dir"
}

pr() {
  current_branch=$(git branch --show-current)
  if [ -z "$current_branch" ]; then
    echo "Not on a branch."
    return 1
  fi

  if [ "$1" = "-d" ]; then
    gh pr create --base main --head "$current_branch" --draft
  else
    gh pr create --base main --head "$current_branch"
  fi
}
