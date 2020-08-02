
# Git Aliases

# Most of these are self-explanatory.

alias gco='git checkout'
gcl()
{
    git clone "git@github.com:$1.git"
}
alias gcv='git commit -v'
alias gcva='git commit -v -a'
alias gd='git diff'

# Rename branch:  gmvb OLD-BRANCH-NAME NEW-BRANCH-NAME
gmvb()
{
    git branch -m "$1" "$2" \
	&& git push origin ":$1" "$2" \
	&& git push origin -u "$2"
}

# New Branch:  gnb NEW-BRANCH-NAME
gnb()
{
    git checkout -b "$1" \
	&& git push origin "$1" \
	&& git branch "--set-upstream-to=origin/$1" "$1"
}

# Remove local and remote branch
grmb()
{
    git checkout master \
        && git checkout "$1" \
	&& git checkout master \
	&& git branch -d "$1" \
	&& git push origin --delete "$1"
}

# Remove and check out (Revert to last commit)
grco()
{
    rm -f "$1" \
	&& git checkout "$1"
}

alias grh='git reset head'
alias gsl='git stash list | cat'
alias gsp='git stash pop'
alias gst='git status -uno'
alias gstu='git status -u'
alias gundo='git reset --soft HEAD~'
alias gunpushed='git log origin/master..HEAD'
alias gpp='git pull && git push'
