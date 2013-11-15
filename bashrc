# Interactive shell configuration file for bash

# Do nothing if this is not an interactive shell
if [ -z "$PS1" ]; then
   return
fi

# Enable colors for OSX
if [ $(uname -s) = "Darwin" ]; then
    export CLICOLOR=1
fi

# Use my beloved prompt
if [ -f $HOME/.bash_prompt ]; then
    source $HOME/.bash_prompt
fi

# Load aliases
if [ -f $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi
