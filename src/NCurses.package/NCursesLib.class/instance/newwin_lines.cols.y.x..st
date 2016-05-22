as yet unclassified
newwin_lines: lines cols: cols y: y x: x
	
	^ self ffiCall: #(window * newwin #(int lines, int cols, int y, int x))