autoload -U compinit promptinit
compinit
promptinit

#
zstyle ':completion:*' menu select
setopt complete_aliases

#
prompt adam2

# Command history configuration
if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY # Between sessions
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE # Do not record commands starting with a space

setopt CORRECT
setopt DVORAK

bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search
