clock() {
  TIME="sed 's/\w\w:\w\w:\w\w:/\n/g'"
  DRAW="figlet -Wcf new_asci -w $(tput cols)"
  watch -tn 1 "detri $* | $TIME | $DRAW"
}

md() {
  mkdir -p "$@" && cd "$@"
}

txt() {
  fmt $1 | less
}

c() {
  echo $(( $* ))
}

alias c="noglob c"
