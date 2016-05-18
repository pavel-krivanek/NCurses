keyboard
getchatAtY: y x: x on: aWindow
	^self ffiCall: #(int mvwgetch(window * aWindow, int y, int x) )