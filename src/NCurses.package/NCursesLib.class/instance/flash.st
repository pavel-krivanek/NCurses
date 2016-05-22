signals
flash

	"flash the screen"
	
	^self ffiCall: #(int flash(void) )