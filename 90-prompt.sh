#
# Set prompt
#

# BASH doesn't set this
TTY=${TTY:-$(tty)}

# Text snippets:
# Hard status: "\e]0;\u@\h:${TTY#/dev/} \w\a"
# Bart Head:   "\[\e[30;47m\][8^)\[\e[m\]"

unset PROMPT_COMMAND

prompt_color()
{
    [ $1 -eq 0 ] && printf "30;107" || printf "97;41"
}

case "${TERM}" in
    screen|screen.*)
	PS1='\e]0;\u@\h:${TTY#/dev/} \w\a\[\e[`prompt_color $?`m\][8^)\[\e[m\]'
	;;
    xterm*)
	PS1='\e]0;\u@\h:${TTY#/dev/} \w\a\h \[\e[`prompt_color $?`m\][8^)\[\e[m\]'
	;;
    *)
	PS1='\h \[\e[`prompt_color $?`m\][8^)\[\e[m\]'
	;;
esac
