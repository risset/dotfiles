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
alias build='cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && mv compile_commands.json ..'

# Applications
alias restartemacs='killall -9 emacs && emacs --daemon &'
alias tmr='transmission-remote'
alias tn='tmux new-session -s'
alias ta='tmux attach-session -t'
alias tk='tmux kill-session -t'
alias untar='tar -zxvf'
alias serve='python3 -m http.server'

# Postgresql
alias db='sudo -iu postgres psql'
alias createdb='sudo -iu postgres createdb'

# Git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
