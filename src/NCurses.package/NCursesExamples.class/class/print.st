as yet unclassified
print

	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
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
	
