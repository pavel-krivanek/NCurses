terminal capabilities
hasIL

	"indicates whether the terminal has insert- and delete-line capabilities, or can simulate them using scrolling regions."
	
	^self ffiCall: #(bool has_il())