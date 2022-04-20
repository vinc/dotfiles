# Completion
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

# Load plugins
plugins=(
  "$HOME/.asdf/asdf.sh"
  "$HOME/.asdf/completions/asdf.bash"
  "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  "/usr/local/etc/profile.d/autojump.sh"
  "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  "/usr/share/fzf/key-bindings.zsh"
  "/usr/share/fzf/completion.zsh"
)
for plugin in $plugins; do
  test -f $plugin && source $plugin
done

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
