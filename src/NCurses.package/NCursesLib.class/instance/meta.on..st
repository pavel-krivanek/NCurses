modes
meta: aBoolean on: aWindow

	"Initially, whether the terminal returns 7 or 8 significant bits on input depends on the control mode of the display driver (see the XBD specification, General Terminal Interface). To force 8 bits to be returned, invoke meta(win, TRUE). To force 7 bits to be returned, invoke meta(win, FALSE). The aWindow argument is always ignored. If the terminfo capabilities smm (meta_on) and rmm (meta_off) are defined for the terminal, smm is sent to the terminal when meta(win, TRUE) is called and rmm is sent when meta(win, FALSE) is called."
	
	^self ffiCall: #(int meta(window * aWindow, bool aBoolean) )