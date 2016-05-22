printing - attributes
attron: attrs

	"turn on attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int attron(int attrs))