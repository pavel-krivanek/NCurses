modes
nodelay: aBoolean on: aWindow
	^self ffiCall: #(int nodelay(window * aWindow, bool aBoolean) )