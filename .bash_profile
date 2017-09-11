. "$HOME/.bashrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -r $HOME/.rvm/scripts/completion ]] && source $HOME/.rvm/scripts/completion
export PATH=/usr/local/bin:$PATH
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\W\[\033[0;33m\]\$(parse_git_branch)💃 \[\033[0;39m\] "
eval "$(rbenv init -)"
