modes
halfdelay: tenths

	"sets the input mode for the current window to Half-Delay Mode and specifies tenths tenths of seconds as the half-delay interval. The tenths argument must be in a range from 1 up to and including 255."
	
	^self ffiCall: #(int halfdelay(int tenths) )