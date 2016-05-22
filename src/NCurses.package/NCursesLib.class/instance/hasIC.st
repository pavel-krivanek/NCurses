terminal capabilities
hasIC

	"indicates whether the terminal has insert- and delete-character capabilities"
	
	^self ffiCall: #(bool has_ic())