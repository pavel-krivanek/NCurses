modes
keypad: aBoolean on: aWindow
	^self ffiCall: #(int keypad(window * aWindow, bool aBoolean) )