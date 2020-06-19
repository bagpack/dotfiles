alias ls='ls -G'
alias ll='ls -l -G'
alias la='ls -al -G'
alias adb='~/Library/Android//sdk/platform-tools/adb'

s() {
    HOST=`grep -i 'Host ' ~/.ssh/config | cut -d ' ' -f 2 | peco`
    if [ -z "$HOST" ]; then
        return 1
    fi
    ssh $HOST
}

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
if [ -f ${HOME}/.zsh/git-prompt.sh ]; then
       source ${HOME}/.zsh/git-prompt.sh
fi

autoload -Uz compinit
compinit

autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%{${fg[green]}%}%n@%m%{${reset_color}%} %{${fg[yellow]}%}%~$(__git_ps1 " (%s)")%{${reset_color}%}
%{${fg[blue]}%}\$%{${reset_color}%} '