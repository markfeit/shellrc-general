#
# Screen Setup
#

# Screen for full keyboards.  On some systems, if you've su'd, the tty
# is unwritable, so work around that.
[ -w $(tty) ] \
    && alias sc='screen -e '\''^\^\'\'' -R -A -d' \
    || alias sc="script /dev/null -c 'screen -e '\''^\^\'\'' -R -A -d'" \



# For mobile keyboards where the backslash is difficult
alias so="screen -e '^O^O' -R -A -d"
