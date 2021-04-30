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

# opam configuration
test -r /home/xarvos/.opam/opam-init/init.sh && . /home/xarvos/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
