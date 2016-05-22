cursor
curs_set: visibility

	"sets the appearance of the cursor based on the value of visibility:
	0 - Invisible
	1 - Terminal-specific normal mode
	2	- Terminal-specific high visibility mode"

	^self ffiCall: #(int curs_set(int visibility) )