examples
colors

	| lib win |


	lib := NCursesLib uniqueInstance.
	win := lib initscr.
	
	lib start_color.
	
	0 to: 7 do: [ :i |		
				lib init_pair: i foreground: i background: i+1\\7.
		].	
					
	lib clear.
		
	
		1 to: 8 do: [ :i |		
				lib attron: (lib color_pair: i-1).	
				lib print: ('color pair ', i asString) at: 1@(i).
				lib attroff: (lib color_pair: i).
		].

	lib refresh.
	
	self waitForInput.
	
		lib init_pair: 1 foreground: COLOR_YELLOW background: COLOR_BLACK.
		lib init_pair: 2 foreground: COLOR_RED background: COLOR_BLACK.	
	
	0 to: 7 do: [ :i |		
				lib init_pair: i foreground: i background: 7-i+1\\7.
		].	

		
  lib refresh.
	self waitForInput.
	
	lib endwin.
	
