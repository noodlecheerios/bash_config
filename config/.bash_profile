[[ -s ~/.bashrc ]] && source ~/.bashrc

export PATH=/usr/local/opt/python/libexec/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=~/bin:$PATH >> ~/.bash_profile

if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"\u@\h"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$GREEN": "

alias rstudio="nohup /Applications/RStudio.app/Contents/MacOS/RStudio 2>&1 > /dev/null  &"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# OS X specific config
if [ $(uname) == "Darwin" ]; then
  # export TERM=xterm-256color

  # [aliases]
  alias la='ls -alG'
  alias ll='ls -lah'
  alias gg='git status -s'
  alias co='git checkout'
  alias less='less -R'
  alias fnd='open -a Finder'
  alias grp='grep -RIi'

  alias mkpy3venv="pyenv virtualenv 3.6.5"
  alias mkpy2venv="pyenv virtualenv 2.7.15"
  alias rmvenv="pyenv uninstall"
  alias lsvenv="pyenv virtualenvs"
  alias workon="pyenv activate"
  alias deactivate="pyenv deactivate"
fi


set completion-ignore-case on
set show-all-if-ambiguous on
