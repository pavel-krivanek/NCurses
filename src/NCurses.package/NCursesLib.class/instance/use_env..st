terminal capabilities
use_env: aBoolean

	" specifies the technique by which the implementation determines the size of the screen. If aBoolean is FALSE, the implementation uses the values of lines and columns specified in the terminfo database. If aBoolean is TRUE, the implementation uses the and environment variables. The initial value is TRUE."
	
	^self ffiCall: #(void use_env(bool aBoolean))