keyboard input
instr: str

	"input a multi-byte character string from the current window"
	
	^self ffiCall: #(int instr(char * str) )