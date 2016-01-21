. "$HOME/.bashrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -r $HOME/.rvm/scripts/completion ]] && source $HOME/.rvm/scripts/completion
export PATH=/usr/local/bin:$PATH
export PS1="\W \[\033[0;33m\]💃 \[\033[0;39m\] "
