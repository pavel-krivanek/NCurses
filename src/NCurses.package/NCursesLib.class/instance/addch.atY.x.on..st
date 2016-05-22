printing
addch: charWithAttributes atY: y x: x on: aWindow
	^self ffiCall: #(int mvwaddch(window * aWindow, int y, int x, ulong charWithAttributes) )