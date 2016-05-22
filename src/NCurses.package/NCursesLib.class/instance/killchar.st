clearing
killchar

	"returns the current line kill character."
	
	^self ffiCall: #(char killchar(void) )