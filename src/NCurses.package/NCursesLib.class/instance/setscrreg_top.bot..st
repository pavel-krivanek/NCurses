terminal output control
setscrreg_top: top bot: bottom

	"define a software scrolling region in the current window. The top and bot arguments are the line numbers of the first and last line defining the scrolling region. (Line 0 is the top line of the window.) If this option and scrollok() are enabled, an attempt to move off the last line of the margin causes all lines in the scrolling region to scroll one line in the direction of the first line. Only characters in the window are scrolled. If a software scrolling region is set and scrollok() is not enabled, an attempt to move off the last line of the margin does not reposition any lines in the scrolling region."
	
	^self ffiCall: #(int setscrreg(int top, int bot) )