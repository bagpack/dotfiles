if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# git-completion
source ~/.git-completion.bash
source ~/.git-prompt.sh
if [ -f $HOME/local/etc/bash_completion.d/git-prompt.sh ]; then
    source $HOME/local/etc/bash_completion.d/git-prompt.sh
fi
export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '

# docker-machine
eval $(docker-machine env)

# golang
export GOPATH=$HOME/go
