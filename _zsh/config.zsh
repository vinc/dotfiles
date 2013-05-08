autoload -U compinit promptinit
compinit
promptinit

#
zstyle ':completion:*' menu select
setopt complete_aliases

#
prompt adam2

## Command history configuration
if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS


export EDITOR='vim'
