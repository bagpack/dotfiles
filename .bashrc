alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -al --color'
alias sconf="grep -i 'Host ' ~/.ssh/config | cut -d ' ' -f 2 | peco"
alias s='ssh `sconf`'
