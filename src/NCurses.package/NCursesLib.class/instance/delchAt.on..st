claring - characters
delchAt: aPoint on: aWindow

	"delete the character at the current or specified position in the current or specified window. This function does not change the cursor position."
	
	^ self delchY: (aPoint y-1) x: (aPoint x-1) on: aWindow