as yet unclassified
waitForInput

	| key |
	
	NCursesLib uniqueInstance flushinp.
	
	[key := NCursesLib uniqueInstance getch.
	key = -1] whileTrue: [ 
		"allow smalltalk interrupt"
		10 milliSecond wait. Processor yield. ].

	NCursesLib uniqueInstance flushinp.