modes
cbreak

	"sets the input mode for the current terminal to cbreak mode and overrides a call to raw()."
	
	^self ffiCall: #(int cbreak(void) )