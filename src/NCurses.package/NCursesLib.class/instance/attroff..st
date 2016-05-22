printing - attributes
attroff: attrs

	"The attroff() and wattroff() functions turn off attrs in the current or specified window without affecting any others."
	
	^self ffiCall: #(int attroff(int attrs))