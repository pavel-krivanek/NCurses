modes - program
savetty

	"saves the state that would be put in place by a call to reset_prog_mode()."
	
	^self ffiCall: #(int savetty(void) )