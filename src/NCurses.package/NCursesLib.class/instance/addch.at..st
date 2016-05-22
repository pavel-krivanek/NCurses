printing - characters
addch: charWithAttributes at: aPoint 
	
	^ self addch: charWithAttributes atY: (aPoint y-1) x: (aPoint x-1)