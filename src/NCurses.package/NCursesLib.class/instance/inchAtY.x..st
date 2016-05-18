char at cursor
inchAtY: y x: x
	^self ffiCall: #(ulong mvinch(int y, int x) )