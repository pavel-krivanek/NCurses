modes
nocbreak

	"sets the input mode for the current terminal to Cooked Mode without changing the state of ISIG and IXON."
	
	^self ffiCall: #(int nocbreak(void) )