char at cursor
inchOn: aWindow
	^self ffiCall: #(ulong winch(window * aWindow) )