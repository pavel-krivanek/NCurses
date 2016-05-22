background
bkgdset: charWithAttributes on: aWindow

	^self ffiCall: #(void wbkgdset(window * aWindow, ulong charWithAttributes) )