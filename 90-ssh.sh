#
# SSH Configs
#

# Add SSH keys to the agent for two hours.
alias ka="ssh-add -t 7200 -A"
alias kl="ssh-add -l"
alias kd="ssh-add -D"


# If keychain is anywhere in the path, use it.

eval `[ -n "$(type -t keychain)" ] \
     && keychain --quiet --eval id_rsa --timeout 600 \
     || true`
