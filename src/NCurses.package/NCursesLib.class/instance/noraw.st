modes
noraw

	"sets the input mode for the current terminal to Cooked Mode and sets the ISIG and IXON flags."
	
	^self ffiCall: #(int noraw(void) )