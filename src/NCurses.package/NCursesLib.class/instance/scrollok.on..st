terminal output control
scrollok: aBoolean on: aWindow

	"controls the use of scrolling. If aBoolean is TRUE, then scrolling is enabled for the specified window, with the consequences discussed in Truncation, Wrapping and Scrolling . If aBoolean is FALSE, scrolling is disabled for the specified window. The initial state is FALSE."
	
	^self ffiCall: #(int scrollok(window * aWindow, bool aBoolean) )