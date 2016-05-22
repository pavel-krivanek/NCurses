as yet unclassified
windowsSimple

	| lib localWin win |

	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	lib clear.
	
"	lib bkgdset: ($. asInteger )."
	lib print: 'screen'.
	lib refresh.
		
	localWin := lib newwin_lines: 5 cols: 15 y: 5 x: 5.
	
"	lib bkgdset: ($# asInteger) on: win."

	lib border: localWin.
	lib print: 'local window' at: 1@1 on: localWin.

	lib refresh: localWin.

	2 seconds wait.

	lib delwin: localWin.
	
	lib endwin.
	
