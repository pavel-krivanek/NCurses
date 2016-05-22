claring - characters
delchAt: aPoint 

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^ self delchY: (Point y-1) x: (Point x-1)