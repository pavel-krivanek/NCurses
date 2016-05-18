modes
notimeout: aBoolean on: aWindow
	^self ffiCall: #(int notimeout(window * aWindow, bool aBoolean) )