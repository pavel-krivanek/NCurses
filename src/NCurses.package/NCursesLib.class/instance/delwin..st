windows
delwin: aWindow 

	^ self ffiCall: #(int delwin (window * aWindow))