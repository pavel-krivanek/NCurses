clearing
deleteln

	"The deleteln() and wdeleteln() functions delete the line containing the cursor in the current or specified window and move all lines following the current line one line toward the cursor. The last line of the window is cleared. The cursor position does not change."
	
	^self ffiCall: #(int deleteln(void) )