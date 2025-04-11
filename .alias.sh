# list
alias ld='ls -d */'
alias ll='ls -la'

# nvim
alias n='nvim'

# docker
alias deepclean="docker stop $(docker ps -q) && docker system prune -af --volumes"

# terraform
alias tf="terraform"
alias ti="terraform init"
alias twl="terraform workspace list"
alias twn="terraform workspace new"

# gke
alias cluster="kubectx"
alias namespace="kubens"
alias k="kubectl"
