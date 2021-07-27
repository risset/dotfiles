export PS1="%{%F{8}%}[%{%F{1}%}%n%{%F{8}%}@%{%F{5}%}%m%{%F{8}%}] %{%F{8}%}[%{%F{4}%}%~%{%F{8}%}] %{%F{2}%}-> %{%f%}"

# Window title
case $TERM in
    (*xterm* | rxvt)
	function precmd {
	    print -Pn "\e]0;zsh%L %(1j,%j job%(2j|s|); ,)%~\a"
	}

	function preexec {
	    printf "\033]0;%s\a" "$1"
	}
	;;
esac

# Emacs tramp fix
if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='$ '
fi
