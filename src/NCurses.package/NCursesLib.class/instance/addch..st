printing
addch: charWithAttributes

	^self ffiCall: #(int addch:(ulong charWithAttributes) )