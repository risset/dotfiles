# Vi-mode
set -o vi

# Reverse search
bindkey '^R' history-incremental-search-backward

# fasd
eval "$(fasd --init auto)"
