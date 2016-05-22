printing
print: aString on: aWindow
	^self ffiCall: #(int wprintw(window * aWindow, char * aString) )