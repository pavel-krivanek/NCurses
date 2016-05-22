printing - attributes
attrset: attrs on: aWindow

	"turn on attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int wattrset(window * aWindow, int attrs))