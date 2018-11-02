. "$HOME/.bashrc"

export PATH=/usr/local/bin:$PATH
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[0;33m\]\$(parse_git_branch)💃 \[\033[0;39m\] "
export PATH="$HOME/.rbenv/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

eval "$(rbenv init -)"
