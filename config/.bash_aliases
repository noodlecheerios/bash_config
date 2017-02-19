# make ls friendlier
alias ls='ls -G'
alias l='ls -lh'
alias ll='ls -lha'

# get rid of command not found
alias cd..='cd ..'

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git
alias groot='cd "$(git rev-parse --show-toplevel)"'

# Python
alias py-server='twistd -no web --path=. --port 8000'

# Sublime
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# Place SSH keys in hand
alias keys-in-hand='eval "$(ssh-agent -s)" && ssh-add'

# Docker
# This comes from: http://blog.yohanliyanage.com/2015/05/docker-clean-up-after-yourself/
alias clear-docker-exited='docker rm -v $(docker ps -a -q -f status=exited)'
alias clear-docker-cache='docker rmi -f $(docker images -f "dangling=true" -q)'
