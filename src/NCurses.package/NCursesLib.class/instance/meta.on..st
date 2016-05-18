modes
meta: aBoolean on: aWindow
	^self ffiCall: #(int meta(window * aWindow, bool aBoolean) )