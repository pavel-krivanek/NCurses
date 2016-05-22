terminal capabilities
baudrate

	"get output speed of the terminal in bits per second."
	
	^self ffiCall: #(int baudrate())