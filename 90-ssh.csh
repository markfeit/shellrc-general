#
# SSH Configs
#

set kctype=`type -t keychain`
eval `[ -n "$kctype" -a -t 0 ] \
    && env SHELL=/bin/csh keychain --eval id_rsa --timeout 600 \
    || true`
unset kctype

alias ka "keychain id_rsa --timeout 600"
alias kc "keychain --clear"
alias kl "keychain --list"
