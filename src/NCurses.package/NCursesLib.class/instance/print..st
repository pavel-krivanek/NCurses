printing
print: aString
	^self ffiCall: #(int printw(char * aString) )