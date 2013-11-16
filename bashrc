# Interactive shell configuration file for bash

# Do nothing if this is not an interactive shell
if [ -z "$PS1" ]; then
   return
fi

# Bash History configuration
shopt -s histappend
HISTCONTROL=ignoredups:ignorespace
HISTFILESIZE=1000
HISTSIZE=100
HISTIGNORE="&:[ ]*:exit"

# Check window size at every command
shopt -s checkwinsize

# Enable lesspipe, if present
if which lesspipe &>/dev/null; then
    eval $(lesspipe)
fi

# Enable colors for OSX
if [ $(uname -s) = "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=ExgxfxdxCxegedabagacad
fi

# If dircolors is available, use it.
if [ -x /usr/bin/dircolors ]; then
    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi

    alias ls='ls --color=auto'
fi

# Use my beloved prompt
if [ -f $HOME/.bash_prompt ]; then
    source $HOME/.bash_prompt
fi

# Load aliases
if [ -f $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi
