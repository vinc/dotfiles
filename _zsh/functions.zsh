md() {
  mkdir -p "$@" && cd "$@"
}

txt() {
  fmt $1 | less
}

tts() {
  flite \
    -voice /usr/local/share/flite/cmu_us_clb.flitevox \
    --setf int_f0_target_mean=210 \
    --setf int_f0_target_stddev=20 \
    --setf duration_stretch=1.0 \
    $@
}

c() {
  echo $(( $* ))
}

alias c="noglob c"

set-theme() {
  test "$1" = "light"
  sed -i "s/dark-theme=[0-9]/dark-theme=$?/g" ~/.config/gtk-3.0/settings.ini
}
