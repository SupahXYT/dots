# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi

# Colors
export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Functions

ddg ()
{
	QUERY="$@"
	links duckduckgo.com/?q="${QUERY}"
}

google ()
{
	QUERY="$@"
	links google.com/search?q="${QUERY}"
}

