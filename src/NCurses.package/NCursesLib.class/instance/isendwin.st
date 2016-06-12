refreshing
isendwin

	"indicates whether the screen has been refreshed since the last call to endwin()."
	
	^self ffiCall: #(bool isendwin(void))