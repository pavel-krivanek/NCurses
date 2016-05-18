char at cursor
inch
	^self ffiCall: #(ulong inch(void) )