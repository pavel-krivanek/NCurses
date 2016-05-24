printing - attributes
standend: aWindow

	"Turn off all attributes of the current or specified window."
	
	^self ffiCall: #(int wstandend(window * aWindow))