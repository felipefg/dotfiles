
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias dotfiles='~/.dotfiles/py_dotfiles/bin/dotfiles'

# Git shorthand function. Inspired by Pengwynn.
function g {
    if [[ $# > 0 ]]; then
        git $@
    else
        git status --short --branch
    fi
}

# More Git goodies
alias gru='git remote update'
alias gme='git merge --no-ff'
alias gpf='git pull --ff-only'
