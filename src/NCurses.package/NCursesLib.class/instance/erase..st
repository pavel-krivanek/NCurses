clearing
erase: aWindow

	"clear every position in the specified window."
	
	^self ffiCall: #(int werase(window * aWindow) )