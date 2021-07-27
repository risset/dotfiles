#!/bin/sh

source /etc/profile

# Variables
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="emacsclient -nw"
export TERM="tmux-256color"
export BROWSER="firefox"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"

# Path
export GOROOT=/usr/lib/go            
export GOPATH=$HOME/.go
PATH+=:$HOME/.local/bin
PATH+=:$HOME/.bin
PATH+=:$HOME/.cargo/bin
PATH+=:$GOROOT/bin
PATH+=:$GOPATH/bin
