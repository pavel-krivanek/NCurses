as yet unclassified
mouse

	| lib key win evt |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
	lib keypad: true on: win.
	
	lib print: 'Hello world!'.
	lib refresh.
	
	lib mousemask: 134217727 old: 0.
		
	lib timeout: 0.
	[key := lib getch.
	key = -1] whileTrue: [ 10 milliSecond wait. Processor yield. ]. 
	
	evt := NCursesMouseEvent new.
	evt pin.
	lib getmouse: evt.
	
	key.

	lib endwin.
	^ evt