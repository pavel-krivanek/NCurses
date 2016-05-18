printing
print: aString atY: y x: x
	^self ffiCall: #(int mvprintw(int y, int x, char * aString) )