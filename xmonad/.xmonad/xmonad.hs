import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.ThreeColumns

myLayout = ThreeCol 1 (3/100) (1/2)
main = xmonad $ gnomeConfig
    { layoutHook = myLayout }
