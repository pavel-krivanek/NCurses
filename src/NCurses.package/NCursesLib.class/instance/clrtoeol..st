clearing
clrtoeol: aWindow

	"erase the current line from the cursor to the end of the line, inclusive, in the specified window. Do not update the cursor."
	
	^self ffiCall: #(int wclrtoeol(window * aWindow) )