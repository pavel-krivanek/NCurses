keyboard
getch
	^self ffiCall: #(int getch(void) )