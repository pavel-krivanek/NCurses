modes
nodelay: aBoolean on: aWindow

	" specifies whether Delay Mode or No Delay Mode is in effect for the screen associated with the specified window. If aBoolean is TRUE, this screen is set to No Delay Mode. If aBoolean is FALSE, this screen is set to Delay Mode. The initial state is FALSE."
	
	^self ffiCall: #(int nodelay(window * aWindow, bool aBoolean) )