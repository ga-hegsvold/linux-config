# https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html

# This file is executed after /etc/profile

# Show git branch in command prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[1;32m\]\u@\h\[\e[00m\] \[\e[1;34m\]\w\[\e[00m\]\[\e[33m\]\$(parse_git_branch)\[\e[00m\] \[\e[1;34m\]$\[\e[00m\] "

# Execute ~/.bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
