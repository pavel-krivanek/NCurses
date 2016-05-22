refreshing
wnoutrefresh: aWindow

	"determines which parts of the terminal may need updating."
	
	^self ffiCall: #(int wnoutrefresh(window * aWindow) )