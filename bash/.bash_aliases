alias c='clear'
alias ls='ls -G'
alias bc='bc -l'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias syslog='journalctl -b -f --since "1 hour ago" | ccze -A -o nolookups'

alias vim=vi
alias pico=nano
