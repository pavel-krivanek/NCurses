modes
noecho

	"disables Echo mode for the current screen"
	
	^self ffiCall: #(int noecho(void) )