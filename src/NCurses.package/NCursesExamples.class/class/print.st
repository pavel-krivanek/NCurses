as yet unclassified
print

	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
		
	{A_ALTCHARSET. A_ATTRIBUTES. A_BLINK. A_BOLD. A_CHARTEXT. A_COLOR. A_DIM. A_INVIS. A_PROTECT. A_REVERSE. A_STANDOUT. A_UNDERLINE} do: [ :attr |
		lib addch: (($B asInteger bitOr: attr)). ].
	
	lib addch: Character lf.
	lib attron: A_BOLD.
	lib print: 'bold'.
	lib attroff: A_BOLD.
	lib print: ' normal'.

	self pangrams withIndexDo: [ :pangram :i | 
		lib print: (pangram value asUTF8Bytes, #[0]) at: i@(i+2).
	].
	lib refresh.
	4 seconds wait.

	lib endwin.
	
