as yet unclassified
background

	| lib screen win |

	lib := NCursesLib uniqueInstance.
	screen := lib initscr.
	lib clear.
	
"	lib bkgdset: ($. asInteger )."
	lib print: 'custom background 1'.
	lib refresh.
		
	win := lib newwin_lines: 5 cols: 15 y: 5 x: 5.
	
"	lib bkgdset: ($# asInteger) on: win."

	lib border: win.
	lib print: 'custom background 2' on: win.

	lib refresh.

	2 seconds wait.

	lib delwin: win.
	
	self waitForInput.
	
	screen endwin.
	
