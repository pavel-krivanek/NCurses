modes - program
resetty

	"restores the program mode as of the most recent call to savetty()."
	
	^self ffiCall: #(int resetty(void) )