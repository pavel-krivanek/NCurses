other
napms: ms

	"suspend the calling process. Takes at least ms milliseconds to return."
	
	^self ffiCall: #(int napms(int ms) )