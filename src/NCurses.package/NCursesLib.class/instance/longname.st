terminal capabilities
longname

	"generates a verbose description of the current terminal. The maximum length of a verbose description is 128 bytes. It is defined only after the call to initscr() or newterm()."
	
	^self ffiCall: #(char * longname(void))