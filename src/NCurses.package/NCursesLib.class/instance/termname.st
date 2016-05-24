terminal capabilities
termname

	"obtains the terminal name as recorded by setupterm()."
	
	^self ffiCall: #(char * termname(void))