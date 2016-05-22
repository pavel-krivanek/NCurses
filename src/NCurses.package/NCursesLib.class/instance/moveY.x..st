cursor
moveY: y x: x

	"move the cursor associated with the current or specified window to (y, x) relative to the window's origin. This function does not move the terminal's cursor until the next refresh operation."
	
	^self ffiCall: #(int move(int y, int x) )