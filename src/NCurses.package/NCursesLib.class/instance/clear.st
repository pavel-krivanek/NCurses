clearing
clear

	"clear every position in the current window. Achieve the same effect as calling clearok(), so that the window is cleared completely on the next call to wrefresh() for the window and is redrawn in its entirety."
	
	^self ffiCall: #(int clear(void) )