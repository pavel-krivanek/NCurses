printing
addch: charWithAttributes on: aWindow
	^self ffiCall: #(int mvwaddch(window * aWindow, ulong charWithAttributes) )