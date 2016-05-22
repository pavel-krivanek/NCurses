windows
initscr 
	^self ffiCall: #(window* initscr(void) )