char at cursor
inchAt: aPoint 
	^self inchAtY: (aPoint y-1) x: (aPoint x-1)