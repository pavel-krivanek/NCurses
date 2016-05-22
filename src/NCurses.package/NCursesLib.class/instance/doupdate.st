refreshing
doupdate

	"sends to the terminal the commands to perform any required changes."
	
	^self ffiCall: #(int doupdate(void) )