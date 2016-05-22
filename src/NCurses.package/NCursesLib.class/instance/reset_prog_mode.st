modes - program
reset_prog_mode

	"restores the terminal to the program (in Curses) state."
	
	^self ffiCall: #(int reset_prog_mode(void) )