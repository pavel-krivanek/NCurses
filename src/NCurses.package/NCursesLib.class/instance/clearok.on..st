terminal output control
clearok: aBoolean on: aWindow

	"assigns the value of aBoolean to an internal flag in the specified window that governs clearing of the screen during a refresh. If, during a refresh operation on the specified window, the flag in curscr is TRUE or the flag in the specified window is TRUE, then the implementation clears the screen, redraws it in its entirety, and sets the flag to FALSE in curscr and in the specified window. The initial state is unspecified."
	
	^self ffiCall: #(int clearok(window * aWindow, bool aBoolean) )