alias ll='ls -lah'
alias la='ls -Alh'
alias l='ls -CFlh'
alias gits='git status'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\]\[\033[38;5;241m\]\t\[\]\[\]\[\033[38;5;15m\] \[\]\[\033[01;32m\]\u@\h\[\]\[\033[38;5;246m\]:\[\]\[\033[38;5;214m\]\w\[\]\[\033[38;5;15m\]\[\033[33m\]\$(parse_git_branch)\[\033[00\
m\] \[\]\[\033[38;5;247m\]\$\[\]\[\033[38;5;15m\] \[\]"