as yet unclassified
delwin: aWindow 

	^ self ffiCall: #(int delwin (window * aWindow))