printing
addch: charWithAttributes atY: y x: x
	^self ffiCall: #(int mvaddch(int y, int x, ulong charWithAttributes) )