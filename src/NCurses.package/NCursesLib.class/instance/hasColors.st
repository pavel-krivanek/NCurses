terminal capabilities
hasColors

	"indicate whether terminal supports colours"
	
	^self ffiCall: #(bool has_colors())