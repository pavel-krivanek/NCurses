clearing
clrtobot: aWindow

	"erase all lines following the cursor in the specified window, and erase the current line from the cursor to the end of the line, inclusive. These functions do not update the cursor."
	
	^self ffiCall: #(int wclrtobot(window * aWindow) )