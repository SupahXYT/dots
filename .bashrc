# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi

set -o vi

# Enviornmental variable
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/supahx/go/bin"
export BROWSER="firefox"
export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Functions

ddg ()
{
	QUERY="$@"
	links https://duckduckgo.com/?q="${QUERY}"
}

google ()
{
	QUERY="$@"
	links https://google.com/search?q="${QUERY}"
}

