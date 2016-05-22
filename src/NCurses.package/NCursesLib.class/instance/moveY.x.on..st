cursor
moveY: y x: x on: aWindow

	"move the cursor associated with the current or specified window to (y, x) relative to the window's origin. This function does not move the terminal's cursor until the next refresh operation."
	
	^self ffiCall: #(int wmove(window * aWindow, int y, int x) )