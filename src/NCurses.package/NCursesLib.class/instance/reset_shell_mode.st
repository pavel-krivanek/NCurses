modes - program
reset_shell_mode

	"restores the terminal to the shell (not in Curses) state."
	
	^self ffiCall: #(int reset_shell_mode(void) )