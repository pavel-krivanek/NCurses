printing - attributes
standout: aWindow

	"set and clear window attributes. Same as attron(A_STANDOUT)"
	
	^self ffiCall: #(int wstandout(window * aWindow))