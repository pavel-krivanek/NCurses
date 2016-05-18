mouse
hasMouse
	^self ffiCall: #(bool has_mouse(void) )