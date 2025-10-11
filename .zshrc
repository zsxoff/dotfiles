# > macOS:
# > brew install direnv eza fd font-symbols-only-nerd-font fzf jq ripgrep starship yq zoxide

# > Arch Linux:
# > sudo pacman -S --needed direnv eza fd ttf-nerd-fonts-symbols{,-common,-mono} fzf jq ripgrep starship yq zoxide

# > Customize Starship via preset:
# > starship preset plain-text-symbols -o ~/.config/starship.toml

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

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

plugins=(
    battery
    direnv
    git
    gitfast
    autoupdate              # https://github.com/tamcore/autoupdate-oh-my-zsh-plugins
    you-should-use          # https://github.com/MichaelAquilina/zsh-you-should-use
    zsh-autosuggestions     # https://github.com/zsh-users/zsh-autosuggestions
    zsh-syntax-highlighting # https://github.com/zsh-users/zsh-syntax-highlighting
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
# Sources

source <(fzf --zsh)
source <(kubectl completion zsh)

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
alias sa="source ./.venv/bin/activate"
alias sd="deactivate"
alias zed="zeditor"

if [[ "$(uname -s)" == "Linux" ]]; then
    alias zed="env -u WAYLAND_DISPLAY zeditor"
fi

# ----------------------------------------------------------------------------------------------------------------------
# Tools

export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always"
export FZF_DEFAULT_OPTS="--ansi"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
