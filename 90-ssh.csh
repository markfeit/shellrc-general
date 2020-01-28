#
# SSH Configs
#

# Add SSH keys to the agent for two hours.
alias ka "ssh-add -t 7200 -A"
alias kl "ssh-add -l"
alias kd "ssh-add -D"

set kctype=`type -t keychain`
eval `[ -n "$kctype" ] && env SHELL=/bin/csh keychain --eval id_rsa || true`
unset kctype
