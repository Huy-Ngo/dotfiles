# export PATH="$PATH:/opt/mssql-tools/bin"
# source "$HOME/.cargo/env"
# xhost +local:
# setleds -D +num

if [[ -f ~/.profile ]]; then
	. ~/.profile
fi

if [[ $- == *i* && -f ~/.bashrc ]]; then
	. ~/.bashrc
	. /usr/share/bash-completion/bash_completion
fi
