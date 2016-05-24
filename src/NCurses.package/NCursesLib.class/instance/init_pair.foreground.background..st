colors
init_pair: pair foreground: f background: b

	
		"defines or redefines colour-pair number pair to have foreground colour f and background colour b. Calling init_pair() changes any characters that were displayed in the colour pair's old definition to the new definition and refreshes the screen."
		
		^self ffiCall: #(int init_pair(short pair, short f, short b))

	
