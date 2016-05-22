modes - program
def_prog_mode

	"saves the current terminal modes as the program (in Curses) state for use by reset_prog_mode."
	
	^self ffiCall: #(int def_prog_mode(void) )