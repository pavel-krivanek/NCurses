keyboard input
flushinp

	"discards (flushes) any characters in the input buffer associated with the current screen."
	
	^self ffiCall: #(int flushinp(void) )