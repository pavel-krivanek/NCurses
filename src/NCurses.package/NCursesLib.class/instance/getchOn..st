keyboard
getchOn: aWindow
	^self ffiCall: #(int wgetch(window * aWindow) )