modes
echo

	"enables Echo mode for the current screen."
	
	^self ffiCall: #(int echo(void) )