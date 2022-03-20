#
# SSH Configs
#

# Add SSH keys to the agent for two hours.


# If keychain is anywhere in the path, use it.

eval `[ -n "$(type -t keychain)" -a -t 0 ] \
     && keychain --quiet --noask --eval id_rsa --timeout 600 \
     || true`


alias ka="keychain id_rsa --timeout 600"
alias kc="keychain --clear"
alias kl="keychain --list"
