modes
nl

	"enables a mode in which carriage return is translated to newline on input. The nonl() function disables the above translation. Initially, the above translation is enabled."
	
	^self ffiCall: #(int nl(void) )