printing - attributes
standend

	"Turn off all attributes of the current or specified window."
	
	^self ffiCall: #(int standend(void))