terminal output control
idlok: aBoolean on: aWindow

	" enable or disable use of terminal insert- and delete-line features"
	
	^self ffiCall: #(int idlok(window * aWindow, bool aBoolean) )