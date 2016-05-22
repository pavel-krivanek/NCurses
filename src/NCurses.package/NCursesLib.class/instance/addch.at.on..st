printing - characters
addch: charWithAttributes at: aPoint on: aWindow
		
	^ self addch: charWithAttributes atY:  (aPoint y-1) x: (aPoint x-1) on: aWindow