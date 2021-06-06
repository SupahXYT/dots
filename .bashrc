# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in history.
export HISTCONTROL=ignoreboth:ignoredups

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Localization (this might be better off in /etc/profile)
export LANG="en_US.UTF-8"

# Input
set -o vi
bind -m vi-insert "\C-l":clear-screen

# Enviornmental variables
# RCLONE_CONFIG_PASS="$(pass rclone/config)"
# export BROWSER="librewolf"
export EDITOR="nvim"
# export PS1="\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] "
# export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

mkcd()
{
	mkdir $1 && cd $1
}

# colors 
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# aliases 
alias df='df -h'
alias du='du -h'

alias l="ls"
alias ll="ls -lAh"
alias la="ls -A"

<<TRANSMISSION
alias tms="transmission-remote -w /var/lib/transmission/downloads"
alias tmss="transmission-remote -w /var/lib/transmission/downloads/shows -a"
alias tmsb="transmission-remote -w /var/lib/transmission/downloads/books -a"
alias tmsa="transmission-remote -w /var/lib/transmission/downloads/audio -a"
alias tmsp="transmission-remote -w /var/lib/transmission/downloads/pictures -a"
alias tmsr="transmission-remote -w /var/lib/transmission/downloads/rss -a"
alias tmsm="transmission-remote -w /var/lib/transmission/downloads/movies -a"
TRANSMISSION

alias p="sudo pacman"
alias a="sudo apt" 

alias yt="ytfzf"
alias ytd="youtube-dl"

alias ani="lf /media"
alias sxmpv="sxiv ~/pictures/mpv_screenshots"
alias rclone="rclone --ask-password=false"
