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

# direnv
eval "$(direnv hook zsh)"

# rbenv
eval "$(rbenv init -)"
