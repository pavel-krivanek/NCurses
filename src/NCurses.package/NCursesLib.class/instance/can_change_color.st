terminal capabilities
can_change_color

	"indicates whether the terminal is a colour terminal on which colours can be redefined."
	
	^self ffiCall: #(bool can_change_color())