modes - program
def_shell_mode

	"saves the current terminal modes as the shell (not in Curses) state for use by reset_shell_mode."
	
	^self ffiCall: #(int def_shell_mode(void) )