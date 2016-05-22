printing - attributes
attroff: attrs on: aWindow

	"The attroff() and wattroff() functions turn off attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int wattroff(window * aWindow, int attrs))