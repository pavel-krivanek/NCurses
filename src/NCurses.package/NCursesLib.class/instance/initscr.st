as yet unclassified
initscr 
	^self ffiCall: #(window* initscr(void) )