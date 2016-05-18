printing
print: aString atY: y x: x to: aWindow
	^self ffiCall: #(int mvwprintw(window * aWindow, int y, int x, char * aString) )