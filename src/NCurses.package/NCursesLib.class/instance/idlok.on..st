terminal output control
idlok: aBoolean on: aWindow

	"specifies whether the implementation may use the hardware insert-line, delete-line, and scroll features of terminals so equipped. If aBoolean is TRUE, use of these features is enabled. If aBoolean is FALSE, use of these features is disabled and lines are instead redrawn as required. The initial state is FALSE."
	
	^self ffiCall: #(int clearok(window * aWindow, bool aBoolean) )