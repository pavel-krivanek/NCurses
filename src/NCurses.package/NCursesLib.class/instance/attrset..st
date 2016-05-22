printing - attributes
attrset: attrs

	"The attrset() and wattrset() functions set the background attributes of the current or specified window to attrs."
	
	^self ffiCall: #(int attrset(int attrs))