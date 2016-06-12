printing
insertln: aWindow

	" insert a blank line before the current line in the current or specified window. The bottom line is no longer displayed. The cursor position does not change."
	
	^self ffiCall: #(int winsertln(window * aWindow))