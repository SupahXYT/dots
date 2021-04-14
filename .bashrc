# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in history.
export HISTCONTROL=ignoreboth:ignoredups

# Different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi

# Localize in english (this might be better off in /etc/profile)
export LANG="en_US.UTF-8"
export LC_COLLATE="C"
export LC_CTYPE="en_US.UTF-8"

# Input
set -o vi
bind -m vi-insert "\C-l":clear-screen

# Enviornmental variables
# export BROWSER="librewolf"
export EDITOR="vim"
# export PS1="\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] "
# export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

mkcd()
{
	mkdir $1 && cd $1
}

alias df='df -h'
alias du='du -h'

alias ls="ls --color"
alias l="ls"
alias ll="ls -lh"
alias la="ls -A"

alias claer="clear"
alias clea="clear"
alias clae="clear"
alias cleat="clear"
alias ckear="clear"

<<TRANSMISSION
alias tms="transmission-remote"
alias tmss="transmission-remote -w /var/lib/transmission/downloads/shows -a"
alias tmsb="transmission-remote -w /var/lib/transmission/downloads/books -a"
alias tmsa="transmission-remote -w /var/lib/transmission/downloads/music -a"
alias tmsp="transmission-remote -w /var/lib/transmission/downloads/pictures -a"
alias tmsw="transmission-remote -w /var/lib/transmission/downloads/rss -a"
alias tmsm="transmission-remote -w /var/lib/transmission/downloads/movies -a"
TRANSMISSION

alias p="sudo pacman"

alias yt="ytfzf"
alias ytd="youtube-dl"

alias ani="lf /media"
