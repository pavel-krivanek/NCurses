examples
background

	| lib localWin win |

	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	
	lib bkgdset: ($. asInteger ).
	lib clear.
	lib refresh.
	
	lib print: 'press any key'.
		
	localWin := lib newwin_lines: 5 cols: 15 y: 5 x: 5.

	lib border: localWin.
	lib print: 'local window' at: 2@2 on: localWin.

	lib refresh: localWin.
	
	self waitForInput.

	lib delwin: localWin.
	lib bkgdset: (Character space asInteger ).
	


	lib endwin.