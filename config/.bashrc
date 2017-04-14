# Turn on config, completion, & aliases
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1=" \e[0;34m\u@\h\e[m \e[0;36m\W\e[m \e[0;32m$( parse_git_branch )\e[m\n$ "
export PATH=/Users/$(whoami)/Library/Python/2.7/bin:$PATH

