printing - attributes
standout

	"set and clear window attributes. Same as attron(A_STANDOUT)"
	
	^self ffiCall: #(int standout(void))