modes
qiflush

	"enable queue flushing"
	
	^self ffiCall: #(void qiflush(void) )