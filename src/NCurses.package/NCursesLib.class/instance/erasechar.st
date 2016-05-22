clearing
erasechar

	"function returns the current erase character"
	
	^self ffiCall: #(char erasechar(void) )