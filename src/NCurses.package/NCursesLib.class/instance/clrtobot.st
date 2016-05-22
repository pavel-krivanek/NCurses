clearing
clrtobot

	"erase all lines following the cursor in the current window, and erase the current line from the cursor to the end of the line, inclusive. These functions do not update the cursor."
	
	^self ffiCall: #(int clrtobot(void) )