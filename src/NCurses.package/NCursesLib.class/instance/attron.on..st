printing - attributes
attron: attrs on: aWindow

	"turn on attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int wattron(window * aWindow, int attrs))