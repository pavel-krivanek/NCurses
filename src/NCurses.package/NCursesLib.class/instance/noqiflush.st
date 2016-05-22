modes
noqiflush

	"causes all output in the display driver queue to be flushed whenever an interrupt key (interrupt, suspend, or quit) is pressed. The noqiflush() causes no such flushing to occur. The default for the option is inherited from the display driver settings."
	
	^self ffiCall: #(void noqiflush(void) )