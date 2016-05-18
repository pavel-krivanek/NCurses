printing
print: aString to: aWindow
	^self ffiCall: #(int wprintw(window * aWindow, char * aString) )