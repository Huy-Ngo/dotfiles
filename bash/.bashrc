# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

export PATH=$PATH:/home/xarvos/.local/bin:/opt/Postman:/opt/lampp:/opt/android-studio/bin
export PATH=$PATH:/usr/local/go/bin:/home/xarvos/go/bin
export PATH=$PATH:/usr/bin/rg
export PATH=$PATH:/home/xarvos/utils
export PATH=$PATH:/home/xarvos/.cargo/bin

test -s ~/.alias && . ~/.alias || true

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# if [ "$color_prompt" = yes ]; then
#     PS1='\[\033[1;32m\]\u@\h:\[\033[1;31m\]\w\[\033[1;33m\]$(parse_git_branch) \[\033[34m\]\n$ \[\033[00m\]'
# else
#     PS1='\u@\h\w\n\$ '
# fi
PS1='\[\033[1;32m\]\u@\h:\[\033[1;31m\]\w\[\033[1;33m\]$(parse_git_branch) \[\033[1;34m\]\n$ \[\033[00m\]'
unset color_promt force_color_prompt

alias py='python3'
alias pip='pip3'
alias clipboard='xclip -sel clipboard'
alias gitpushall="git remote | xargs -L1 git push --all"
alias kanban='taskell'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/xarvos/.sdkman"
[[ -s "/home/xarvos/.sdkman/bin/sdkman-init.sh" ]] && source "/home/xarvos/.sdkman/bin/sdkman-init.sh"
export PATH="$PATH:/opt/mssql-tools/bin"
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
source "$HOME/.cargo/env"
