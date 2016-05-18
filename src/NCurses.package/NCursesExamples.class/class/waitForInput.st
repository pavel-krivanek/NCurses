as yet unclassified
waitForInput

	| lib key win  |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib keypad: true on: win.
	
	lib print: 'Hello world!'.
	lib refresh.
		
	lib timeout: 0.
	[key := lib getch.
	key = -1] whileTrue: [ 10 milliSecond wait. Processor yield. ]. 

	lib endwin.
	^ key