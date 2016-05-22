refreshing
refresh: aWindow

	"refresh the specified window. The function positions the terminal's cursor at the cursor position of the window, except that if the leaveok() mode has been enabled, it may leave the cursor at an arbitrary position."
	
	^self ffiCall: #(int wrefresh(window * aWindow) )