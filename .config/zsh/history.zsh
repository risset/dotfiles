export HISTFILE=~/.zsh_history
export SAVEHIST=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT="[%F %T] "

# Save command's beginning timestamp and duration to HISTFILE
setopt extended_history

# New history lines are appended to HISTFILE
setopt inc_append_history

# Share history between instances
setopt share_history

