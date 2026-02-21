import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main :: IO ()
main = xmonad $ def
	{ modMas = mod4Mask -- Mod is Super key
	}
        `additionalKeysP`
        [ ("M-b", spawn "firefox" )
	]
