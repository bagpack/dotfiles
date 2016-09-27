if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# git-completion
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi

# bash
export CLICOLOR=1
export LSCOLORS=CxGxcxdxCxegedabagacad
export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '

# golang
export GOPATH=$HOME/go

# pyenv
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# z
source `brew --prefix`/etc/profile.d/z.sh
