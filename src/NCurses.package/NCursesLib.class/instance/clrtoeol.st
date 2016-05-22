clearing
clrtoeol

	" erase the current line from the cursor to the end of the line, inclusive, in the current window. Do not update the cursor."
	
	^self ffiCall: #(int clrtoeol(void) )