# Configuration file for login Bash shells

# Configure MacPorts, if present
if [ -d /opt/local ]; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH

    # Activate MacPorts' Virtualenv Wrapper, if present
    VIRTUALENVWRAPPER=/opt/local/bin/virtualenvwrapper.sh-2.7

    if [ -f $VIRTUALENVWRAPPER ]; then
        source $VIRTUALENVWRAPPER
    fi
fi

# User Home
export PATH=$HOME/bin:$PATH

# Be sure to load interactive shell configuarations
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi
