colors
start_color

	"must be called in order to enable use of colours and before any colour manipulation function is called. The function initialises eight basic colours (black, blue, green, cyan, red, magenta, yellow, and white) that can be specified by the colour macros (such as COLOR_BLACK) defined in <curses.h>. The initial appearance of these eight colours is not specified."

	^self ffiCall: #(int start_color(void) )