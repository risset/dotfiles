# Navigation
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# Colour-modified commands
alias ls='ls --color=auto'
alias l='ls -lh --color=auto'
alias la='ls -lha --color=auto'
alias diff='colordiff'
alias grep='grep -i --color=auto'
alias fgrep='fgrep -i --color=auto'
alias egrep='egrep -i --color=auto'

# Shell
alias duh='sudo du -h --max-depth=1'

# C++
alias cbuild='cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && mv compile_commands.json ..'

# Applications
alias e=emacsclient
alias restartemacs='killall -9 emacs && emacs --daemon &'
alias tmr='transmission-remote'
alias tn='tmux new-session -s'
alias ta='tmux attach-session -t'
alias tk='tmux kill-session -t'
alias untar='tar -zxvf'

# Git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

