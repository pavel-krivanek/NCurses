terminal output control
leaveok: aBoolean on: aWindow

	"controls the cursor position after a refresh operation. If aBoolean is TRUE, refresh operations on the specified window may leave the terminal's cursor at an arbitrary position. If aBoolean is FALSE, then at the end of any refresh operation, the terminal's cursor is positioned at the cursor position contained in the specified window. The initial state is FALSE."
	
	^self ffiCall: #(int leaveok(window * aWindow, bool aBoolean) )