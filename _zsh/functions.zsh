md() { mkdir -p "$@" && cd "$@" }

c() { echo $(( $* )) }

alias c="noglob c"
