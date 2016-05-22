signals
beep

	"audible signal"
	
	^self ffiCall: #(int beep(void) )