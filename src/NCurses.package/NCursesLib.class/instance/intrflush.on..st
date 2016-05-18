modes
intrflush: aBoolean on: aWindow
	^self ffiCall: #(int intrflush(window * aWindow, bool aBoolean) )