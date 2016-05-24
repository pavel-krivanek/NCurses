examples
mouse

	| lib key win evt |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
	lib keypad: true on: win.
	
	lib print: 'To exit press any key.'.
	lib refresh.
	
	lib mousemask: (ALL_MOUSE_EVENTS | REPORT_MOUSE_POSITION) old: 0.
		
	lib timeout: 0.
	
		NCursesLib uniqueInstance flushinp.
	[
		key := lib getch.
		(key = KEY_MOUSE)
			ifTrue: [ 
				evt := NCursesMouseEvent new.
				evt pin.
				lib getmouse: evt.
				lib moveAt: 1@3. 
				lib deleteln.
				lib print: 'position: ', (evt x asString), '@', (evt y asString).].
			
	((key = -1) or: [(key = KEY_MOUSE)])] whileTrue: [ 10 milliSecond wait. Processor yield. ]. 
		NCursesLib uniqueInstance flushinp.

	lib endwin.
	^ evt