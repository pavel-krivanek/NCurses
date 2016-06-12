examples
input

	| lib win stringPointer s |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
		
	lib print: 'Enter string:'.
	lib addch: Character lf.
	
	stringPointer := FFITypeArray ofType: 'char *' size: 1.
	s := stringPointer new.
	
	lib instr: s.
	
	stringPointer inspect.

	lib print: (stringPointer).

	lib refresh.
	self waitForInput.

	lib endwin.
	
