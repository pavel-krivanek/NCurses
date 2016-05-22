as yet unclassified
print

	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
	
	lib bkgdset: ($. asInteger | A_COLOR | COLOR_RED).
	
	{A_ALTCHARSET. A_ATTRIBUTES. A_BLINK. A_BOLD. A_CHARTEXT. A_COLOR. A_DIM. A_INVIS. A_PROTECT. A_REVERSE. A_STANDOUT. A_UNDERLINE} do: [ :attr |
		lib addch: (($B asInteger bitOr: attr)). ].

	"lib cbreak.
	lib noecho."
	"win := (lib newwin_lines: lines
		cols: cols
		y: y
		x: x)."
	self pangrams withIndexDo: [ :pangram :i | 
		lib print: (pangram value asUTF8Bytes, #[0]) at: i@i.
	].
	lib refresh.
	4 seconds wait.
1 timesRepeat: [	lib refresh.].

	lib endwin.
	
