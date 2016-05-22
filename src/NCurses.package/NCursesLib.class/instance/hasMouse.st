mouse
hasMouse

	"TODO: comment"

	^self ffiCall: #(bool has_mouse(void) )