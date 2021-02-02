#
# Basic Environment Variables
#

umask 2
limit coredump 0

set fignore=(.o \~)
set filec
set history=500
set nobeep=yes
set notify
set watch=(2 any any)


unset autologout



setenv EDITOR /usr/bin/emacs
setenv VISUAL $EDITOR

setenv PAGER less
setenv LESS -eirMX

# For Spew.
setenv RULESFILE $HOME/src/spew/headlines/headline


alias ll ls -lh"
alias lll "ls -alht"

# Tree
alias td "tree -d"
alias tl "tree -pugshF"
