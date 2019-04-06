# Completion
autoload -U compinit
compinit
zstyle ':completion:*' menu select
setopt complete_aliases

# Prompt theme
#autoload -U promptinit
#promptinit
#if [ -n "$SSH_CLIENT" ]; then
#    prompt adam2 cyan green yellow white
#else
#    prompt adam2
#fi
#prompt pure

source /usr/share/zsh*/**/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Command history configuration
if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=100000
SAVEHIST=100000

setopt SHARE_HISTORY # Between sessions
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE # Do not record commands starting with a space

setopt CORRECT
setopt DVORAK

setopt NO_BEEP

bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
