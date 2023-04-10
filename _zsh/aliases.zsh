# Enable ls colors on GNU
ls --color=auto &> /dev/null && alias ls="ls --color=auto"

alias b="bundle"
alias b="bundle"
alias e="$EDITOR"
alias email="mutt"
alias ff="nohup firefox > /dev/null"
alias g="git"
alias grep="grep --color=auto"
alias img="feh --auto-rotate --conversion-timeout 0.1 -d."
alias ll="ls -l"
alias music="cmus"
alias pdf="zathura"
alias please="sudo" # :)
alias r="rails"
alias rm="rm -i"
alias rss="newsboat"
alias sys="systemctl"
alias tool="asdf"
alias video="mpv"
alias vim="vim -p"

#compdef g="git"
#compdef pkg="pacaur"

alias dokku="bash $HOME/.dokku/contrib/dokku_client.sh"

hash colordiff 2>/dev/null && alias diff="colordiff"
