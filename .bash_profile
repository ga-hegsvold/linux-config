parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[1;32m\]\u@\h\[\e[00m\] \[\e[1;34m\]\w\[\e[00m\]\[\e[33m\]\$(parse_git_branch)\[\e[00m\] \[\e[1;34m\]$\[\e[00m\] "
