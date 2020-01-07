PATH=$PATH:/usr/local/sbin
alias vi=vim
alias ghash="git log --pretty=format:'%h' -n 1 | pbcopy"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

get_directory() {
  pwd | xargs basename
}

export PS1="\[\033[32m\]\$(get_directory)\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
