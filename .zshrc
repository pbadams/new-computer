# enable the default zsh completions!
autoload -Uz compinit && compinit

alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -GwF'
alias ll='ls -alh'
alias zshrc='code ~/.zshrc'

# 1Password CLI command completions
alias opeval='eval $(op signin auth0)'
eval "$(op completion zsh)"; compdef _op op

HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt auto_pushd
unsetopt pushd_ignore_dups
setopt pushdminus

# Completion
setopt auto_menu
setopt always_to_end
setopt complete_in_word
unsetopt flow_control
unsetopt menu_complete
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

# PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Other
setopt prompt_subst

# Load .function file
source ~/.function