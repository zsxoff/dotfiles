# > macOS:
# > brew install eza fd font-symbols-only-nerd-font fzf jq ripgrep starship yq zoxide

# ----------------------------------------------------------------------------------------------------------------------
# ZSH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 30

plugins=(
    autoupdate
    battery
    direnv
    git
    gitfast
    you-should-use
    zsh-autosuggestions
    zsh-syntax-highlighting
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# ----------------------------------------------------------------------------------------------------------------------
# Path

# Local bin
export PATH="${HOME}/.local/bin:$PATH"

# Go
export PATH="${HOME}/go/bin:$PATH"

# Kubernetes Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# ----------------------------------------------------------------------------------------------------------------------
# Aliases

alias la="eza -la --icons -s type"
alias ll="eza -ll --icons -s type"
alias ls="eza --icons -s type"
alias tree="eza --tree --icons -s type"
alias kubectl="kubecolor"
alias k="kubectl"
alias kc="kubeconform"
alias vim="nvim"

# ----------------------------------------------------------------------------------------------------------------------
# Tools

export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always"
export FZF_DEFAULT_OPTS="--ansi"

source <(fzf --zsh)
source <(kubectl completion zsh)

eval "$(starship init zsh)"
eval "$(navi widget zsh)"
eval "$(zoxide init zsh)"
