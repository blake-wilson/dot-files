import XMonad
-- import Xmonad.Config.Gnome
import XMonad.Layout.ThreeColumns

myLayout = ThreeCol 1 (3/100) (1/2)
-- Uncomment to use in Gnome environment
-- main = xmonad $ gnomeConfig
main = xmonad $ defaultConfig
    { layoutHook = myLayout }
