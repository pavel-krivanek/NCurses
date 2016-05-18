modes
timeout: delay on: aWindow
	^self ffiCall: #(void wtimeout(window * aWindow, int delay) )