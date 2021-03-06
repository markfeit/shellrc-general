#
# Vagrant
#

alias vdf="vagrant destroy -f"
alias vdfu="vagrant destroy -f && vagrant up"
alias vssh="vagrant ssh"
alias vsshr='vagrant ssh -c "sudo -i"'
alias vsshu='vagrant ssh -c "sudo -i -u ${USER}"'
alias vup="vagrant up"
alias vupp="vagrant up --provision"

alias vsp="vagrant snapshot push"
alias vso="vagrant snapshot pop --no-provision"
