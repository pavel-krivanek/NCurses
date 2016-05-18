mouse
getmouse: aMouseEvent

	^self ffiCall: #(int getmouse(NCursesMouseEvent * aMouseEvent) )