#
# Set prompt
#

# BASH doesn't set this
TTY=${TTY:-$(tty)}

# Text snippets:
# Hard status: "\e]0;\u@\h:${TTY#/dev/} \w\a"
# Bart Head:   "\[\e[30;47m\][8^)\[\e[m\]"

unset PROMPT_COMMAND
case "${TERM}" in
    screen|screen.*)
	export PS1="\e]0;\u@\h:${TTY#/dev/} \w\a\[\e[30;47m\][8^)\[\e[m\]"
	;;
    xterm*)
	export PS1="\e]0;\u@\h:${TTY#/dev/} \w\a\h \[\e[30;47m\][8^)\[\e[m\]"
	;;
    *)
	export PS1="\h \[\e[30;47m\][8^)\[\e[m\]"
	;;
esac
