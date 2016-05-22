clearing
clear: aWindow

	"clear every position in the specified window. Achieve the same effect as calling clearok(), so that the window is cleared completely on the next call to wrefresh() for the window and is redrawn in its entirety."
	
	^self ffiCall: #(int wclear(window * aWindow) )