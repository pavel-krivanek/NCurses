mouse
getmouse: aMouseEvent

	"TODO: comment"
	
	^self ffiCall: #(int getmouse(NCursesMouseEvent * aMouseEvent) )