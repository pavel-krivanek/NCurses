char at cursor
inchAtY: y x: x on: aWindow
	^self ffiCall: #(ulong mvwinch(window * aWindow, int y, int x) )