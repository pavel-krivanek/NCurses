as yet unclassified
refresh: aWindow
	^self ffiCall: #(int wrefresh(window * aWindow) )