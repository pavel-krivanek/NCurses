clearing
delch

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^self ffiCall: #(int delch(void))