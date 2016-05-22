keyboard input
getchatAtY: y x: x on: aWindow

	"read a single-byte character from the terminal associated with the current or specified window. The results are unspecified if the input is not a single-byte character. If keypad() is enabled, these functions respond to the pressing of a function key by returning the corresponding KEY_ value defined in <curses.h>."
	
	^self ffiCall: #(int mvwgetch(window * aWindow, int y, int x) )