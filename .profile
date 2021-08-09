#!/bin/sh

source /etc/profile

append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

# Variables
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="emacsclient -nw"
export TERM="tmux-256color"
export BROWSER="firefox"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"

# Path
export GOROOT=/usr/lib/go            
export GOPATH=$HOME/.go
append_path $HOME/.local/bin
append_path $HOME/.bin
append_path $HOME/.cargo/bin
append_path $HOME/.cabal/bin
append_path $GOROOT/bin
append_path $GOPATH/bin
