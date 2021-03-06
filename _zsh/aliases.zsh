# Enable ls colors on GNU
ls --color=auto &> /dev/null && alias ls="ls --color=auto"

alias grep="grep --color=auto"
alias vim="vim -p"

alias b="bundle"
alias e="$EDITOR"
alias g="git"
alias b="bundle"
alias r="rails"
alias ll="ls -l"
alias rm="rm -i"
alias ff="nohup firefox > /dev/null"

alias sys="systemctl"

alias rss="newsbeuter"
alias pdf="zathura"
alias tool="asdf"
alias email="mutt"
alias music="cmus"
alias video="mpv"

alias please="sudo" # :)

#compdef g="git"
#compdef pkg="pacaur"

alias dokku='bash $HOME/.dokku/contrib/dokku_client.sh'

hash colordiff 2>/dev/null && alias diff="colordiff"
