modes
halfdelay: tenths
	^self ffiCall: #(int halfdelay(int tenths) )