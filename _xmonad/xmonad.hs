import XMonad
import XMonad.Actions.CycleWS
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig

main = xmonad $ defaultConfig {
  normalBorderColor  = "#dddddd",
  focusedBorderColor = "#eeeeee",
  layoutHook = noBorders (layoutHook defaultConfig),
  modMask    = mod4Mask,
  terminal   = "urxvt"
  } `additionalKeysP`
  [
    ("M-<Left>",  prevWS),
    ("M-<Right>", nextWS)
  ]
