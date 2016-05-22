as yet unclassified
terminalCapabilities

	| lib screen str |

	lib := NCursesLib uniqueInstance.
	screen := lib initscr.
	lib clear.
	
	str := String streamContents: [ :s |
		s << 'hasColors: ' << lib hasColors asString ; lf.
		s << 'hasIC: ' << lib hasIC asString ; lf.
		s << 'hasIL: ' << lib hasIL asString ; lf.
		s << 'baudrate: ' << lib baudrate asString ; lf.
	].
	
	lib print: str.
	lib refresh.
	4 seconds wait.
	
	lib endwin.
	
