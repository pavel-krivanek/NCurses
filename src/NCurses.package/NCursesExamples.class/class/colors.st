examples
colors

	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
		
	{A_ALTCHARSET. A_ATTRIBUTES. A_BLINK. A_BOLD. A_CHARTEXT. A_COLOR. A_DIM. A_INVIS. A_PROTECT. A_REVERSE. A_STANDOUT. A_UNDERLINE} do: [ :attr |
		lib addch: (($B asInteger bitOr: attr)). ].
	
	lib addch: Character lf.

	lib init_pair: 2 foreground: COLOR_BLACK background: COLOR_RED.
	lib attron: (lib color_pair: 2).
	
	lib attron: A_BOLD.
	lib print: 'bold'.
	lib attroff: A_BOLD.
	lib print: ' normal'.

	self pangrams withIndexDo: [ :pangram :i | 
		lib print: (pangram value asUTF8Bytes, #[0]) at: i@(i+2).
	].
	lib refresh.
	self waitForInput.

	lib endwin.
	