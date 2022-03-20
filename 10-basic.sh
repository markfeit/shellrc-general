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

alias td="tree -d"
alias tl="tree -pugshF"

alias lb="lsblk -o NAME,KNAME,MOUNTPOINT,SIZE,MODEL,FSSIZE,FSAVAIL"

alias rehash="hash -r"

# Print the most-recent file in the hole.
alias 1hole="ls -t ${HOME}/hole | head -1"
