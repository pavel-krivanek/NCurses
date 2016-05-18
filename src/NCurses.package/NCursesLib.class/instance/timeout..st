modes
timeout: delay
	^self ffiCall: #(void timeout(int delay) )