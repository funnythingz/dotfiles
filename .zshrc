autoload -U compinit
compinit

alias ll="ls -lG"
alias la="ls -laG"
alias ls="ls -G"
alias greprc="grep -r --color"


export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
#export MANPATH=/opt/local/share/man:/opt/local/man:$MANPATH

#HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_dups
setopt share_history

#eval "$(rbenv init -)"
