modes
notimeout: aBoolean on: aWindow

	"specifies whether Timeout Mode or No Timeout Mode is in effect for the screen associated with the specified window. If aBoolean is TRUE, this screen is set to No Timeout Mode. If aBoolean is FALSE, this screen is set to Timeout Mode. The initial state is FALSE."
	
	^self ffiCall: #(int notimeout(window * aWindow, bool aBoolean) )