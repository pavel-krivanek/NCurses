clearing
erase

	"clear every position in the current window."
	
	^self ffiCall: #(int erase(void) )