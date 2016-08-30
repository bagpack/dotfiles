alias ls='ls -G'
alias ll='ls -l -G'
alias la='ls -al -G'
alias sconf="grep -i 'Host ' ~/.ssh/config | cut -d ' ' -f 2 | peco"
alias s='ssh `sconf`'
