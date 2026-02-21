import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Layout.ThreeColumns

myLayout = tiled ||| Mirror tiled ||| Full ||| threeCol
  where
    threeCol = ThreeColMid nmaster delta ratio
    tiled    = Tall nmaster delta ratio
    nmaster  = 1
    ratio    = 1/2
    delta    = 3/100

main :: IO ()
main = xmonad $ def   
	{ modMask    = mod4Mask     -- Mod is Super key
	, layoutHook = myLayout     -- Custom Layout
	}
        `additionalKeysP`
        [ ("M-b", spawn "firefox" )
	]
