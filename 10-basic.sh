#
# Basic Environment Variables
#

umask 2

export EDITOR="/usr/bin/emacs"
export VISUAL="${EDITOR}"

export PAGER="less"
export LESS="-eirMX"

# For Spew.
export RULESFILE="${HOME}/src/spew/headlines/headline"


alias ll="ls -lh"
alias lll="ls -alht"

# Tree
alias td="tree -d"
alias tl="tree -pugshF"
