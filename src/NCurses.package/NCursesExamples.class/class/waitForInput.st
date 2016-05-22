as yet unclassified
waitForInput

	| key |
	
	[key := NCursesLib uniqueInstance getch.
	key = -1] whileTrue: [ 
		"allow smalltalk interrupt"
		10 milliSecond wait. Processor yield. ].