modes
intrflush: aBoolean on: aWindow

	"specifies whether pressing an interrupt key (interrupt, suspend or quit) will flush the input buffer associated with the current screen. If the value of aBoolean is TRUE, then flushing of the output buffer associated with the current screen will occur when an interrupt key (interrupt, suspend, or quit) is pressed. If the value of aBoolean is FALSE then no flushing of the buffer will occur when an interrupt key is pressed The default for the option is inherited from the display driver settings. The aWindow argument is ignored."
	
	^self ffiCall: #(int intrflush(window * aWindow, bool aBoolean) )