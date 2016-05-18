as yet unclassified
panelsSimple

	| lines cols y x lib panelLib wins panels |

	lines := 10.
	cols := 40.
	y := 2.
	x := 4.
	lib := NCursesLib uniqueInstance.
	panelLib := PanelLib uniqueInstance.
	lib initscr.
	"lib cbreak.
	lib noecho."
	wins := {(lib
		newwin_lines: lines
		cols: cols
		y: y
		x: x).
	(lib
		newwin_lines: lines
		cols: cols
		y: y + 1
		x: x + 5).
	(lib
		newwin_lines: lines
		cols: cols
		y: y + 2
		x: x + 10)}.
	wins do: [ :win | lib box: win v: 0 h: 0 ].
	panels := wins collect: [ :win | panelLib new_panel: win ].
	panelLib update_panels.
	lib doupdate.
	lib flash.
	1 seconds wait.
	lib endwin