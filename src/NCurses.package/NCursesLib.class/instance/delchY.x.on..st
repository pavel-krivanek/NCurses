claring - characters
delchY: y x: x on: aWindow

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^self ffiCall: #(int mvwdelch(window * aWindow, inx y, int x))