modes
raw

	"sets the input mode for the current terminal to Raw Mode."
	
	^self ffiCall: #(int raw(void) )